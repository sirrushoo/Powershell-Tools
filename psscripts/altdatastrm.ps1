 # Checks for Alternate Data Streams
 # Converts all files in the current directory into data streams and hides them inside the ADS of the file specified.
 # Then all files except the data file, and adds content of the file to the ADS of the datafile.
 # Re-Converts all files hidden inside the ADS back into regular files
 #
 #

 Get-Item -Path 'C:\Users\*' -Stream *

 # Converts all files in the current directory into data streams and hides them inside the ADS of the file specified
function Hide($dataFileName = 'data.txt') {

    # Data file doesn't exist. Doesn't work if data file doesn't exist.
    if(-not (Get-Item $dataFileName -ErrorAction SilentlyContinue)) { 
        'Nothing to see here, move along.' > $dataFileName
    }

    # Get all files except the data file, and add their content to the ADS of the datafile
    Get-Item * | ? Name -ne $dataFileName | % {
        $content = Get-Content $_.Name -Raw -Encoding Byte

        Set-Content $dataFileName -Stream $_.Name -Encoding Byte -Value $content
        Remove-Item $_
    }
}


# Converts all files hidden inside the ADS back into regular files
function Unhide($dataFileName = 'data.txt') {

    # Iterate through non-default data streams
    Get-Item $dataFileName -Stream * | ? Stream -ne ':$DATA' | % {

        # Stream name is the original filename
        $filename = $_.Stream
        $content = Get-Content $dataFileName -Stream $filename -Raw -Encoding Byte

        # Create new item and deposit the data stream inside
        New-Item -Type File -Name $filename | Set-Content -Value $content -Encoding Byte

        # If the file was created and has a length equal to the data stream content, delete the data stream from the data file
        if((Get-Item $filename -ErrorAction SilentlyContinue).Length -eq $content.Length) { 
            Remove-Item $dataFileName -Stream $filename
        }
    }
}