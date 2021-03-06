'-----------------------
'Name: RPG V2
'Author: persiafighter
'Date: 12/02/2015 (DD/MM/YYYY)						DD = Day		MM = Month		YYYY = Year
'Time: 22:22 PM  (HH/MM/PM;AM)						HH = Hours		MM = Minutes	PM;AM = PM Or AM
'Game Version: 2.3.2.5
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
SSPotion=0
LavaBlocksNeeded=0
SlimeBallsNeeded=0
WitchesNeeded=0
KeysNeeded=0
KnightsNeeded=0
SlimesNeeded=0
WandsNeeded=0
DeadKnightsArmoursNeeded=0
QuestAcceptedNumber=0
MinionsNeeded=0
MaximesHead=0
UltimateBossKilled=0
UltimateBossKilledNeeded=0
MSPotion=0
CreatorsKilled=0
GameBroken=0
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

MainMenu1=1

'Functions

Function SaveFunction
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
	objFile.WriteLine (SSPotion)
	objFile.WriteLine (MinionsNeeded)
	objFile.WriteLine (MaximesHead)
	objFile.WriteLine (UltimateBossKilled)
	objFile.WriteLine (UltimateBossKilledNeeded)
	objFile.WriteLine (LavaBlocksNeeded)
	objFile.WriteLine (SlimeBallsNeeded)
	objFile.WriteLine (WitchesNeeded)
	objFile.WriteLine (KeysNeeded)
	objFile.WriteLine (KnightsNeeded)
	objFile.WriteLine (SlimesNeeded)
	objFile.WriteLine (WandsNeeded)
	objFile.WriteLine (DeadKnightsArmoursNeeded)
	objFile.WriteLine (QuestAcceptedNumber)
	objFile.WriteLine (GameBroken)
	objFile.WriteLine (CreatorsKilled)
	objFile.WriteLine (MSPotion)
	objFile.Close
	msgbox("Saved.")
End Function

Function Heal2
	SelectPotion=inputbox("Which Potion Do You Want To Use? (SPotion, MPotion, BPotion, SSPotion, MSPotion, USPotion)")
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
		elseif BPotion<=0 then
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
	elseif SelectPotion="SSPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif SSPotion<=0 then
			msgbox("Not Enough SSPotions!")
		elseif Life<MaxLife then
			SSPotion=SSPotion-1
			Life=Life+150
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " & Life & " Health")
		End If
	elseif SelectPotion="MSPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif MSPotion<=0 then
			msgbox("Not Enough MSPotions!")
		elseif Life<MaxLife then
			MSPotion=MSPotion-1
			Life=Life+300
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " & Life & " Health")
		End If
	elseif SelectPotion="USPotion" then
		if Life=MaxLife then
			msgbox("Cannot Heal!")
		elseif USPotion<=0 then
			msgbox("Not Enough USPotions!")
		elseif Life<MaxLife then
			USPotion=USPotion-1
			Life=MaxLife
			if Life>=MaxLife then
				Life=MaxLife
			End If
			msgbox("Healed!")
			msgbox("You Have: " & Life & " Health")
		End If
	End If
End Function

Function Credits
	x=msgbox("Main Coder: persiafighter", ,"Credits")
	x=msgbox("Main Idea: persiafighter", ,"Credits")
	x=msgbox("First Version By: persiafighter", ,"Credits")
	x=msgbox("Main Beta Tester: M A X I M E", ,"Credits")
	x=msgbox("Main Helper: BigBottomJR", ,"Credits")
	x=msgbox("Thanks For Playing Our Game!", ,"Credits")
	wscript.Quit
End Function

Function ReadTextFile(sFilePath, sVarName)
	'How to read a file	
	Set objFile = objFS.OpenTextFile(sFilePath)
	Do Until objFile.AtEndOfStream
		 strLine= objFile.ReadLine
		 Wscript.Echo strLine
	Loop
	objFile.Close

End Function

Function MultiFight
	Working = 1
	msgbox("You Found " & EnemyAmount & " " & CurrentEnemy & "! Watch Out!")
	Do While Working = 1
		Attack=inputbox("What do you want to do? 1. Fight 2. Heal 3. Bulk Attack")
			if Attack="Heal" then
				Heal2
			elseif Attack="Fight" then
				EnemyHealth=EnemyHealth-Damage
				msgbox("You Dealed " &Damage)
					if EnemyHealth<=0 then
						msgbox("You Defeated One Of The " &CurrentEnemy + "!")
						msgbox("You Have: " & Life & " Health.")
						EnemyAmount=EnemyAmount-1
						If EnemyAmount<=0 then
							OriginalEnemyAmount=20
							msgbox("You Defeated The Wave Of " & OriginalEnemyAmount & " " & CurrentEnemy & "!")
							KilledEnemy=1
							BattleStillNotDone=0
							Combat=0
							Exit Function
						ElseIf EnemyAmount>=1 then
							EnemyHealth = 30
							EnemyDamage = 3
							EnemyDamage=EnemyDamage-DamageAvoided
							if EnemyDamage<=0 then
								EnemyDamage=1
							End If
						End If
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
						Money=Money-MoneyPunishment
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
			elseif Attack="Bulk Attack" then
				BattleStillNotDone=1
				Do While BattleStillNotDone=1
				EnemyHealth=EnemyHealth-Damage
					if EnemyHealth<=0 then
						EnemyAmount=EnemyAmount-1
						If EnemyAmount<=0 then
							OriginalEnemyAmount=20
							msgbox("You Defeated The Wave Of " & OriginalEnemyAmount & " " & CurrentEnemy & "!")
							KilledEnemy=1
							BattleStillNotDone=0
							Combat=0
							Exit Function
						ElseIf EnemyAmount>=1 then
							EnemyHealth = 30
							EnemyDamage = 3
							EnemyDamage=EnemyDamage-DamageAvoided
							if EnemyDamage<=0 then
								EnemyDamage=1
							End If
						End If
					End If
				Life=Life-EnemyDamage
					if Life<=0 then
						msgbox("You Have Died.")
						Shoping=1
						FinnishedDungeon=1
						Life=MaxLife
						Lost=1
						Money=Money-MoneyPunishment
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
					End If
				Loop
			End If
	Loop
End Function

Function CreatorFight
	Working = 1
	msgbox("You Found The " &CurrentEnemy + "! Watch Out!")
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
						Money=Money-MoneyPunishment
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
			elseif Attack="Bulk Attack" then
				x=msgbox("You Can't Bulk Attack In The Last Fight!")
			End If
	Loop
End Function

Function UltimateFight
	Working = 1
	msgbox("You Found The " &CurrentEnemy + "! Watch Out!")
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
			elseif Attack="Bulk Attack" then
				x=msgbox("You Can't Bulk Attack In The Ultimate Fight!")
			End If
	Loop
End Function

Function Fight
	Working = 1
	msgbox("You Found A " &CurrentEnemy + "! Watch Out!")
	Do While Working = 1
		Attack=inputbox("What do you want to do? 1. Fight 2. Heal 3. Bulk Attack")
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
			elseif Attack="Bulk Attack" then
				Do While EnemyHealth>=1
					EnemyHealth=EnemyHealth-Damage
					TotalDamage=TotalDamage+Damage
					if EnemyHealth<=0 then
						msgbox("You Defeated The " &CurrentEnemy + "!")
						msgbox("You Have: " & Life & " Health.")
						msgbox("Enemy has dealed a total of " & TotalEnemyDamage & " Damage. And you dealed a total of " & TotalDamage & " Damage.")
						KilledEnemy=1
						Combat=0
						Exit Function
					End If
					Life=Life-EnemyDamage
					TotalEnemyDamage=TotalEnemyDamage+EnemyDamage
					if Life<=0 then
						msgbox("You Have Died.")
						msgbox("Enemy has dealed a total of " & TotalEnemyDamage & " Damage. And you dealed a total of " & TotalDamage & " Damage.")
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
							EnemyHealth=0
							Exit Do
						Loop
					End If
				Loop
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
			msgbox("You Found The Ultimate Sword, The Ultimate Shield, The Ultimate Health Necklace And The Ultimate Special Potions!")
			msgbox("You Also Found $100 K And Reached Level 10!")
			Sword = 999999
			Damage = 99999999
			Shield = 999999
			DamageAvoided = 199999999
			Necklace=999999
			ExtraLife=15
			MaxLife=1000
			MaxLife=MaxLife*ExtraLife
			Life=MaxLife
			USPotion=5
			Level=10
			Money=Money+100000
		elseif Chance1>=2 And Chance1<=50 then
			msgbox("The Chest Is Empty, But Next To It There Are $1 K!")
			Money=Money+1000
		End If
	elseif Chance0>=2 And Chance0<=100 then
		max=50
		min=1
		Chance3 = Round(max*Rnd)
		if Chance3>max then
			Chance3=max
		elseif Chance0<min then
			Chance3=min
		end if
		If Chance3=1 then
			msgbox("You Found A Healing Fountain! Your Health Was Restored!")
			Life=MaxLife
		elseif Chance3>=2 then
			msgbox("You Went On, Nothing Happened...")
		End If
	end if
End Function

Function Quests1
	StillInQuests=1
	msgbox("Welcome To The Quest Area :3")
	msgbox("If you have completed any of the quests, you can submit them here, you can also review other quests or accept new quests")
	Do While StillInQuests=1
		QuestSelection=inputbox("What do you want to do? (1. Check For Quests	2. View Current Quests	3. Claim Rewards	4. Leave)")
		If QuestSelection="Check For Quests" then
			QuestChoosing1=1
			Do While QuestChoosing1=1
				max=5
				min=1
				Chance2 = Round(max*Rnd)
				if Chance2>max then
					Chance2=max
				elseif Chance2<min then
					Chance2=min
				end if
				If Chance2=1 then
					msgbox("There are the following quests available: ")
					QuestChoosing=inputbox("Option 1: Kill 100 Minions, 200 Lava Blocks And Bring Me 50 Slime Balls. Option 2: Next Quest Available. (input the option number for the script to work.)")
					If QuestChoosing=1 then
						QuestsAccepted="Kill 100 Minions, 200 Lava Blocks And Get 50 Slime Balls"
						MinionsNeeded=100
						LavaBlocksNeeded=200
						SlimeBallsNeeded=50
						QuestAcceptedNumber=1
						QuestChoosing1=0
						msgbox("Quest Accepted!")
					elseif QuestChoosing=2 then
						QuestChoosing1=1
					End If
				elseif Chance2=2then
					msgbox("There are the following quests available: ")
					QuestChoosing=inputbox("Option 1: Kill 200 Minions, 50 Witches And Bring Me 200 Keys. Option 2: Next Quest Available. (input the option number for the script to work.)")
					If QuestChoosing=1 then
						QuestsAccepted="Kill 200 Minions, 50 Witches And Bring Me 200 Keys"
						MinionsNeeded=200
						WitchesNeeded=50
						KeysNeeded=200
						QuestAcceptedNumber=2
						QuestChoosing1=0
						msgbox("Quest Accepted!")
					elseif QuestChoosing=2 then
						QuestChoosing1=1
					End If
				elseif Chance2=3 then
					msgbox("There are the following quests available: ")
					QuestChoosing=inputbox("Option 1: Kill 100 Knights, 200 Slimes And Bring Me 20 Wands. Option 2: Next Quest Available. (input the option number for the script to work.)")
					If QuestChoosing=1 then
						QuestsAccepted="Kill 100 Knights, 200 Slimes And Bring Me 20 Wands"
						KnightsNeeded=100
						SlimesNeeded=200
						WandsNeeded=20
						QuestAcceptedNumber=3
						QuestChoosing1=0
						msgbox("Quest Accepted!")
					elseif QuestChoosing=2 then
						QuestChoosing1=1
					End If
				elseif Chance2=4 then
					msgbox("There are the following quests available: ")
					QuestChoosing=inputbox("Option 1: Bring Me 100 Keys, 200 Slime Balls And 50 Dead Knights Armours. Option 2: Next Quest Available. (input the option number for the script to work.)")
					If QuestChoosing=1 then
						QuestsAccepted="Bring Me 100 Keys, 200 Slime Balls And 50 Dead Knights Armours"
						KeysNeeded=100
						SlimeBallsNeeded=200
						DeadKnightsArmoursNeeded=50
						QuestAcceptedNumber=4
						QuestChoosing1=0
						msgbox("Quest Accepted!")
					elseif QuestChoosing=2 then
						QuestChoosing1=1
					End If
				elseif Chance2=5 then
					msgbox("There are the following quests available: ")
					QuestChoosing=inputbox("Option 1: Defeat The Ultimate Boss. Option 2: Next Quest Available. (input the option number for the script to work.)")
					If QuestChoosing=1 then
						QuestsAccepted="Defeat The Ultimate Boss"
						UltimateBossKilledNeeded=1
						QuestAcceptedNumber=5
						QuestChoosing1=0
						msgbox("Quest Accepted!")
					elseif QuestChoosing=2 then
						QuestChoosing1=1
					End If
				End If
			loop
		Elseif QuestSelection="View Current Quests" then
			If QuestAcceptedNumber=0 then
				msgbox("No Quest Accepted At The Moment.")
			elseif QuestAcceptedNumber>=1 then
				msgbox("" & QuestsAccepted & "")
				msgbox("For More Information On How Much You Have Left To Complete This Quest, Check In The 'Claim Rewards' Section :)")
			End If
		elseif QuestSelection="Claim Rewards" then
			If QuestAcceptedNumber=1 then
				If MinionsKilled>=MinionsNeeded And LavaBlocksKilled>=LavaBlocksNeeded And SlimeBall>=SlimeBallsNeeded then
					msgbox("You have completed the quest! :D")
					msgbox("Rewards are an extra $2K and another extra 1K Experience!")
					Money=Money+2000
					Experience=Experience+1000
					MinionsKilled=MinionsKilled-MinionsNeeded
					LavaBlocksKilled=LavaBlocksKilled-LavaBlocksNeeded
					SlimeBall=SlimeBall-SlimeBallsNeeded
					QuestAcceptedNumber=0
					MinionsNeeded=0
					LavaBlocksNeeded=0
					SlimeBallsNeeded=0
				Elseif MinionsKilled<MinionsNeeded Or LavaBlocksKilled<LavaBlocksNeeded Or SlimeBall<SlimeBallsNeeded then
					msgbox("Requisites Of The Quest Not Completed!")
					QuestMinionsNeededCountup=MinionsNeeded-MinionsKilled
					QuestLavaBlocksNeededCountup=LavaBlocksNeeded-LavaBlocksKilled
					QuestSlimeBallsNeeded=SlimeBallsNeeded-SlimeBall
					msgbox("You Need To Kill " & QuestMinionsNeededCountup & " More Minions And " & QuestLavaBlocksNeededCountup & " More Lava Blocks. You Also Need To Get " & QuestSlimeBallsNeeded & " Slime Ball(s).")
				End If
			elseif QuestAcceptedNumber=2 then
				If MinionsKilled>=MinionsNeeded And WitchsKilled>=WitchesNeeded	And Keys>=KeysNeeded then
					msgbox("You have completed the quest! :D")
					msgbox("Rewards are an extra $27.1K and another extra 72.9K Experience!")
					Money=Money+27100
					Experience=Experience+72900
					MinionsKilled=MinionsKilled-MinionsNeeded
					WitchsKilled=WitchsKilled-WitchesNeeded
					Keys=Keys-KeysNeeded
					QuestAcceptedNumber=0
					MinionsNeeded=0
					WitchesNeeded=0
					KeysNeeded=0
				elseif MinionsKilled<MinionsNeeded Or WitchsKilled<WitchesNeeded Or Keys<KeysNeeded then
					msgbox("Requisites Of The Quest Not Completed!")
					QuestMinionsNeededCountup=MinionsNeeded-MinionsKilled
					QuestWitchesNeededCountup=WitchesNeeded-WitchsKilled
					QuestKeysNeededCountup=KeysNeeded-Keys
					msgbox("You Need To Kill " & QuestMinionsNeededCountup & " More Minions And " & QuestWitchesNeededCountup & " More Witches. You Also Need To Get " & QuestKeysNeededCountup & " Key(s).")
				End If
			elseif QuestAcceptedNumber=3 then
				If KnightsKilled>=KnightsNeeded And SlimesKilled>=SlimesNeeded And Wand>=WandsNeeded then
					msgbox("You have completed the quest! :D")
					msgbox("Rewards are an extra $67K and another extra 81K Experience!")
					Money=Money+67000
					Experience=Experience+81000
					KnightsKilled=KnightsKilled-KnightsNeeded
					SlimesKilled=SlimesKilled-SlimesNeeded
					Wand=Wand-WandsNeeded
					QuestAcceptedNumber=0
					KnightsNeeded=0
					SlimesNeeded=0
					Wand=0
				elseif KnightsKilled<KnightsNeeded Or SlimesKilled<SlimesNeeded Or Wand<WandsNeeded then
					msgbox("Requisites Of The Quest Not Completed!")
					QuestKnightsNeededCountup=KnightsNeeded-KnightsKilled
					QuestSlimesNeededCountup=SlimesNeeded-SlimesKilled
					QuestWandsNeededCountup=WandsNeeded-Wand
					msgbox("You Need To Kill " & QuestKnightsNeededCountup & " More Knights And " & QuestSlimesNeededCountup & " More Slimes. You Also Need To Get " & QuestWandsNeededCountup & " Wand(s).")
				End If
			elseif QuestAcceptedNumber=4 then
				If Keys>=KeysNeeded And SlimeBall>=SlimeBallsNeeded And DeadKnightsArmour>=DeadKnightsArmoursNeeded then
					msgbox("You have completed the quest! :D")
					msgbox("Rewards are an extra $5K and another extra 8K Experience!")
					Money=Money+5000
					Experience=Experience+8000
					Keys=Keys-KeysNeeded
					SlimeBall=SlimeBall-SlimeBallsNeeded
					DeadKnightsArmour=DeadKnightsArmour-DeadKnightsArmoursNeeded
					QuestAcceptedNumber=0
					KeysNeeded=0
					SlimeBallsNeeded=0
					DeadKnightsArmoursNeeded=0
				elseif Keys<KeysNeeded Or SlimeBall<SlimeBallsNeeded Or DeadKnightsArmour<DeadKnightsArmoursNeeded then
					msgbox("Requisites Of The Quest Not Completed!")
					QuestKeysNeededCountup=KeysNeeded-Keys
					QuestSlimeBallsNeeded=SlimeBallsNeeded-SlimeBall
					QuestDeadKnightsArmoursNeededCountup=DeadKnightsArmoursNeeded-DeadKnightsArmour
					msgbox("You need to get " & QuestKeysNeededCountup & " more key(s), " & QuestSlimeBallsNeeded & " more slime ball(s) and " & QuestDeadKnightsArmoursNeededCountup & " more dead knight's armour(s)")
				End If
			elseif QuestAcceptedNumber=5 then
				If UltimateBossKilled>=UltimateBossKilledNeeded then
					msgbox("You have completed the quest! :D")
					msgbox("Rewards are an extra $500 Mill and another extra 1 Bill Experience!")
					Money=Money+500000000
					Experience=Experience+1000000000
					UltimateBossKilled=UltimateBossKilled-UltimateBossKilledNeeded
					QuestAcceptedNumber=0
					UltimateBossKilledNeeded=0
				elseif UltimateBossKilled<UltimateBossKilledNeeded then
					msgbox("Requisites Of The Quest Not Completed!")
					QuestUltimateBossKilledNeededCountup=UltimateBossKilledNeeded-UltimateBossKilled
					msgbox("You need to kill " & QuestUltimateBossKilledNeededCountup & " More Ultimate Boss(es)")
				End If
			End If
		elseif QuestSelection="Leave" then
			StillInQuests=0
		End If
	Loop
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
				 elseif (i = 30) then
					SSPotion = strLine
				 elseif (i = 31) then
					MinionsNeeded = strLine
				 elseif (i = 32) then
					MaximesHead = strLine
				 elseif (i = 33) then
					UltimateBossKilled = strLine
				 elseif (i = 34) then
					UltimateBossKilledNeeded = strLine
				 elseif (i = 35) then
					LavaBlocksNeeded = strLine
				 elseif (i = 36) then
					SlimeBallsNeeded = strLine					
				 elseif (i = 37) then
					WitchesNeeded = strLine
				 elseif (i = 38) then
					KeysNeeded = strLine
				 elseif (i = 39) then
					KnightsNeeded = strLine
				 elseif (i = 40) then
					SlimesNeeded = strLine
				 elseif (i = 41) then
					WandsNeeded = strLine
				 elseif (i = 42) then
					DeadKnightsArmoursNeeded = strLine
				 elseif (i = 43) then
					QuestAcceptedNumber = strLine
				 elseif (i = 44) then
					GameBroken = strLine
				 elseif (i = 45) then
					CreatorsKilled = strLine
				 end if
				 'Wscript.Echo strLine
			Loop
			objFile.Close
			msgbox("Save File Data: Name: " & Name & " ; Age: " & Age & " ; Money: " & Money & " ; Life: " & Life & " ; Damage: " & Damage & " ; Sword: " & Sword & " ; Small Potions: " & SPotion & " ; Medium Potions: " & MPotion & " ; Big Potions: " & BPotion & " ; Level: " & Level & " ; Maximum Life: " & MaxLife & " ; Experience: " & Experience & " ; Experience Needed: " & ExperienceNeeded & " ; Witches Killed: " & WitchsKilled & " ; Wands: " & Wand & " ; Crabs Killed: " & CrabsKilled & " ; Crab Hands: " & CrabHand & " ; Whales Killed:" & WhalesKilled & " ; Dark Fins: " & DarkFin & " ; Slimes Killed: " & SlimesKilled & " ; Slime Balls: " & SlimeBall & " ; Knights Killed: " & KnightsKilled & " ; Dead Knights Armours: " & DeadKnightsArmour & " ; Lava Blocks Killed: " & LavaBlocksKilled & " ; Lava Balls: " & LavaBall & " ; Minions Killed: " & MinionsKilled & " ; Keys: " & Keys & " ; Damage Avoided: " & DamageAvoided & " ; Shield: " & Shield & " ; Small Special Potions: " & SSPotion & ".")
			msgbox("More Save File Data: Minions Needed " & MinionsNeeded & " ; Maxime's Head: " & MaximesHead & " ; Ultimate Bosses Killed: " & UltimateBossKilled & " ; Ultimate Bosses Needed: " & UltimateBossKilledNeeded & " ; Lava Blocks Needed: " & LavaBlocksNeeded & " ; Slime Balls Needed: " & SlimeBallsNeeded & " ; Witches Needed: " & WitchesNeeded & " ; Keys Needed: " & KeysNeeded & " ; Knights Needed: " & KnightsNeeded & " ; SlimesNeeded: " & SlimesNeeded & " ; Wands Needed: " & WandsNeeded & " ; Dead Knight's Armours Needed: " & DeadKnightsArmoursNeeded & " ; Quest Accepted Number: " & QuestAcceptedNumber & " ; Broken Games: " & GameBroken & " ; Creators Killed: " & CreatorsKilled & ".")
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
			Cheat2=inputbox("Choose Your Damage Amount (2000000000 MAX):", ,"2000000000")
			If Cheat2<="-1" then
				msgbox("Error")
			elseif Cheat2>="2000000001" then
				msgbox("Error")
			else
				Damage = Cheat2
			End If
			Cheat3=inputbox("Choose Your Health Amount (30000 MAX):", ,"30000")
			If Cheat3<="-1" Then
				msgbox("Error")
			elseif Cheat3>="30001" then
				msgbox("Error")
			else
				Life = Cheat3
				MaxLife = Cheat3
			End If
			ShieldCheat=inputbox("Choose Your Damage Avoided Amount (2000000000 MAX):", ,"2000000000")
			If ShieldCheat<="-1" Then
				msgbox("Error")
			elseif ShieldCheat>="2000000001" then
				msgbox("Error")
			else
				DamageAvoided = ShieldCheat
				Shield = ShieldCheat
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
				UltimateBossKilled=MultiCheat
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
		msgbox("Restarting Values")
	else	
		msgbox("Restarting Values")
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
	Shop=inputbox("$100 Wooden Sword, $100 Wooden Shield, $25 SPotion, $40 MPotion, $70 BPotion, $200 Stone Sword, $225 Stone Shield, $400 Metal Sword, $450 Metal Shield, $800 Golden Sword, $900 Golden Shield, $1600 Diamond Sword, $1800 Diamond Shield, $140 SSPotion, $200 MSPotion. Your Money Amount: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="SPotion" then
		If Money<=24 then
			msgbox("Not Enough Money :(")
		elseif SPotion>=10 then
			msgbox("You Can't Buy Any More SPotions!")
		elseif Money>=25 then
			PotAmount=inputbox("How many Small Potions are you going to buy? (MAX 10)")
			If PotAmount>10 then
				msgbox("Invalid Amount, Exceeds Maximum of 10.")
			elseif PotAmount<1 then
				msgbox("Invalid Amount, Only Allowed Numbers Higher Than 0")
			elseif PotAmount>0 and PotAmount<11 then
				If PotAmount*25<Money then
					msgbox("Not Enough Money For " & PotAmount & " Small Potions.")
				elseif PotAmount+SPotion>10 then
					msgbox("Too Many Potions, You Can Only Buy " & 10-(SPotion+PotAmount) & ". You Currently Have " & SPotion & " Small Potions.")
				elseif PotAmount*25<=Money then
					Money=Money-(PotAmount*25)
					msgbox("You Bought " & PotAmount & " SPotion(s)!")
					SPotion=SPotion+PotAmount
					If SPotion>=11 then
						SPotion=10
					End If
					msgbox("You Have: " & SPotion & " SPotion(s)")
					msgbox("You Have Left: $" & Money & ".")
				End If
			End If
		End If
	elseif Shop="MPotion" then
		If Money <=39 then
			msgbox("Not Enough Money :(")
		elseif MPotion >=7 then
			msgbox("You Can't Buy Any More MPotions!")
		elseif Money>=40 then
			Money=Money-40
			msgbox("You Bought 1 MPotion(s)!")
			MPotion=MPotion+1
			If MPotion>=8 then
				MPotion=7
			End If
			msgbox("You Have: " & MPotion & " MPotion(s)")
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="BPotion" then
		If Money <=69 then
			msgbox("Not Enough Money :(")
		elseif BPotion >=5 then
			msgbox("You Can't Buy Any More BPotions!")
		elseif Money>=70 then
			Money=Money-70
			msgbox("You Bought 1 BPotion(s)!")
			BPotion=BPotion+1
			If BPotion>=6 then
				BPotion=5
			End If
			msgbox("You Have: " & BPotion & " BPotion(s)")
			msgbox("You Have Left: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
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
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="Golden Sword" then
			If Money<=799 then
			msgbox("Not Enough Money :(")
		elseif Sword=4 then
			msgbox("You Already Bought This!")
		elseif Money>=800 then
			Money=Money-800
			msgbox("You Bought A Golden Sword!")
			Sword=4
			Damage=36
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="Golden Shield" then
		If Money<=899 then
			msgbox("Not Enough Money :(")
		elseif Shield=4 then
			msgbox("You Already Bought This!")
		elseif Money>=900 then
			Money=Money-900
			msgbox("You Bought A Golden Shield!")
			Shield=4
			DamageAvoided=64
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="Diamond Sword" then
		If Money<=1599 then
			msgbox("Not Enough Money :(")
		elseif Sword=5 then
			msgbox("You Already Bought This!")
		elseif Money>=1600 then
			Money=Money-1600
			msgbox("You Bought A Diamond Sword!")
			Sword=5
			Damage=108
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="Diamond Shield" then
		If Money<=1799 then
			msgbox("Not Enough Money :(")
		elseif Shield=5 then
			msgbox("You Already Bought This!")
		elseif Money>=1800 then
			Money=Money-1800
			msgbox("You Bought A Diamond Shield!")
			Shield=5
			DamageAvoided=256
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="SSPotion" then
		If Money <=139 then
			msgbox("Not Enough Money :(")
		elseif SSPotion >=5 then
			msgbox("You Can't Buy Any More SSPotions!")
		elseif Money>=140 then
			Money=Money-140
			msgbox("You Bought 1 SSPotion(s)!")
			SSPotion=SSPotion+1
			If MPotion>=6 then
				MPotion=5
			End If
			msgbox("You Have: " & SSPotion & " SSPotion(s)")
			msgbox("You Have Left: $" & Money & ".")
		End If
	elseif Shop="MSPotion" then
		If Money <=199 then
			msgbox("Not Enough Money :(")
		elseif MSPotion >=5 then
			msgbox("You Can't Buy Any More MSPotions!")
		elseif Money>=200 then
			Money=Money-200
			msgbox("You Bought 1 MSPotion(s)!")
			MSPotion=MSPotion+1
			If MSPotion>=6 then
				MSPotion=5
			End If
			msgbox("You Have: " & MSPotion & " MSPotion(s)")
			msgbox("You Have Left: $" & Money & ".")
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
	ChoosingDungeon=inputbox("Where Do You Want To Go? (1. Forest    2. Volcano    3. Castle    4. Desert    5. Sea    6. Beach    7. Hut	8. Level Up Area   9. End Game	10. Quests	11. ULTIMATE DUNGEON   12. Creator Battle)")
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
			SaveFunction
			wscript.quit
		elseif Sure="N" then
			Done=inputbox("Are You Sure You Want To Exit Game Without Saving? (Y/N)")
				if Done="Y" then
					wscript.quit
				elseif Done="N" then
					msgbox("Continuing The Game In Dat Case...")
				End If
		End If
	elseif ChoosingDungeon="Quests" then
		Quests1
	elseif ChoosingDungeon="ULTIMATE DUNGEON" then
		if Sword<=999998 then
			msgbox("You Don't Have The Ultimate Sword Or Any Better! You Will Die If You Go In There!")
		elseif Sword>=999999 then
			msgbox("You Went To The Ultimate Dungeon, Prepare To Get R3KT.")
			UltimateDungeon=1
			AdventureMode=0
		End If
	elseif ChoosingDungeon="Creator Battle" then
		if UltimateBossKilled<=0 then
			msgbox("You Have Not Defeated The Ultimate Boss Yet!")
		elseif UltimateBossKilled>=1 then
			x=msgbox("So, I See That You Defeated My Minion, M A X I M E. If You Want To Finnish This Game, You Better Defeat Me, And My Minions... Get Ready For The Battle!", ,"Creator")
			CreatorBattle=1
			AdventureMode=0
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

Do While UltimateDungeon=1
	CurrentEnemy = "Ultimate Boss"
	EnemyHealth = 1000000000
	EnemyDamage = 500000000
	CurrentDungeon = "Ultimate"
	KilledEnemy = 0
	ExitDungeon = 0
	EnemyDamage=EnemyDamage-DamageAvoided
	if EnemyDamage<=0 then
		EnemyDamage=1
	End If
	UltimateFight
	Do While ExitDungeon=1
		UltimateDungeon=0
		ExitDungeon=0
		Exit Do
	Loop
	Do While KilledEnemy=1
	x=msgbox("You have shown true power of a warrior. Me, M A X I M E will grant you one thing you will need to defeat the creator.",,"Ultimate Boss")
	x=msgbox("You Have Received The Ultimate Sword V2!", ,"System")
	Sword=9999999999
	Damage=1999999999
	x=msgbox("You Have Received The Ultimate Shield V2!", ,"System")
	Shield=9999999999
	DamageAvoided=2000000000
	x=msgbox("This sword I gave you does 1.999 Billion damage, use it well. The Shield Blocks 2 Billion Damage. I have to die now... You can choose to chop my head off if you want or not.", ,"M A X I M E (Ultimate Boss)")
	Claim=inputbox("Do You Want To Chop His Head Off?", ,"Y")
		if Claim="N" then
			Money=Money+100000
			Experience=Experience+500000
			UltimateBossKilled=UltimateBossKilled+1
			msgbox("You Scavenged $1K")
			UltimateDungeon=0
			Exit Do
		elseif Claim="Y" then
			Money=Money+100000
			Experience=Experience+500000
			MaximesHead=MaximesHead+1
			UltimateBossKilled=UltimateBossKilled+1
			msgbox("You Scavenged $100K and Maxime's Head!")
			KilledEnemy=0
			Combat=0
			UltimateDungeon=0
			Exit Do
		End If
	loop
Loop

Do While CreatorBattle=1
		Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/20)Position:" &CreatorDungeonPosition)
	if Action="GO" then
		CreatorDungeonPosition=CreatorDungeonPosition+1
	elseif Action="Heal" then
		Heal2
	End If
	Do While CreatorDungeonPosition=1
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=2
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=3
		CurrentEnemy = "Minions"
		EnemyAmount = 20
		EnemyHealth = 30
		EnemyDamage = 3
		CurrentDungeon = "Creator"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		MultiFight
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
				Money=Money+400
				Experience=Experience+200
				Keys=Keys+20
				MinionsKilled=MinionsKilled+20
				msgbox("You Found $400 and 20 Keys!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CreatorDungeonPosition=4
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=5
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=6
		CurrentEnemy = "Minions"
		EnemyAmount = 20
		EnemyHealth = 30
		EnemyDamage = 3
		CurrentDungeon = "Creator"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		MultiFight
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
				Money=Money+400
				Experience=Experience+200
				Keys=Keys+20
				MinionsKilled=MinionsKilled+20
				msgbox("You Found $400 and 20 Keys!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CreatorDungeonPosition=7
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=8
		RandomChestReward
		Exit Do
	loop
	Do While CreatorDungeonPosition=9
		CurrentEnemy = "Creator"
		EnemyHealth = 4000000000
		EnemyDamage = 2000001000
		MoneyPunishment = 50000
		CurrentDungeon = "Creator"
		KilledEnemy = 0
		ExitDungeon = 0
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
			EnemyDamage=1
		End If
		CreatorFight
		Do While ExitDungeon=1
			CreatorBattle=0
			ExitDungeon=0
			Exit Do
		Loop
		Do While KilledEnemy=1
		x=msgbox("Congratulations, You Defeated Me.", ,"Creator")
		Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
			if Claim="Leave" then
				Exit Do
			elseif Claim="Gather" then
				Money=Money+9999
				Experience=Experience+999999
				GameBroken=GameBroken+1
				CreatorsKilled=CreatorsKilled+20
				msgbox("You Found $9999 and 1 Broken Game!")
				KilledEnemy=0
				Combat=0
				Exit Do
			End If
		loop
		Exit Do
	Loop
	Do While CreatorDungeonPosition=10
		msgbox("You Finished The Game! Great Job!")
		msgbox("Saving Game...")
		SaveFunction
		Credits
	loop
Loop 

Loop