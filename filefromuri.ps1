# Powershell to download file from remote server 
# Usage 
# To current working directory 
# Get-FileFromUri http://example.com/url/of/example/file  
# To Specific Folder
# Get-FileFromUri http://example.com/url/of/example/file  C:\example-folder  
function Get-FileFromUri {  
    param(  
        [parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [string]
        [Alias('Uri')]
        $Url,
        [parameter(Mandatory=$false, Position=1)]
        [string]
        [Alias('Folder')]
        $FolderPath
    )
    process {
        try {
            # resolve short URLs
            $req = [System.Net.HttpWebRequest]::Create($Url)
            $req.Method = "HEAD"
            $response = $req.GetResponse()
            $fUri = $response.ResponseUri
            $filename = [System.IO.Path]::GetFileName($fUri.LocalPath);
            $response.Close()
            # download file
            $destination = (Get-Item -Path ".\" -Verbose).FullName
            if ($FolderPath) { $destination = $FolderPath }
            if ($destination.EndsWith('\')) {
                $destination += $filename
            } else {
                $destination += '\' + $filename
            }
            $webclient = New-Object System.Net.webclient
            $webclient.downloadfile($fUri.AbsoluteUri, $destination)
            write-host -ForegroundColor DarkGreen "downloaded '$($fUri.AbsoluteUri)' to '$($destination)'"
        } catch {
            write-host -ForegroundColor DarkRed $_.Exception.Message
        }  
    }  
}  