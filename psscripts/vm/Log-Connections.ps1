# Run PowerShell as Administrator for this to work 
# schtasks /create /tn myTask /tr "powershell -NoLogo -WindowStyle hidden -file Log-Connections.ps1 iplog.csv" /sc minute /mo 1 /ru System

#* FileName: Log-Connections.ps1
 #*=============================================================================
 #* Script Name: Log-Connections
 #* Created:     [12/1/2012]
 #* Author:      Kenneth G. Hartman
 #* Email:       KGH@kennethGHartman.com
 #* Web:         http://www.KennethGHartman.com
 #*
 #* CREDITS:	Author of the Get-NetworkStatistics Function is
 #*             Shay Levy   http://PowerShay.com  http://poshcode.org/2701
 #*        http://blogs.microsoft.co.il/blogs/scriptfanatic/archive/2011/02/10/
 #*        How-to-find-running-processes-and-their-port-number.aspx
 #*=============================================================================
 
#*=============================================================================
 #* REVISION HISTORY
 #*=============================================================================
 #* Date: [12/16/2012]
 #* Description: Initial Version
 #*
 #*=============================================================================
 
[CmdletBinding()]
Param(
   [Parameter(Mandatory=$True,Position=0)]
   [string]$FilePath,
   
   [Parameter(Mandatory=$False,Position=1)]
   [string]$ProcName='*',
	
   [switch]$PassThru
) 

#*******************************************
#* Get-NetworkStatistics Function          *
#*******************************************

function Get-NetworkStatistics
{
	[OutputType('System.Management.Automation.PSObject')]
	[CmdletBinding(DefaultParameterSetName='name')]
	
	param(
		[Parameter(Position=0,ValueFromPipeline=$true,ParameterSetName='port')]
		[System.Int32]$Port='*',
		
		[Parameter(Position=0,ValueFromPipeline=$true,ParameterSetName='name')]
		[System.String]$ProcessName='*',
		
		[Parameter(Position=0,ValueFromPipeline=$true,ParameterSetName='address')]
		[System.String]$Address='*',		
		
		[Parameter()]
		[ValidateSet('*','tcp','udp')]
		[System.String]$Protocol='*',

		[Parameter()]
		[ValidateSet('*','Closed','CloseWait','Closing','DeleteTcb','Established','FinWait1',`
		'FinWait2','LastAck','Listen','SynReceived','SynSent','TimeWait','Unknown')]
		[System.String]$State='*'
		
	)
    
	begin
	{
		$properties = 'Protocol','LocalAddress','LocalPort'
    		$properties += 'RemoteAddress','RemotePort','State','ProcessName','PID'
	}
	
	process
	{
	    netstat -ano | Select-String -Pattern '\s+(TCP|UDP)' | ForEach-Object {

	        $item = $_.line.split(' ',[System.StringSplitOptions]::RemoveEmptyEntries)

	        if($item[1] -notmatch '^\[::')
	        {           
	            if (($la = $item[1] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6')
	            {
	               $localAddress = $la.IPAddressToString
	               $localPort = $item[1].split('\]:')[-1]
	            }
	            else
	            {
	                $localAddress = $item[1].split(':')[0]
	                $localPort = $item[1].split(':')[-1]
	            } 

	            if (($ra = $item[2] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6')
	            {
	               $remoteAddress = $ra.IPAddressToString
	               $remotePort = $item[2].split('\]:')[-1]
	            }
	            else
	            {
	               $remoteAddress = $item[2].split(':')[0]
	               $remotePort = $item[2].split(':')[-1]
	            } 
				
				$procId = $item[-1]
				$ProcName = (Get-Process -Id $item[-1] -ErrorAction SilentlyContinue).Name
				$proto = $item[0]
				$status = if($item[0] -eq 'tcp') {$item[3]} else {$null}				
				
				$pso = New-Object -TypeName PSObject -Property @{
					PID = $procId
					ProcessName = $ProcName
					Protocol = $proto
					LocalAddress = $localAddress
					LocalPort = $localPort
					RemoteAddress =$remoteAddress
					RemotePort = $remotePort
					State = $status
				} | Select-Object -Property $properties								


				if($PSCmdlet.ParameterSetName -eq 'port')
				{
					if($pso.RemotePort -like $Port -or $pso.LocalPort -like $Port)
					{
					    if($pso.Protocol -like $Protocol -and $pso.State -like $State)
						{
							$pso
						}
					}
				}

				if($PSCmdlet.ParameterSetName -eq 'address')
				{
					if($pso.RemoteAddress -like $Address -or $pso.LocalAddress -like $Address)
					{
					    if($pso.Protocol -like $Protocol -and $pso.State -like $State)
						{
							$pso
						}
					}
				}
				
				if($PSCmdlet.ParameterSetName -eq 'name')
				{		
					if($pso.ProcessName -like $ProcessName)
					{
						if($pso.Protocol -like $Protocol -and $pso.State -like $State)
						{
					   		$pso
						}
					}
				}
	        }
	    }
	}
<#
.SYNOPSIS
	Displays the current TCP/IP connections.

.DESCRIPTION
	Displays active TCP connections and includes the process ID (PID) and Name for each connection.
	If the port is not yet established, the port number is shown as an asterisk (*).	
	
.PARAMETER ProcessName
	Gets connections by the name of the process. The default value is '*'.
	
.PARAMETER Port
	The port number of the local computer or remote computer. The default value is '*'.

.PARAMETER Address
	Gets connections by the IP address of the connection, local or remote. Wildcard is supported. The default value is '*'.

.PARAMETER Protocol
	The name of the protocol (TCP or UDP). The default value is '*' (all)
	
.PARAMETER State
	Indicates the state of a TCP connection. The possible states are as follows:
		
	Closed	 	- The TCP connection is closed. 
	CloseWait 	- The local endpoint of the TCP connection is waiting for a connection termination request from the local user. 
	Closing 	- The local endpoint of the TCP connection is waiting for an acknowledgement of the connection termination request sent previously. 
	DeleteTcb 	- The transmission control buffer (TCB) for the TCP connection is being deleted. 
	Established 	- The TCP handshake is complete. The connection has been established and data can be sent. 
	FinWait1 	- The local endpoint of the TCP connection is waiting for a connection termination request from the remote endpoint or for an acknowledgement of the connection termination request sent previously. 
	FinWait2 	- The local endpoint of the TCP connection is waiting for a connection termination request from the remote endpoint. 
	LastAck 	- The local endpoint of the TCP connection is waiting for the final acknowledgement of the connection termination request sent previously. 
	Listen	 	- The local endpoint of the TCP connection is listening for a connection request from any remote endpoint. 
	SynReceived 	- The local endpoint of the TCP connection has sent and received a connection request and is waiting for an acknowledgment. 
	SynSent 	- The local endpoint of the TCP connection has sent the remote endpoint a segment header with the synchronize (SYN) control bit set and is waiting for a matching connection request. 
	TimeWait	- The local endpoint of the TCP connection is waiting for enough time to pass to ensure that the remote endpoint received the acknowledgement of its connection termination request. 
	Unknown		- The TCP connection state is unknown.
	
	Values are based on the TcpState Enumeration:
	http://msdn.microsoft.com/en-us/library/system.net.networkinformation.tcpstate%28VS.85%29.aspx

.EXAMPLE
	Get-NetworkStatistics

.EXAMPLE
	Get-NetworkStatistics iexplore

.EXAMPLE
	Get-NetworkStatistics -ProcessName md* -Protocol tcp 

.EXAMPLE
	Get-NetworkStatistics -Address 192* -State LISTENING 

.EXAMPLE
	Get-NetworkStatistics -State LISTENING -Protocol tcp

.OUTPUTS
	System.Management.Automation.PSObject

.NOTES
	Author: Shay Levy
	Blog  : http://PowerShay.com
#>	
}


#*******************************************
#*                MAIN PROGRAM             *
#*******************************************

#Add Header to the CSV File
[string]$Previous = "TimeStamp,Protocol,LocalAddress,LocalPort,RemoteAddress,"
$Previous += "RemotePort,State,ProcessName,PID"
Add-Content $FilePath $Previous

#Initiate an infinite loop that calls the Get-NetworkStatistics Function repeatedly
#and formats the output as appropriate
while ($true) {
    $Observation = Get-NetworkStatistics $ProcName
    [string]$Current = $Observation | Out-String
    if ($Previous -ne $Current) {
        [string]$TimeStamp = Get-Date -Format o
        $Previous = $Current
        ForEach ($Socket in $Observation) {
            $Record = $TimeStamp + "," + $Socket.Protocol + "," + $Socket.LocalAddress + "," `
			+ $Socket.LocalPort + "," + $Socket.RemoteAddress + "," + $Socket.RemotePort + "," `
			+ $Socket.State + "," + $Socket.ProcessName  + "," + $Socket.PID
			Add-Content $FilePath $Record
            if ($PassThru) {
				$pso2 = New-Object -TypeName PSObject -Property @{
					PID = $Socket.PID
					ProcessName = $Socket.ProcessName
					Protocol = $Socket.Protocol
					LocalAddress = $Socket.LocalAddress
					LocalPort = $Socket.LocalPort
					RemoteAddress = $Socket.RemoteAddress
					RemotePort = $Socket.RemotePort
					State = $Socket.State
					TimeStamp = $TimeStamp
				} | Select-Object -Property $properties	
			
				Write-Output $pso2
				}
            }
        }
    }
	
<#
.SYNOPSIS
	Creates a log of current TCP/IP connections and optionally passes them through to the pipeline.

.DESCRIPTION
	Logs active TCP connections and includes the process ID (PID) and Name for each connection.
	If the port is not yet established, the port number is shown as an asterisk (*).	
	
.PARAMETER FilePath
	The path and file name of the log file. Mandatory.

.PARAMETER ProcName
	Log only connections with the name of the process provided. The default value is '*'.
	
.SWITCH PassThru
	Return a process object to the screen or the pipeline. 

.EXAMPLE
	Log-Connections mylog.csv

.EXAMPLE
	Log-Connections mylog.csv svchost

.EXAMPLE
	Log-Connections mylog.csv svchost -PassThru

.EXAMPLE
	Log-Connections -Filepath mylog.csv -ProcName svchost 

.EXAMPLE
	Log-Connections mylog.csv svchost -PassThru | Format-Table
	
.EXAMPLE
	Log-Connections mylog.csv svchost -PassThru | Out-GridView

.OUTPUTS
	System.Management.Automation.PSObject

.NOTES
	Author : Kenneth G. Hartman
	Blog   : http://www.KennethGHartman.com
	Credits: Author of the Get-NetworkStatistics Function is
             Shay Levy   http://PowerShay.com  http://poshcode.org/2701
#>	