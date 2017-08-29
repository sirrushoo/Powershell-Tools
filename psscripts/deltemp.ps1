#Script to delete temp files in temp directory and *.bat files on desktop

$tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*", "C:\Users\*\Desktop\*.bat")
Remove-Item $tempfolders -force -recurse