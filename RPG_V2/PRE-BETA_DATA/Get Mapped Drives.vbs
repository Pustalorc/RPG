Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("mappedoutput.txt", True)
' List Mapped Network Drives


On Error Resume Next

strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
    & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colItems = objWMIService.ExecQuery("Select * from Win32_MappedLogicalDisk")

For Each objItem in colItems
    objFile.Writeline "Compressed: " & objItem.Compressed
    objFile.Writeline "Description: " & objItem.Description
    objFile.Writeline "Device ID: " & objItem.DeviceID
    objFile.Writeline "File System: " & objItem.FileSystem
    objFile.Writeline "Free Space: " & objItem.FreeSpace
    objFile.Writeline "Maximum Component Length: " & objItem.MaximumComponentLength
    objFile.Writeline "Name: " & objItem.Name
    objFile.Writeline "Provider Name: " & objItem.ProviderName
    objFile.Writeline "Session ID: " & objItem.SessionID
    objFile.Writeline "Size: " & objItem.Size
    objFile.Writeline "Supports Disk Quotas: " & objItem.SupportsDiskQuotas
    objFile.Writeline "Supports File-Based Compression: " & _
        objItem.SupportsFileBasedCompression
    objFile.Writeline "Volume Name: " & objItem.VolumeName
    objFile.Writeline "Volume Serial Number: " & objItem.VolumeSerialNumber
    objFile.Writeline
Next