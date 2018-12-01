'--------set-------- 
Set fso = CreateObject("Scripting.fileSystemObject") 
Set WshShell = WScript.CreateObject("WScript.Shell") 
Title = "Progress" 
'--------create nul file--------- 
'-----this file if exists, will tell the main script to continue. 
'------This file contains no data. Only the existance of this file is important 
fso.CreateTextFile "ok.nul", True 
'--------read from file----------- 
Set f = fso.GetFile("ProgressBar.log") 
Set ts = f.OpenAsTextStream(1,0) 
Execute ts.ReadAll 
ts.Close 
d = FormatNumber( Done / (sNum/100) +1 ,0,0,0,0) 
Msg1 = String(d, "]") & String(100 - d, ".") 
Msg2 = Done & "/" & sNum 
Msg3 = "To stop the process clic ""Cancel""" 
Do Until Done >= sNum 
'---------this popup will refresh every 0,5 seconds 
BtnCode = WshShell.Popup(Msg1 & VbCrlf & Msg2 & VbCrlf & Msg3, 1, Title, 1) '------to change the refresh speed: change the number after "Msg3," 
Select Case BtnCode 
case 1 MsgBox "The progress bar will be back in one minute.",,Title '------ok 
WScript.Sleep 60000 
case 2 MsgBox "The operation will be stopped once the current item is finished.",,Title 
fso.GetFile("ok.nul").Delete '-----deleting the nul file to tell the main script to stop 
wscript.quit 
End Select 
Set ts = f.OpenAsTextStream(1,0) 
Execute ts.ReadAll 
ts.Close 
d = FormatNumber( Done / (sNum/100) +1 ,0,0,0,0) 
If d <= 100 Then 
Msg1 = String(d, "]") & String(100 - d, ".") 
End If 
Msg2 = Done & "/" & sNum 
'-----------check if progressing-------- 
Done1 = Done2 
Done2 = Done 
If Done2 > Done1 Then 
Idletime = 0 
Else 
Idletime = Idletime +1 
If Idletime = 45 Then 
WshShell.Popup "Program not responding!",, Title, 0 + 16 
End If 
End If 
Loop 