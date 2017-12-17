# You must edit this script to fit your network config and point the server 
# to a machine which you control 
# cmd example
#  
# route ADD destination_network MASK subnet_mask  gateway_ip metric_cost
#
# PowerShell
# New-NetRoute [-DestinationPrefix] <String> -InterfaceAlias <String> [-AddressFamily <AddressFamily> ] [-AsJob] [-CimSession <CimSession[]> ] [-NextHop <String> ] [-PolicyStore <String> ] [-PreferredLifetime <TimeSpan> ] [-Protocol <Protocol> ] [-Publish <Publish> ] [-RouteMetric <UInt16> ] [-ThrottleLimit <Int32> ] [-ValidLifetime <TimeSpan> ] [-Confirm] [-WhatIf] [ <CommonParameters>]
#
# Getting the -InterfaceIndex # Powershell
#
# Get-NetAdapter -InterfaceIndex * | Select-Object
#
# cmd example
# route /print

 New-NetRoute –DestinationPrefix "10.10.10.0/24" –InterfaceIndex 12 –NextHop 192.168.0.1
