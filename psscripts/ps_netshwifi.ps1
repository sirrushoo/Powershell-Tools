<#
.SYNOPSIS
All WiFi SSID's and passwords stored locally on Windows OS.
Author: Sirrush
Required Dependencies: LocalHost Admin
Optional Dependencies: None
 
.DESCRIPTION
Retrieves password of Wifi's which you have successfully connected to previously
.PARAMETER 
Check that execution policy is set correctly
.EXAMPLE
C:\ps_netshwifi.ps1
#>
$output = netsh.exe wlan show profiles
$profileRows = $output | Select-String -Pattern 'All User Profile'
$profileNames = New-Object System.Collections.ArrayList

#for each profile name get the SSID and password
for($i = 0; $i -lt $profileRows.Count; $i++){
    $profileName = ($profileRows[$i] -split ":")[-1].Trim()
    
    $profileOutput = netsh.exe wlan show profiles name="$profileName" key=clear
    
    $SSIDSearchResult = $profileOutput| Select-String -Pattern 'SSID Name'
    $profileSSID = ($SSIDSearchResult -split ":")[-1].Trim() -replace '"'

    $passwordSearchResult = $profileOutput| Select-String -Pattern 'Key Content'
    if($passwordSearchResult){
        $profilePw = ($passwordSearchResult -split ":")[-1].Trim()
    } else {
        $profilePw = ''
    }
    
    $networkObject = New-Object -TypeName psobject -Property @{
        ProfileName = $profileName
        SSID = $profileSSID
        Password = $profilePw
    }
    $profileNames.Add($networkObject)
}

$profileNames | Sort-Object ProfileName | Select-Object ProfileName, SSID, Password

