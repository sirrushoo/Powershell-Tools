    # Script to display HTML info
    # 
    $URI  = Read-Host -Prompt 'Input the URI'
    $Date = Get-Date
    $HTML = Invoke-WebRequest -Uri "$URI"
    Write-Host "You input was '$URI' and on '$Date' " 

    $HTML.AllElements | Select href | Format-List 
    #($HTML.Scripts.getElementsByTagName("script") | Where{ $_.className -eq ‘entry-title’ }).innerText
    
    #$HTML.AllElements -match  "\d{1,3}\.\d{1,3}\.\d{1,4}\" (True) 