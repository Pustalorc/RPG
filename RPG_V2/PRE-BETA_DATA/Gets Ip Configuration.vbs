dim strComputer 'for computer name or IP
dim colAdapters 'collection of adapters


Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("output.txt", True)


strComputer = ""

'open a dialog box asking for the computer name/IP
do
strComputer = inputbox( "Please enter a computername/IP, or . for local computer", "Input" )
Loop until strComputer <> "" 'run until a name/IP is entered


Set objWMIService = GetObject ("winmgmts:" & "!\\" & strComputer & "\root\cimv2") 'open the WMI service on the remote PC
Set colAdapters = objWMIService.ExecQuery ("Select * from Win32_NetworkAdapterConfiguration Where IPEnabled = True") 

'go through the list of adapters and gather data
For Each objAdapter in colAdapters 


objFile.Writeline "Host name: " & objAdapter.DNSHostName 
objFile.Writeline "DNS domain: " & objAdapter.DNSDomain 
objFile.Writeline "DNS suffix search list: " & objAdapter.DNSDomainSuffixSearchOrder 
objFile.Writeline "Description: " & objAdapter.Description 
objFile.Writeline "Physical address: " & objAdapter.MACAddress 
objFile.Writeline "DHCP enabled: " & objAdapter.DHCPEnabled 
If Not IsNull(objAdapter.IPAddress) Then 
For i = LBound(objAdapter.IPAddress) To UBound(objAdapter.IPAddress) 
objFile.Writeline "IP address: " & objAdapter.IPAddress(i) 
Next 
End If 
If Not IsNull(objAdapter.IPSubnet) Then 
For i = LBound(objAdapter.IPSubnet) To UBound(objAdapter.IPSubnet) 
objFile.Writeline "Subnet: " & objAdapter.IPSubnet(i) 
Next 
End If 
If Not IsNull(objAdapter.DefaultIPGateway) Then 
For i = LBound(objAdapter.DefaultIPGateway) To UBound(objAdapter.DefaultIPGateway) 
objFile.Writeline "Default gateway: " & objAdapter.DefaultIPGateway(i) 
Next 
End If 
objFile.Writeline "DHCP server: " & objAdapter.DHCPServer 
If Not IsNull(objAdapter.DNSServerSearchOrder) Then 
For i = LBound(objAdapter.DNSServerSearchOrder) To UBound(objAdapter.DNSServerSearchOrder) 
objFile.Writeline "DNS server: " & objAdapter.DNSServerSearchOrder(i) 
Next 
End If 
objFile.Writeline "Primary WINS server: " & objAdapter.WINSPrimaryServer 
objFile.Writeline "Secondary WINS server: " & objAdapter.WINSSecondaryServer 
objFile.Writeline "Lease obtained: " & objAdapter.DHCPLeaseObtained 
objFile.Writeline "Lease expires: " & objAdapter.DHCPLeaseExpires 
Next 