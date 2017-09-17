# Changing TimeStamps on files 
#
# You must edit the file to suit your file
#
#Get-ChildItem  C:\Directiory\File.txt | % {$_.CreationTime = '01/11/2005 06:00:36'}
#Set the time in the "$date" variable to when you changed the log or files
#

Function Set-FileTimeStamps

{

 Param (

    [Parameter(mandatory=$true)]

    [string[]]$path,

    [datetime]$date = (Get-Date))

    Get-ChildItem -Path $path |

    ForEach-Object {

     $_.CreationTime = $date

     $_.LastAccessTime = $date

     $_.LastWriteTime = $date }

} #end function Set-FileTimeStamps