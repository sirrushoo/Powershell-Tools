function getTasks($path) {
    $out = @()

    # Get root tasks
    $schedule.GetFolder($path).GetTasks(0) | % {
        $xml = [xml]$_.xml
        $out += New-Object psobject -Property @{
            "Name" = $_.Name
            "Path" = $_.Path
            "LastRunTime" = $_.LastRunTime
            "NextRunTime" = $_.NextRunTime
            "Actions" = ($xml.Task.Actions.Exec | % { "$($_.Command) $($_.Arguments)" }) -join "`n"
        }
    }

    # Get tasks from subfolders
    $schedule.GetFolder($path).GetFolders(0) | % {
        $out += getTasks($_.Path)
    }

    #Output
    $out
}

$tasks = @()

$schedule = New-Object -ComObject "Schedule.Service"
$schedule.Connect() 

# Start inventory
$tasks += getTasks("\")

# Close com
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($schedule) | Out-Null
Remove-Variable schedule

# Output all tasks
$tasks