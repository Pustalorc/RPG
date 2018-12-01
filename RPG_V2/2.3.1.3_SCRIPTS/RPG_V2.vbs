'-----------------------
'Name: RPG V2
'Author: persiafighter
'Date: 06/02/2015 (DD/MM/YYYY)						DD = Day		MM = Month		YYYY = Year
'Time: 19:23 PM  (HH/MM/PM;AM)						HH = Hours		MM = Minutes	PM;AM = PM Or AM
'Game Version: 2.3.1.3
'Game Version Meaning:
'-----------------------
'Alpha(1)/Beta(2)/Gamma(3)/Snapshot(0)      Update #         Latest Bug Fix Update          Latest Bug Fix Update 2
'0			              					.    0		     .    0					 		.    0
'-----------------------
'Values:
MainMenu1=0
MainMenu2=0
Play=0
Name=0
Age=0
Money=0
Damage=0
Life=0
MaxLife=0
Sword=0
Shield=0
Armor=0
DamageAvoided=0
EnemyHealth=0
EnemyDamage=0
EnemyArmor=0
EnemyDamageAvoided=0
SPotion=0
MPotion=0
BPotion=0
Cheats=0
Started=0
sFilePath="SaveFile.txt"
FileCreated=0
ExitDungeon=0
Experience=0
ExperienceNeeded=140
WitchsKilled=0
Wand=0
CrabsKilled=0
CrabHand=0
WhalesKilled=0
DarkFin=0
SlimesKilled=0
SlimeBall=0
KnightsKilled=0
DeadKnightsArmour=0
LavaBlocksKilled=0
LavaBall=0
MinionsKilled=0
Keys=0
'-----------------------
'Dungeon List:
'Volcano
'Forest
'Castle
'Desert
'Sea
'Beach
'Hut
'Level Up Area
'End Game
'-----------------------
'Script Starts Here:

'Loading Screen

Set objExplorer = CreateObject _
		("InternetExplorer.Application")
	objExplorer.Navigate "about:blank"   
	objExplorer.ToolBar = 0
	objExplorer.StatusBar = 0
	objExplorer.Width = 400
	objExplorer.Height = 200 
	objExplorer.Visible = 1             

	objExplorer.Document.Title = "RPG V2"
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete"
		Wscript.sleep 5000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _ 
		& " Functions.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE" _
		& " Dungeons"
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE" _
		& " Dungeons."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE" _
		& " Dungeons.."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE" _
		& " Dungeons..."
		Wscript.sleep 1000
	objExplorer.Document.Body.InnerHTML = "Loading Game Resources and Data... " _
		& "This might take some time to complete..." _
		& " > _" _
		& " Variables... DONE" _
		& " Functions... DONE" _
		& " Main Menu... DONE" _
		& " Shop... DONE" _
		& " Dungeons... DONE"
		Wscript.sleep 1000

	Wscript.Sleep 1000

	objExplorer.Document.Body.InnerHTML = "Game Loaded! Exiting now to main menu..."

	Wscript.Sleep 5000



	objExplorer.Quit
	Play=0


MainMenu1=1

'Functions

Function Heal2
	SelectPotion=inputbox("Which Potion Do You Want To Use? (SPotion, MPotion, BPotion)")
	if SelectPotion="SPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif SPotion<=0 then
			msgbox("Not Enough SPotions!")
		elseif Life<MaxLife then
			SPotion=SPotion-1
			Life=Life+25
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " &Life)
		End If
	elseif SelectPotion="MPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif MPotion<=0 then
			msgbox("Not Enough MPotions!")
		elseif Life<MaxLife then
			MPotion=MPotion-1
			Life=Life+50
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " &Life)
		End If
	elseif SelectPotion="BPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif MPotion<=0 then
			msgbox("Not Enough BPotions!")
		elseif Life<MaxLife then
			BPotion=BPotion-1
			Life=Life+100
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " &Life)
		End If
	End If
End Function

Function Fight
	Working = 1
	msgbox("You Found A " &CurrentEnemy + "! Watch Out!")
	Do While Working = 1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
		if Attack="Heal" then
			Heal2
		elseif Attack="Fight" then
			EnemyHealth=EnemyHealth-Damage
			msgbox("You Dealed " &Damage)
				if EnemyHealth<=0 then
					msgbox("You Defeated The " &CurrentEnemy + "!")
					msgbox("You Have: " & Life & " Health.")
					KilledEnemy=1
					Combat=0
					Exit Function
				End If
			msgbox("The " &CurrentEnemy + " Attacks Back!")
			Life=Life-EnemyDamage
			msgbox("The " &CurrentEnemy + " Dealed: " &EnemyDamage)
				if Life<=0 then
					msgbox("You Have Died.")
					Shoping=1
					FinnishedDungeon=1
					Life=MaxLife
					Lost=1
					Money=Money-10
						If Money<=-1 then
							msgbox("Game Over! You Lost!")
							wscript.quit
						End If
					Do While Lost=1
						msgbox("Taking You Back To The Shop.")
						ExitDungeon=1
						CurrentDungeonPosition=0
						Lost=0
						Working = 0
						Exit Do
					Loop
				elseif Life>=1 then
					msgbox("Your Health: " & Life & " ; " & CurrentEnemy & "'s Health: " & EnemyHealth & ".")
				End If
		End If
	Loop
End Function

Function WriteTextFile(objFile,sVarName,sVarValue)
	Dim objFSO 'As FileSystemObject
    Dim objTextFile 'As Object
   	
    Set objFSO=CreateObject("Scripting.FileSystemObject")

    Set objTextFile = objFSO.CreateTextFile(sFilePath, True)
    
    ' Write a line.
	objTextFile.Write (sVarName)
	
    objTextFile.Close

End Function

Function RandomChestReward
	max=100
	min=1
	Chance0 = Round(max*Rnd)
	if Chance0>max then
		Chance0=max
	elseif Chance0<min then
		Chance0=min
	end if
	If Chance0=1 then
		msgbox("You Found A Chest!")
		max=50
		min=1
		Chance1 = Round(max*Rnd)
		if Chance1>max then
			Chance1=max
		elseif Chance0<min then
			Chance1=min
		end if
		If Chance1=1 then
			msgbox("You Found The Ultimate Sword!")
			msgbox("You Also Found $100 Mill!")
			Sword = 999999
			Damage = 99999999
			Money=Money+100000000
		elseif Chance1>=2 And Chance1<=50 then
			msgbox("The Chest Is Empty, But Next To It There Are $100 K!")
			Money=Money+100000
		End If
	elseif Chance0>=2 And Chance0<=100 then
		msgbox("You Went On, Nothing Happened...")
	end if
End Function

'Main Script

Do While MainMenu1=1
	MainMenuStart=inputbox("Welcome To RPG V2! Do You Want To Load A Saved Game? (Load) Or Start A New One? (New Game) Or Exit? (Exit)")
	if MainMenuStart="New Game" then
		MainMenu1=0
		MainMenu2=1
		Started=1
		Exit Do
	elseif MainMenuStart="Exit" then
		Wscript.quit
	elseif MainMenuStart="Load" then
		'Do we have a file created?
		'Yes - Read it
		'No - Create it
		Set objFSO=CreateObject("Scripting.FileSystemObject")
		If (objFSO.FileExists(sFilePath) = False) Then		
			msgbox("No Save File Found!")
		else
			FileCreated=1
			'Const ForAppending = 8
			'Set objFile = objFSO.OpenTextFile(sFilePath, ForAppending, True)
			Set objFile = objFSO.OpenTextFile(sFilePath)
			i=0
			Do Until objFile.AtEndOfStream
				i=i+1
				 strLine= objFile.ReadLine
				 if (i = 1) then
					Name = strLine
				 elseif (i = 2) then
					Age = strLine
				 elseif (i = 3) then
					Money = strLine
				 elseif (i = 4) then
					Life = strLine
				 elseif (i = 5) then
					Damage = strLine
				 elseif (i = 6) then
					Sword = strLine
				 elseif (i = 7) then
					SPotion = strLine
				 elseif (i = 8) then
					MPotion = strLine
				 elseif (i = 9) then
					BPotion = strLine
				 elseif (i = 10) then
					Level = strLine
				 elseif (i = 11) then
					MaxLife = strLine
				 elseif (i = 12) then
					Experience = strLine
				 elseif (i = 13) then
					ExperienceNeeded = strLine
				 elseif (i = 14) then
					WitchsKilled = strLine
				 elseif (i = 15) then
					Wand = strLine
				 elseif (i = 16) then
					CrabsKilled = strLine
				 elseif (i = 17) then
					CrabHand = strLine
				 elseif (i = 18) then
					WhalesKilled = strLine
				 elseif (i = 19) then
					DarkFin = strLine
				 elseif (i = 20) then
					SlimesKilled = strLine
				 elseif (i = 21) then
					SlimeBall = strLine
				 elseif (i = 22) then
					KnightsKilled = strLine
				 elseif (i = 23) then
					DeadKnightsArmour = strLine
				 elseif (i = 24) then
					LavaBlocksKilled = strLine
				 elseif (i = 25) then
					LavaBall = strLine
				 elseif (i = 26) then
					MinionsKilled = strLine
				 elseif (i = 27) then
					Keys = strLine
				 elseif (i = 28) then
					DamageAvoided = strLine
				 elseif (i = 29) then
					Shield = strLine
				 end if
				 'Wscript.Echo strLine
			Loop
			objFile.Close
			msgbox("Save File Data: Name: " & Name & " ; Age: " & Age & " ; Money: " & Money & " ; Life: " & Life & " ; Damage: " & Damage & " ; Sword: " & Sword & " ; Small Potions: " & SPotion & " ; Medium Potions: " & MPotion & " ; Big Potions: " & BPotion & " ; Level: " & Level & " ; Maximum Life: " & MaxLife & " ; Experience: " & Experience & " ; Experience Needed: " & ExperienceNeeded & " ; Witches Killed: " & WitchsKilled & " ; Wands: " & Wand & " ; Crabs Killed: " & CrabsKilled & " ; Crab Hands: " & CrabHand & " ; Whales Killed:" & WhalesKilled & " ; Dark Fins: " & DarkFin & " ; Slimes Killed: " & SlimesKilled & " ; Slime Balls: " & SlimeBall & " ; Knights Killed: " & KnightsKilled & " ; Dead Knights Armours: " & DeadKnightsArmour & " ; Lava Blocks Killed: " & LavaBlocksKilled & " ; Lava Balls: " & LavaBall & " ; Minions Killed: " & MinionsKilled & " ; Keys: " & Keys & " ; Damage Avoided: " & DamageAvoided & " ; Shield: " & Shield & ".")
			MainMenu2=0
			Started=1
			Exit Do
		End If
	else
		msgbox("Error")
	End If
loop

Do While MainMenu2=1
	if (FileCreated=0) then
		pass1=inputbox("Name?", ,"Fucken Meme")
		if pass1>="0" and pass1 <="-1" then
			msgbox("Error")
		else
			Name = pass1
		End If
		pass2=inputbox("Age? (1-100)", ,"50")
		if pass2<="0" then
			msgbox("Error")
		else
			Age = pass2
		End If
		pass3=inputbox("Starting Money? (MAX 100)", ,"100")
		if pass2="14" then
			Money=pass3
		elseif pass3<="-1" then
			msgbox("Error")
		elseif pass3>="101" then
			msgbox("Error")
		else
			Money = pass3
		End If
		If pass1="Teemo" then
			msgbox("Cheat Mode Activated!")
			Cheats=1
			Cheat1=inputbox("Choose Your Money Amount:", ,"999999999999999999999999999999999999999999999")
			If Cheat1<="-1" then
				msgbox("Error")
			else
				Money = Cheat1
			End If
			Cheat2=inputbox("Choose Your Damage Amount (5000 MAX):", ,"5000")
			If Cheat2<="-1" then
				msgbox("Error")
			elseif Cheat2>="5001" then
				msgbox("Error")
			else
				Damage = Cheat2
			End If
			Cheat3=inputbox("Choose Your Health Amount (3000 MAX):", ,"3000")
			If Cheat3<="-1" Then
				msgbox("Error")
			elseif Cheat3>="3001" then
				msgbox("Error")
			else
				Life = Cheat3
				MaxLife = Cheat3
			End If
			Cheat4=inputbox("Choose SPotion Amount (10 MAX):", ,"10")
			If Cheat4<="-1" then
				msgbox("Error")
			elseif Cheat4>="11" then
				msgbox("Error")
			else
				SPotion = Cheat4
			End If
			Cheat5=inputbox("Choose MPotion Amount (7 MAX):", ,"7")
			If Cheat5<="-1" then
				msgbox("Error")
			elseif Cheat5>="8" then
				msgbox("Error")
			else
				MPotion = Cheat5
			End If
			Cheat6=inputbox("Choose BPotion Amount (5 MAX):", ,"5")
			If Cheat6<="-1" then
				msgbox("Error")
			elseif Cheat6>="6" then
				msgbox("Error")
			else
				BPotion = Cheat6
			End If
			Cheat7=inputbox("Choose Keys Amount (200 MAX):", ,"200")
			If Cheat7<="-1" then
				msgbox("Error")
			elseif Cheat7>=201 then
				msgbox("Error")
			else
				Keys=Cheat7
			End If
			MultiCheat=inputbox("Choose Bulk Editing Of Dungeon Kills & Specials (200 MAX):", ,"200")
			If MultiCheat<="-1" then
				msgbox("Error")
			elseif MultiCheat>=201 then
				msgbox("Error")
			else
				WitchsKilled=MultiCheat
				Wand=MultiCheat
				CrabsKilled=MultiCheat
				CrabHand=MultiCheat
				WhalesKilled=MultiCheat
				DarkFin=MultiCheat
				SlimesKilled=MultiCheat
				SlimeBall=MultiCheat
				KnightsKilled=MultiCheat
				DeadKnightsArmour=MultiCheat
				LavaBlocksKilled=MultiCheat
				LavaBall=MultiCheat
				MinionsKilled=MultiCheat
			End If
		End If
	End If
	msgbox("Name: " & Name & " ; Age: " & Age & " ; Money: " & Money & ".")
	CheckForGameStart=inputbox("Is This Setup Ok?", ,"Y")
	if CheckForGameStart="Y" Then
		MainMenu1=0
		MainMenu2=0
		if Cheats=1 then
			Level=50000000
			Exit Do
		elseif Cheats=0 then
			Level=1
			Damage=1
			Life=100
			MaxLife=100
			ExperienceNeeded=140
			Exit Do
		End If
	elseif CheckForGameStart="N" Then
		Set objExplorer = CreateObject _
			("InternetExplorer.Application")

		objExplorer.Navigate "about:blank"   
		objExplorer.ToolBar = 0
		objExplorer.StatusBar = 0
		objExplorer.Width = 400
		objExplorer.Height = 200 
		objExplorer.Visible = 1             
		
		objExplorer.Document.Title = "RPG"
		objExplorer.Document.Body.InnerHTML = "Game is reloading..." _
			& "This might take some time to complete..."
			Wscript.sleep 1000
		
		Wscript.Sleep 1000
		
		objExplorer.Document.Body.InnerHTML = "Game Reloaded! Exiting now to game menu..."
		
		Wscript.Sleep 5000
		objExplorer.Quit
	else	
		msgbox("Error")
		Set objExplorer = CreateObject _
			("InternetExplorer.Application")

		objExplorer.Navigate "about:blank"   
		objExplorer.ToolBar = 0
		objExplorer.StatusBar = 0
		objExplorer.Width = 400
		objExplorer.Height = 200 
		objExplorer.Visible = 1             
		
		objExplorer.Document.Title = "RPG"
		
		objExplorer.Document.Body.InnerHTML = "Game is reloading..." _
			& "This might take some time to complete..."
			Wscript.sleep 1000
  
		Wscript.Sleep 1000
    
		objExplorer.Document.Body.InnerHTML = "Game Reloaded! Exiting now to game menu..."
    
		Wscript.Sleep 5000
		objExplorer.Quit
	End If
loop

'Shop Starts Here:

Do While Started=1
	x=msgbox("Welcome To My Shop! I have Lots of usefull stuff!", ,"Salesman")
	Started=0
	Shoping=1
	FinnishedDungeon=1
	exit do
loop

Do While FinnishedDungeon=1

Do While Shoping=1
	Shop=inputbox("$100 Wooden Sword, $100 Wooden Shield, $25 SPotion, $40 MPotion, $70 BPotion, $200 Stone Sword, $225 Stone Shield")
	if Shop="Wooden Sword" then
		If Money<=99 then
			msgbox("Not Enough Money :(")
		elseif Sword=1 then
			msgbox("You Already Bought This!")
		elseif Money>=100 then
			Money=Money-100
			msgbox("You Bought A Wooden Sword!")
			Sword=1
			Damage=3
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="Wooden Shield" then
		If Money<=99 then
			msgbox("Not Enough Money :(")
		elseif Shield=1 then
			msgbox("You Already Bought This!")
		elseif Money>=100 then
			Money=Money-100
			msgbox("You Bought A Wooden Shield!")
			Shield=1
			DamageAvoided=1
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="SPotion" then
		If Money<=24 then
			msgbox("Not Enough Money :(")
		elseif SPotion>=10 then
			msgbox("You Can't Buy Any More SPotions!")
		elseif Money>=25 then
			Money=Money-25
			msgbox("You Bought A SPotion!")
			SPotion=SPotion+1
			If SPotion>=11 then
				Spotion=10
			End If
			msgbox("You Have: " &SPotion)
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="MPotion" then
		If Money <=39 then
			msgbox("Not Enough Money :(")
		elseif MPotion >=7 then
			msgbox("You Can't Buy Any More MPotions!")
		elseif Money>=40 then
			Money=Money-40
			msgbox("You Bought A MPotion!")
			MPotion=MPotion+1
			If MPotion>=8 then
				MPotion=7
			End If
			msgbox("You Have: " &MPotion)
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="BPotion" then
		If Money <=69 then
			msgbox("Not Enough Money :(")
		elseif BPotion >=5 then
			msgbox("You Can't Buy Any More BPotions!")
		elseif Money>=70 then
			Money=Money-70
			msgbox("You Bought A BPotion!")
			BPotion=BPotion+1
			If BPotion>=6 then
				BPotion=5
			End If
			msgbox("You Have: " &BPotion)
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="Stone Sword" then
		If Money<=199 then
			msgbox("Not Enough Money :(")
		elseif Sword=2 then
			msgbox("You Already Bought This!")
		elseif Money>=200 then
			Money=Money-200
			msgbox("You Bought A Stone Sword!")
			Sword=2
			Damage=6
			msgbox("You Have Left " &Money)
		End If
	elseif Shop="Stone Shield" then
		If Money<=224 then
			msgbox("Not Enough Money :(")
		elseif Shield=2 then
			msgbox("You Already Bought This!")
		elseif Money>=225 then
			Money=Money-225
			msgbox("You Bought A Stone Shield!")
			Shield=2
			DamageAvoided=4
			msgbox("You Have Left " &Money)
		End If
	elseif Shop="Metal Sword" then
		If Money<=399 then
			msgbox("Not Enough Money :(")
		elseif Sword=3 then
			msgbox("You Already Bought This!")
		elseif Money>=400 then
			Money=Money-400
			msgbox("You Bought A Metal Sword!")
			Sword=3
			Damage=12
			msgbox("You Have Left: " &Money)
		End If
	elseif Shop="Metal Shield" then
		If Money<=449 then
			msgbox("Not Enough Money :(")
		elseif Shield=3 then
			msgbox("You Already Bought This!")
		elseif Money>=450 then
			Money=Money-450
			msgbox("You Bought A Metal Shield!")
			Shield=3
			DamageAvoided=16
			msgbox("You Have Left " &Money)
		End If
	End If
	ShopEnd=inputbox("Are You Done Shopping?", ,"Y")
	If ShopEnd="Y" then
		AdventureMode=1
		Shoping=0
		Exit Do
	elseif ShopEnd="N" then
		msgbox("Sending You Back...")
	else
		msgbox("Error")
	End If
Loop

Do While AdventureMode=1
	ChoosingDungeon=inputbox("Where Do You Want To Go? (1. Forest    2. Volcano    3. Castle    4. Desert    5. Sea    6. Beach    7. Hut	8. Level Up Area   9. End Game)")
	If ChoosingDungeon="Forest" then
		msgbox("You Went To The Forest... It Is Dark And Spooky")
		ForestDungeon=1
		AdventureMode=0
	Elseif ChoosingDungeon="Volcano" then
		if Level<2 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 2!")
		elseif Level>=2 then
			msgbox("You Went To The Volcano, It Is Really Hot Up Here...")
			VolcanoDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Castle" then
		if Level<5 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 5!")
		elseif Level>=5 then
			msgbox("You Went To The Castle, It Is Cold And Dusty...")
			CastleDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Desert" then
		if Level<3 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 3!")
		elseif Level>=3 then
			msgbox("You Went To The Desert, There Is A Sand Storm! :O")
			DesertDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Sea" then
		if Level<4 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 4!")
		elseif Level>=4 then
			msgbox("You Went To The Sea, The Taste Of Salt Here Makes You Scared")
			SeaDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Beach" then
		if Level<6 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 6!")
		elseif Level>=6 then
			msgbox("You Went To The Beach, The Smell Of Salt Here Puts You At Ease")
			BeachDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Hut" then
		if Level<10 then
			msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 10!")
		elseif Level>=10 then
			msgbox("You Went To The Hut, Theres Brewing Stuff Everywhere")
			HutDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Level Up Area" then
		msgbox("You Went To The Level Up Area, Here You Will Level Up")
		LevelUpDungeon=1
		AdventureMode=0
	elseif ChoosingDungeon="End Game" then
		Sure=inputbox("Do You Want To Save?")
		if Sure="Y" then
			'Do we have a file created?
			'Yes - Read it
			'No - Create it
			Set objFSO=CreateObject("Scripting.FileSystemObject")
			If (objFSO.FileExists(sFilePath) = False) Then		
				Set objFile = objFSO.CreateTextFile(sFilePath, True)
			else
				Set fso = CreateObject("Scripting.FileSystemObject")
				FileCreated=1
				fso.GetFile("SaveFile.txt").Delete
				wscript.sleep 1000
				Set objFile = objFSO.CreateTextFile(sFilePath, True)
				End If
			'y = WriteTextFile(objFile,"Name",Name)
			'objFile.WriteLine ("Name=" & Name & ";")
			objFile.WriteLine (Name)
			objFile.WriteLine (Age)
			objFile.WriteLine (Money)
			objFile.WriteLine (Life)
			objFile.WriteLine (Damage)
			objFile.WriteLine (Sword)
			objFile.WriteLine (SPotion)
			objFile.WriteLine (MPotion)
			objFile.WriteLine (BPotion)
			objFile.WriteLine (Level)
			objFile.WriteLine (MaxLife)
			objFile.WriteLine (Experience)
			objFile.WriteLine (ExperienceNeeded)
			objFile.WriteLine (WitchsKilled)
			objFile.WriteLine (Wand)
			objFile.WriteLine (CrabsKilled)
			objFile.WriteLine (CrabHand)
			objFile.WriteLine (WhalesKilled)
			objFile.WriteLine (DarkFin)
			objFile.WriteLine (SlimesKilled)
			objFile.WriteLine (SlimeBall)
			objFile.WriteLine (KnightsKilled)
			objFile.WriteLine (DeadKnightsArmour)
			objFile.WriteLine (LavaBlocksKilled)
			objFile.WriteLine (LavaBall)
			objFile.WriteLine (MinionsKilled)
			objFile.WriteLine (Keys)
			objFile.WriteLine (DamageAvoided)
			objFile.WriteLine (Shield)
			objFile.Close
			msgbox("Saved.")
			wscript.quit
		elseif Sure="N" then
			Done=inputbox("Are You Sure You Want To Exit Game Without Saving? (Y/N)")
				if Done="Y" then
					wscript.quit
				elseif Done="N" then
					msgbox("Continuing The Game In Dat Case...")
				End If
		End If
	End If
loop

'Dungeon Scripts Start Here:

Do While ForestDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &CurrentDungeonPosition)
	if Action="GO" then
		CurrentDungeonPosition=CurrentDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While CurrentDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=3
		CurrentEnemy = "Minion"
		EnemyHealth = 30
		EnemyDamage = 3
		CurrentDungeon = "Forest"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			ForestDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+20
				Experience=Experience+10
				Keys=Keys+1
				MinionsKilled=MinionsKilled+1
				msgbox("You Found $20 and 1 Key!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=6
		CurrentEnemy = "Minion"
		EnemyHealth = 30
		EnemyDamage = 3
		CurrentDungeon = "Forest"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			ForestDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+20
				Experience=Experience+10
				Keys=Keys+1
				MinionsKilled=MinionsKilled+1
				msgbox("You Found $20 and 1 Key!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=9
		CurrentEnemy = "Minion"
		EnemyHealth = 30
		EnemyDamage = 3
		CurrentDungeon = "Forest"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			ForestDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+20
				Experience=Experience+10
				Keys=Keys+1
				MinionsKilled=MinionsKilled+1
				msgbox("You Found $20 and 1 Key!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 40 XP and $80")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+40
		Money=Money+80
		ForestDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		CurrentDungeonPosition=0
		Exit Do
	loop
Loop

Do While VolcanoDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &CurrentDungeonPosition)
	if Action="GO" then
		CurrentDungeonPosition=CurrentDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While CurrentDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=3
		CurrentEnemy = "Lava Block"
		EnemyHealth = 100
		EnemyDamage = 10
		CurrentDungeon = "Volcano"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			VolcanoDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+50
				Experience=Experience+30
				LavaBall=LavaBall+1
				LavaBlocksKilled=LavaBlocksKilled+1
				msgbox("You Found $50 and 1 Lava Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=6
		CurrentEnemy = "Lava Block"
		EnemyHealth = 100
		EnemyDamage = 10
		CurrentDungeon = "Volcano"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			VolcanoDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+50
				Experience=Experience+30
				LavaBall=LavaBall+1
				LavaBlocksKilled=LavaBlocksKilled+1
				msgbox("You Found $50 and 1 Lava Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=9
		CurrentEnemy = "Lava Block"
		EnemyHealth = 100
		EnemyDamage = 10
		CurrentDungeon = "Volcano"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			VolcanoDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+50
				Experience=Experience+30
				LavaBall=LavaBall+1
				LavaBlocksKilled=LavaBlocksKilled+1
				msgbox("You Found $50 and 1 Lava Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 40 XP and $80")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+80
		Money=Money+160
		VolcanoDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		CurrentDungeonPosition=0
		Exit Do
	loop
Loop

Do While CastleDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &CurrentDungeonPosition)
	if Action="GO" then
		CurrentDungeonPosition=CurrentDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While CurrentDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=3
		CurrentEnemy = "Knight"
		EnemyHealth = 2650
		EnemyDamage = 265
		CurrentDungeon = "Castle"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			CastleDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+670
				Experience=Experience+810
				DeadKnightsArmour=DeadKnightsArmour+1
				KnightsKilled=KnightsKilled+1
				msgbox("You Found $670 and 1 Dead Knights Armour!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=6
		CurrentEnemy = "Knight"
		EnemyHealth = 2650
		EnemyDamage = 265
		CurrentDungeon = "Castle"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			CastleDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+670
				Experience=Experience+810
				DeadKnightsArmour=DeadKnightsArmour+1
				KnightsKilled=KnightsKilled+1
				msgbox("You Found $670 and 1 Dead Knights Armour!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=9
		CurrentEnemy = "Knight"
		EnemyHealth = 2650
		EnemyDamage = 265
		CurrentDungeon = "Castle"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			CastleDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+670
				Experience=Experience+810
				DeadKnightsArmour=DeadKnightsArmour+1
				KnightsKilled=KnightsKilled+1
				msgbox("You Found $670 and 1 Dead Knights Armour!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 640 XP and $1280")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+640
		Money=Money+1280
		CastleDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		CurrentDungeonPosition=0
	loop
Loop

Do While DesertDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &CurrentDungeonPosition)
	if Action="GO" then
		CurrentDungeonPosition=CurrentDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While CurrentDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=3
		CurrentEnemy = "Slime"
		EnemyHealth = 290
		EnemyDamage = 29
		CurrentDungeon = "Desert"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			DesertDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+160
				Experience=Experience+90
				SlimeBall=SlimeBall+1
				SlimesKilled=SlimesKilled+1
				msgbox("You Found $160 and 1 Slime Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=6
		CurrentEnemy = "Slime"
		EnemyHealth = 290
		EnemyDamage = 29
		CurrentDungeon = "Desert"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			DesertDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+160
				Experience=Experience+90
				SlimeBall=SlimeBall+1
				SlimesKilled=SlimesKilled+1
				msgbox("You Found $160 and 1 Slime Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While CurrentDungeonPosition=9
		CurrentEnemy = "Slime"
		EnemyHealth = 290
		EnemyDamage = 29
		CurrentDungeon = "Desert"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			DesertDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+160
				Experience=Experience+90
				SlimeBall=SlimeBall+1
				SlimesKilled=SlimesKilled+1
				msgbox("You Found $160 and 1 Slime Ball!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CurrentDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 160 XP and $320")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+160
		Money=Money+320
		DesertDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		CurrentDungeonPosition=0
	loop
Loop

Do While SeaDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &SeaDungeonPosition)
	if Action="GO" then
		SeaDungeonPosition=SeaDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While SeaDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=3
		CurrentEnemy = "Whale"
		EnemyHealth = 880
		EnemyDamage = 88
		CurrentDungeon = "Sea"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			SeaDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+330
				Experience=Experience+270
				DarkFin=DarkFin+1
				WhalesKilled=WhalesKilled+1
				msgbox("You Found $330 and 1 Dark Fin!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While SeaDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=6
		CurrentEnemy = "Whale"
		EnemyHealth = 880
		EnemyDamage = 88
		CurrentDungeon = "Sea"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			SeaDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+330
				Experience=Experience+270
				DarkFin=DarkFin+1
				WhalesKilled=WhalesKilled+1
				msgbox("You Found $330 and 1 Dark Fin!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While SeaDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While SeaDungeonPosition=9
		CurrentEnemy = "Whale"
		EnemyHealth = 880
		EnemyDamage = 88
		CurrentDungeon = "Sea"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			SeaDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+330
				Experience=Experience+270
				DarkFin=DarkFin+1
				WhalesKilled=WhalesKilled+1
				msgbox("You Found $330 and 1 Dark Fin!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While SeaDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 320 XP and $640")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+320
		Money=Money+640
		SeaDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		SeaDungeonPosition=0
	loop
Loop

Do While BeachDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &BeachDungeonPosition)
	if Action="GO" then
		BeachDungeonPosition=BeachDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While BeachDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=3
		CurrentEnemy = "Crab"
		EnemyHealth = 2800
		EnemyDamage = 280
		CurrentDungeon = "Beach"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			BeachDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+1350
				Experience=Experience+2430
				CrabHand=CrabHand+1
				CrabsKilled=CrabsKilled+1
				msgbox("You Found $1350 and 1 Crab Hand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While BeachDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=6
		CurrentEnemy = "Crab"
		EnemyHealth = 2800
		EnemyDamage = 280
		CurrentDungeon = "Beach"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			BeachDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+1350
				Experience=Experience+2430
				CrabHand=CrabHand+1
				CrabsKilled=CrabsKilled+1
				msgbox("You Found $1350 and 1 Crab Hand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While BeachDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While BeachDungeonPosition=9
		CurrentEnemy = "Crab"
		EnemyHealth = 2800
		EnemyDamage = 280
		CurrentDungeon = "Beach"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			BeachDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+1350
				Experience=Experience+2430
				CrabHand=CrabHand+1
				CrabsKilled=CrabsKilled+1
				msgbox("You Found $1350 and 1 Crab Hand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While BeachDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 1280 XP and $2560")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+1280
		Money=Money+2560
		BeachDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		BeachDungeonPosition=0
	loop
Loop

Do While HutDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &HutDungeonPosition)
	if Action="GO" then
		HutDungeonPosition=HutDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While HutDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=3
		CurrentEnemy = "Witch"
		EnemyHealth = 4500
		EnemyDamage = 450
		CurrentDungeon = "Hut"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			HutDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+2710
				Experience=Experience+7290
				Wand=Wand+1
				WitchsKilled=WitchsKilled+1
				msgbox("You Found $2710 and 1 Wand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While HutDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=6
		CurrentEnemy = "Witch"
		EnemyHealth = 4500
		EnemyDamage = 450
		CurrentDungeon = "Hut"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			HutDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+2710
				Experience=Experience+7290
				Wand=Wand+1
				WitchsKilled=WitchsKilled+1
				msgbox("You Found $2710 and 1 Wand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While HutDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While HutDungeonPosition=9
		CurrentEnemy = "Witch"
		EnemyHealth = 4500
		EnemyDamage = 450
		CurrentDungeon = "Hut"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		Fight
		Do While ExitDungeon=1
			HutDungeon=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+2710
				Experience=Experience+7290
				Wand=Wand+1
				WitchsKilled=WitchsKilled+1
				msgbox("You Found $2710 and 1 Wand!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While HutDungeonPosition=10
		msgbox("You Finished The Dungeon! Good Job!")
		msgbox("Your Rewards Are: 2560 XP and $5120")
		msgbox("Taking You Back To The Shop & Healing You...........")
		Experience=Experience+2560
		Money=Money+5120
		HutDungeon=0
		Shoping=1
		FinnishedDungeon=1
		Life=MaxLife
		HutDungeonPosition=0
	loop
Loop

Do While LevelUpDungeon=1
	x=msgbox("Welcome To Where You Can Level Up, What Do You Want To Do?", ,"Level Up God")
	LevelUp=inputbox("Level Up, Leave", "Level Up")
	if LevelUp="Level Up" then
		if Level=1 then
			if Experience>=140 then
				MaxLife=200
				Life=MaxLife
				Level=2
				Experience=Experience-140
				ExperienceNeeded=300
				msgbox("You Have Levelled Up To Level 2!")
			elseif Experience<=139 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			end if
		elseif Level=2 then
			if Experience>=300 then
				MaxLife=300
				Life=MaxLife
				Level=3
				Experience=Experience-300
				ExperienceNeeded=620
				msgbox("You Have Levelled Up To Level 3!")
			elseif Experience<=299 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			end if
		elseif Level=3 then
			if Experience>=620 then
				MaxLife=400
				Life=MaxLife
				Level=4
				Experience=Experience-620
				ExperienceNeeded=1260
				msgbox("You Have Levelled Up To Level 4!")
			elseif Experience<=619 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			end if
		elseif Level=4 then
			if Experience>=1260 then
				MaxLife=500
				Life=MaxLife
				Level=5
				Experience=Experience-1260
				ExperienceNeeded=2540
				msgbox("You Have Levelled Up To Level 5!")
			elseif Experience<=1259 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level=5 then
			if Experience>=2540 then
				MaxLife=600
				Life=MaxLife
				Level=6
				Experience=Experience-2540
				ExperienceNeeded=5100
				msgbox("You Have Levelled Up To Level 6!")
			elseif Experience<=2539 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level=6 then
			if Experience>=5100 then
				MaxLife=700
				Life=MaxLife
				Level=7
				Experience=Experience-5100
				ExperienceNeeded=10220
				msgbox("You Have Levelled Up To Level 7!")
			elseif Experience<=5099 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level=7 then
			if Experience>=10220 then
				MaxLife=800
				Life=MaxLife
				Level=8
				Experience=Experience-10220
				ExperienceNeeded=20460
				msgbox("You Have Levelled Up To Level 8!")
			elseif Experience<=10219 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level=8 then
			if Experience>=20460 then
				MaxLife=900
				Life=MaxLife
				Level=9
				Experience=Experience-20460
				ExperienceNeeded=40940
				msgbox("You Have Levelled Up To Level 9!")
			elseif Experience<=20459 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level=9 then
			if Experience>=40940 then
				MaxLife=1000
				Life=MaxLife
				Level=10
				Experience=Experience-40940
				msgbox("You Have Levelled Up To Level 10")
			elseif Experience<=40939 then
				msgbox("ERROR, You Are Not Experienced Enough!")
				msgbox("Experience Left: " &ExperienceNeeded-Experience)
			End If
		elseif Level>=10 then
			msgbox("You Have Reached The Highest Level, Good Job!")
		End If
	elseif LevelUp="Leave" then
		LevelUpDungeon=0
		Shoping=0
		AdventureMode=1
		FinnishedDungeon=1
		Exit Do
	End If
Loop

Loop 



Function ReadTextFile(sFilePath, sVarName)
	'How to read a file	
	Set objFile = objFS.OpenTextFile(sFilePath)
	Do Until objFile.AtEndOfStream
		 strLine= objFile.ReadLine
		 Wscript.Echo strLine
	Loop
	objFile.Close

End Function