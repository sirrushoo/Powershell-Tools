[CmdletBinding()]

param (
    [Parameter(Mandatory=$True)]

    [string[]]$computername
)
Get-WmiObject -ComputerName $computername -class win32_logicaldisk -Filter "DeviceID='C:'"