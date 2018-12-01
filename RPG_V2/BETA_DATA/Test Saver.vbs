'Loading And Saving Script Test
Set fso = CreateObject("Scripting.fileSystemObject") 
Set WshShell = WScript.CreateObject("WScript.Shell") 
MainMenu1=999999999
MainMenu2=999999999
Play=999999999
Name=999999999
Age=999999999
Money=999999999
Damage=999999999
Life=999999999
MaxLife=999999999
Sword=999999999
Shield=999999999
Armor=999999999
DamageAvoided=999999999
EnemyHealth=999999999
EnemyDamage=999999999
EnemyArmor=999999999
EnemyDamageAvoided=999999999
SPotion=999999999
MPotion=999999999
BPotion=999999999
Cheats=999999999
Started=999999999

Test1=inputbox("Save/Load")
	Do While Test1="Save"
		fso.CreateTextFile "Test.log", True
		Set Progress = fso.OpenTextFile("ProgressBar.log") '---ForWriting 
		Progress.WriteLine "sNum = " &Money
		Progress.WriteLine "Done = 0 _" 
		Progress.Write "+0" 
		WScript.quit
	Loop
	Do While Test1="Load"
		Set f = fso.GetFile("Test.log") 
		Set ts = f.OpenAsTextStream(1,0) 
		Execute ts.ReadAll 
		WScript.quit
	Loop