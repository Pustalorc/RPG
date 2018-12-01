Set WshShell = WScript.CreateObject("WScript.Shell") 
Set fso = CreateObject("Scripting.FileSystemObject") 
'---------number of items------------ 
sNum = 100 '------you will need to count how many items to process before. see (1) 
'--------write to progressbar report--------- 
fso.CreateTextFile "ProgressBar.log", True
Set Progress = fso.OpenTextFile("ProgressBar.log", 2) '---ForWriting 
Progress.WriteLine "sNum = " & sNum 
Progress.WriteLine "Done = 0 _" 
Progress.Write "+0" 
WshShell.Run "ProgressBarFast.vbs" 
WScript.Sleep 50 
'---------------------------------------------------- 
For i=0 To sNum '-------process the items here. see (2) 
WScript.Sleep 500'-------replace "WScript.Sleep 50 " by some operation here. see (3) 
Progress.Write "+1" 
'-------------stop script at user's request------------ 
'------by pressing the "cancel" button on the progressbar (the other script), the user 
'------will stop this script here. 
'------and the script of the progressbar will delete the "ok.nul" file 
'-------if "ok.nul" has been deleted te script will not continue----- 
If Fso.FileExists("ok.nul") = False Then 
Progress.Close 
'-----------re-write your termination/end-of-script codes here (or call a sub) 
MsgBox "Operation aborted by user",,Title 
wscript.quit 
End If 
'--------------------------------- 
Next 
'-----------write your termination/end-of-script codes here (or call a sub) 

'-------------------------------------------------- 
Progress.Close 
MsgBox "ok",,"Test" 
fso.GetFile("ok.nul").Delete
'------------end of script sample--------- 