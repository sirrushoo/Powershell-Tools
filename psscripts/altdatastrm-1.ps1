# Alt Data Stream powershell script

#read data
$file = "$env:temp\file.txt"
Set-Content -Path $file -Value 'Test'
Get-Content -Path $file

#create hidden stream 

Add-Content -Path $file -Value 'Secret Information' -Stream 'secretStream'
Get-Content -Path $file

Get-Content -Path $file -Stream 'secretStream'