'-----------------------
'Name: RPG V2
'Author: persiafighter
'Date: 02/10/2014 (DD/MM/YYYY)						DD = Day		MM = Month		YYYY = Year
'Time: 16:48 PM  (HH/MM/PM;AM)						HH = Hours		MM = Minutes	PM;AM = PM Or AM
'Game Version: 2.1.9.8
'Game Version Meaning:
'-----------------------
'Alpha(1)/Beta(2)/Gamma(3)/Snapshot(0)      Official Version         Dungeons Done          Latest Bug Fix Update
'0			              					.    0		        	 .    0					.    0
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

Do While MainMenu1=1
MainMenuStart=inputbox("Welcome To RPG V2! Are you sure you want to start playing?")
if MainMenuStart="Y" then
    MainMenu1=0
    MainMenu2=1
	Started=1
    Exit Do
elseif MainMenuStart="N" then
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
    Exit Do
else
    msgbox("Error")
End If
loop

Do While MainMenu2=1
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
    Cheat1=inputbox("Choose Your Money Amount:", ,"999999999")
    If Cheat1<="-1" then
	msgbox("Error")
    else
	Money = Cheat1
    End If
    Cheat2=inputbox("Choose Your Damage Amount (500 MAX):", ,"500")
    If Cheat2<="-1" then
	msgbox("Error")
    elseif Cheat2>="501" then
	msgbox("Error")
    else
	Damage = Cheat2
    End If
    Cheat3=inputbox("Choose Your Health Amount (1000 MAX):", ,"1000")
    If Cheat3<="-1" Then
	msgbox("Error")
    elseif Cheat3>="1001" then
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
End If
msgbox("Name: " &Name)
msgbox("Age: " &Age)
msgbox("Money: " &Money)
CheckForGameStart=inputbox("Is This Setup Ok?")
if CheckForGameStart="Y" Then
    msgbox("Game Will Start Loading Now")
    MainMenu1=0
    MainMenu2=0
    Play=1
    if Cheats=1 then
        Sword=0
        Shield=0
        Armor=0
		ForestDungeon=No
		VolcanoDungeon=No
		CastleDungeon=No
		DesertDungeon=No
		SeaDungeon=No
		BeachDungeon=No
		HutDungeon=No
        EnemyHealth=5000
        EnemyDamage=500
        EnemyArmor=50
		Level=50000000
        Exit Do
    elseif Cheats=0 then
		Level=1
        Damage=1
        Life=100
		MaxLife=100
        Sword=0
        Shield=0
        Armor=0
		ForestDungeon=No
		VolcanoDungeon=No
		CastleDungeon=No
		DesertDungeon=No
		SeaDungeon=No
		BeachDungeon=No
		HutDungeon=No
        EnemyHealth=50
        EnemyDamage=3
        EnemyArmor=0
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

Do While Play=1
	Set objExplorer = CreateObject _
		("InternetExplorer.Application")
	objExplorer.Navigate "about:blank"   
	objExplorer.ToolBar = 0
	objExplorer.StatusBar = 0
	objExplorer.Width = 400
	objExplorer.Height = 200 
	objExplorer.Visible = 1             
	
	objExplorer.Document.Title = "RPG"
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (0%)"
		Wscript.sleep 10000
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (1%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (2%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (3%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (4%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (5%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (6%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (7%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (8%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (9%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (10%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (11%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (12%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (13%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (14%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (15%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (16%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (17%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (18%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (19%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (20%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (21%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (22%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (23%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (24%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (25%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (26%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (27%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (28%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (29%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (30%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (31%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (32%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (33%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (34%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (35%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (36%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (37%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (38%)"
		Wscript.sleep 2000
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (39%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (40%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (41%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (42%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (43%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (44%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (45%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (46%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (47%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (48%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (49%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (50%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (51%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (52%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (53%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (54%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (55%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (56%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (57%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (58%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (59%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (60%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (61%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (62%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (63%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (64%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (65%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (66%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (67%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (68%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (69%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (70%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (71%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (72%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (73%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (74%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (75%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (76%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (77%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (78%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (79%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (80%)"
		Wscript.sleep 2000
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (81%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (82%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (83%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (84%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (85%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (86%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (87%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (88%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (89%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (90%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (91%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (92%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (93%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (94%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (95%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (96%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (97%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (98%)"
		Wscript.sleep 50
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (99%)"
		Wscript.sleep 3000
	objExplorer.Document.Body.InnerHTML = "Game is loading resourcess and data..." _
		& "This might take some time to complete. (100%)"

Wscript.Sleep 5000

objExplorer.Document.Body.InnerHTML = "Game Loaded! Exiting now to game..."

Wscript.Sleep 5000


objExplorer.Quit
Play=0
Loop

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
Shop=inputbox("$100 Wooden Sword, $100 Wooden Shield, $25 SPotion, $40 MPotion, $70 BPotion")
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
else
    msgbox("Error")
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
	SeaDungeon=1
	AdventureMode=0
    End If
elseif ChoosingDungeon="Beach" then
    if Level<6 then
	msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 6!")
    elseif Level>=6 then
	BeachDungeon=1
	AdventureMode=0
    End If
elseif ChoosingDungeon="Hut" then
    if Level<10 then
	msgbox("You Are Not High Level Enough To Go Here! You Need To Be Level 10!")
    elseif Level>=10 then
	HutDungeon=1
	AdventureMode=0
    End If
elseif ChoosingDungeon="Level Up Area" then
	msgbox("You Went To The Level Up Area, Here You Will Level Up")
	LevelUpDungeon=1
	AdventureMode=0
elseif ChoosingDungeon="End Game" then
	Sure=inputbox("Are You Sure You Want To End The Game? Remember, Game Is Still Alpha, All Your Stuff Will Be Lost! (Y/N)")
	if Sure="Y" then
		wscript.quit
	elseif Sure="N" then
		msgbox("Continuing The Game Then")
	End If
End If
loop

'Dungeon Scripts Start Here:

Do While ForestDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &ForestDungeonPosition)
	if Action="GO" then
		ForestDungeonPosition=ForestDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While ForestDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=3
	msgbox("You Found A Minion! Watch Out!")
	EnemyHealth=30
	EnemyDamage=3
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Minion!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Minion Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Minion Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died In The Easiest Level, Looser")
			ForestDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			ForestDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Minion's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+20
		Experience=Experience+10
		Keys=Keys+1
		MinionsKilled=MinionsKilled+1
		msgbox("You Found $20 and 1 Key!")
		Exit Do
	End If
	Loop
	Do While ForestDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=6
	msgbox("You Found A Minion! Watch Out!")
	EnemyHealth=30
	EnemyDamage=3
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Minion!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Minion Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Minion Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died In The Easiest Level, Looser")
			ForestDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			ForestDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Minion's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+20
		Experience=Experience+10
		Keys=Keys+1
		MinionsKilled=MinionsKilled+1
		msgbox("You Found $20 and 1 Key!")
		Exit Do
	End If
	Loop
	Do While ForestDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While ForestDungeonPosition=9
	msgbox("You Found A Minion! Watch Out!")
	EnemyHealth=30
	EnemyDamage=3
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Minion!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Minion Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Minion Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died In The Easiest Level, Looser")
			ForestDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			ForestDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Minion's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+20
		Experience=Experience+10
		Keys=Keys+1
		MinionsKilled=MinionsKilled+1
		msgbox("You Found $20 and 1 Key!")
		Exit Do
	End If
	Loop
	Do While ForestDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
			msgbox("You Finished The Dungeon! Good Job!")
			msgbox("Your Rewards Are: 40 XP and $80")
			msgbox("Taking You Back To The Shop & Healing You...........")
			Experience=Experience+40
			Money=Money+80
			ForestDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			ForestDungeonPosition=0
			Exit Do
		end if
	loop
Loop

Do While VolcanoDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &VolcanoDungeonPosition)
	if Action="GO" then
		VolcanoDungeonPosition=VolcanoDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While VolcanoDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=3
	msgbox("You Found A LavaBlock! Watch Out!")
	EnemyHealth=100
	EnemyDamage=10
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The LavaBlock!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The LavaBlock Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The LavaBlock Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			VolcanoDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			VolcanoDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("LavaBlock's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+50
		Experience=Experience+30
		LavaBall=LavaBall+1
		LavaBlocksKilled=LavaBlocksKilled+1
		msgbox("You Found $50 and 1 Lava Ball!")
		Exit Do
	End If
	Loop
	Do While VolcanoDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=6
	msgbox("You Found A LavaBlock! Watch Out!")
	EnemyHealth=100
	EnemyDamage=10
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The LavaBlock!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The LavaBlock Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The LavaBlock Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			VolcanoDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			VolcanoDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("LavaBlock's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+50
		Experience=Experience+30
		LavaBall=LavaBall+1
		LavaBlocksKilled=LavaBlocksKilled+1
		msgbox("You Found $50 and 1 Lava Ball!")
		Exit Do
	End If
	Loop
	Do While VolcanoDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While VolcanoDungeonPosition=9
	msgbox("You Found A LavaBlock! Watch Out!")
	EnemyHealth=100
	EnemyDamage=10
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The LavaBlock!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The LavaBlock Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The LavaBlock Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			VolcanoDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			VolcanoDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("LavaBlock's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+50
		Experience=Experience+30
		LavaBall=LavaBall+1
		LavaBlocksKilled=LavaBlocksKilled+1
		msgbox("You Found $50 and 1 Lava Ball!")
		Exit Do
	End If
	Loop
	Do While VolcanoDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
			msgbox("You Finished The Dungeon! Good Job!")
			msgbox("Your Rewards Are: 40 XP and $80")
			msgbox("Taking You Back To The Shop & Healing You...........")
			Experience=Experience+80
			Money=Money+160
			VolcanoDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			VolcanoDungeonPosition=0
			Exit Do
		end if
	loop
Loop

Do While CastleDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &CastleDungeonPosition)
	if Action="GO" then
		CastleDungeonPosition=CastleDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While CastleDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=3
	msgbox("You Found A Knight! Watch Out!")
	EnemyHealth=2650
	EnemyDamage=265
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Knight!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Knight Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Knight Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			CastleDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			CastleDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Knight's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+670
		Experience=Experience+810
		DeadKnightsArmour=DeadKnightsArmour+1
		KnightsKilled=KnightsKilled+1
		msgbox("You Found $670 and 1 Dead Knights Armour!")
		Exit Do
	End If
	Loop
	Do While CastleDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=6
	msgbox("You Found A Knight! Watch Out!")
	EnemyHealth=2650
	EnemyDamage=265
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Knight!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Knight Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Knight Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			CastleDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			CastleDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Knight's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+670
		Experience=Experience+810
		DeadKnightsArmour=DeadKnightsArmour+1
		KnightsKilled=KnightsKilled+1
		msgbox("You Found $670 and 1 Dead Knights Armour!")
		Exit Do
	End If
	Loop
	Do While CastleDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While CastleDungeonPosition=9
	msgbox("You Found A Knight! Watch Out!")
	EnemyHealth=2650
	EnemyDamage=265
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Knight!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Knight Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Knight Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died In The Easiest Level, Looser")
			CastleDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			CastleDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Knight's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+670
		Experience=Experience+810
		DeadKnightsArmour=DeadKnightsArmour+1
		KnightsKilled=KnightsKilled+1
		msgbox("You Found $670 and 1 Dead Knights Armour!")
		Exit Do
	End If
	Loop
	Do While CastleDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
			msgbox("You Finished The Dungeon! Good Job!")
			msgbox("Your Rewards Are: 640 XP and $1280")
			msgbox("Taking You Back To The Shop & Healing You...........")
			Experience=Experience+640
			Money=Money+1280
			CastleDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			CastleDungeonPosition=0
			Exit Do
		end if
	loop
Loop

Do While DesertDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &DesertDungeonPosition)
	if Action="GO" then
		DesertDungeonPosition=DesertDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While DesertDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=3
	msgbox("You Found A Slime! Watch Out!")
	EnemyHealth=290
	EnemyDamage=29
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Slime!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Slime Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Slime Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			DesertDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			DesertDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Slime's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+160
		Experience=Experience+90
		SlimeBall=SlimeBall+1
		SlimesKilled=SlimesKilled+1
		msgbox("You Found $160 and 1 Slime Ball!")
		Exit Do
	End If
	Loop
	Do While DesertDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=6
	msgbox("You Found A Slime! Watch Out!")
	EnemyHealth=290
	EnemyDamage=29
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Slime!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Slime Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Slime Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			DesertDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			DesertDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Slime's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+160
		Experience=Experience+90
		SlimeBall=SlimeBall+1
		SlimesKilled=SlimesKilled+1
		msgbox("You Found $160 and 1 Slime Ball!")
		Exit Do
	End If
	Loop
	Do While DesertDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While DesertDungeonPosition=9
	msgbox("You Found A Slime! Watch Out!")
	EnemyHealth=290
	EnemyDamage=29
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Slime!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Slime Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Slime Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			DesertDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			DesertDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Slime's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+160
		Experience=Experience+90
		SlimeBall=SlimeBall+1
		SlimesKilled=SlimesKilled+1
		msgbox("You Found $160 and 1 Slime Ball!")
		Exit Do
	End If
	Loop
	Do While DesertDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
			msgbox("You Finished The Dungeon! Good Job!")
			msgbox("Your Rewards Are: 160 XP and $320")
			msgbox("Taking You Back To The Shop & Healing You...........")
			Experience=Experience+160
			Money=Money+320
			DesertDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			DesertDungeonPosition=0
			Exit Do
		end if
	loop
Loop

Do While SeaDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &SeaDungeonPosition)
	if Action="GO" then
		SeaDungeonPosition=SeaDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While SeaDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=3
	msgbox("You Found A Whale! Watch Out!")
	EnemyHealth=880
	EnemyDamage=88
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Whale!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Whale Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Whale Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			SeaDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			SeaDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Whale's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+330
		Experience=Experience+270
		DarkFin=DarkFin+1
		WhalesKilled=WhalesKilled+1
		msgbox("You Found $330 and 1 Dark Fin!")
		Exit Do
	End If
	Loop
	Do While SeaDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=6
	msgbox("You Found A Whale! Watch Out!")
	EnemyHealth=880
	EnemyDamage=88
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Whale!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Whale Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Whale Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			SeaDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			SeaDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Whale's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+330
		Experience=Experience+270
		DarkFin=DarkFin+1
		WhalesKilled=WhalesKilled+1
		msgbox("You Found $330 and 1 Dark Fin!")
		Exit Do
	End If
	Loop
	Do While SeaDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While SeaDungeonPosition=9
	msgbox("You Found A Whale! Watch Out!")
	EnemyHealth=880
	EnemyDamage=88
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Whale!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Whale Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Whale Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			SeaDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			SeaDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Whale's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+330
		Experience=Experience+270
		DarkFin=DarkFin+1
		WhalesKilled=WhalesKilled+1
		msgbox("You Found $330 and 1 Dark Fin!")
		Exit Do
	End If
	Loop
	Do While SeaDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
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
			Exit Do
		end if
	loop
Loop

Do While BeachDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &BeachDungeonPosition)
	if Action="GO" then
		BeachDungeonPosition=BeachDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While BeachDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=3
	msgbox("You Found A Crab! Watch Out!")
	EnemyHealth=2800
	EnemyDamage=280
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Crab!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Crab Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Crab Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			BeachDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			BeachDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Crab's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+1350
		Experience=Experience+2430
		CrabHand=CrabHand+1
		CrabsKilled=CrabsKilled+1
		msgbox("You Found $1350 and 1 Crab Hand!")
		Exit Do
	End If
	Loop
	Do While BeachDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=6
	msgbox("You Found A Crab! Watch Out!")
	EnemyHealth=2800
	EnemyDamage=280
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Crab!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Crab Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Crab Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			BeachDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			BeachDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Crab's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+1350
		Experience=Experience+2430
		CrabHand=CrabHand+1
		CrabsKilled=CrabsKilled+1
		msgbox("You Found $1350 and 1 Crab Hand!")
		Exit Do
	End If
	Loop
	Do While BeachDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While BeachDungeonPosition=9
	msgbox("You Found A Crab! Watch Out!")
	EnemyHealth=2800
	EnemyDamage=280
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Crab!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Crab Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Crab Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			BeachDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			BeachDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Crab's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+1350
		Experience=Experience+2430
		CrabHand=CrabHand+1
		CrabsKilled=CrabsKilled+1
		msgbox("You Found $1350 and 1 Crab Hand!")
		Exit Do
	End If
	Loop
	Do While BeachDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
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
			Exit Do
		end if
	loop
Loop

Do While HutDungeon=1
	Action=inputbox("What Do You Want To Do? (1. Go On (GO) 2. Heal) (X/10)Position:" &HutDungeonPosition)
	if Action="GO" then
		HutDungeonPosition=HutDungeonPosition+1
	elseif Action="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	End If
	Do While HutDungeonPosition=1
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=2
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=3
	msgbox("You Found A Witch! Watch Out!")
	EnemyHealth=4500
	EnemyDamage=450
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Witch!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Witch Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Witch Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			HutDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			HutDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Witch's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+2710
		Experience=Experience+7290
		Wand=Wand+1
		WitchsKilled=WitchsKilled+1
		msgbox("You Found $2710 and 1 Wand!")
		Exit Do
	End If
	Loop
	Do While HutDungeonPosition=4
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=5
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=6
	msgbox("You Found A Witch! Watch Out!")
	EnemyHealth=4500
	EnemyDamage=450
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Witch!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Witch Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Witch Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			HutDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			HutDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Witch's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+2710
		Experience=Experience+7290
		Wand=Wand+1
		WitchsKilled=WitchsKilled+1
		msgbox("You Found $2710 and 1 Wand!")
		Exit Do
	End If
	Loop
	Do While HutDungeonPosition=7
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=8
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
		
		elseif Chance0>=2 And Chance0<=100 then
			msgbox("You Went On, Nothing Happened...")
			Exit Do
		end if
	loop
	Do While HutDungeonPosition=9
	msgbox("You Found A Witch! Watch Out!")
	EnemyHealth=4500
	EnemyDamage=450
	Combat=1
	Do While Combat=1
	Attack=inputbox("What do you want to do? 1. Fight 2. Heal")
	if Attack="Heal" then
		SelectPotion=inputbox("Which Potion Do You Want To Use?")
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
		elseif SelectionPotion="MPotion" then
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
		elseif SelectionPotion="BPotion" then
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
	elseif Attack="Fight" then
		EnemyHealth=EnemyHealth-Damage
		msgbox("You Dealed " &Damage)
		if EnemyHealth<=0 then
		msgbox("You Defeated The Witch!")
		msgbox("You Have: " &Life)
		Exit Do
		End If
		msgbox("The Witch Attacks Back!")
		EnemyDamage=EnemyDamage-DamageAvoided
		if EnemyDamage<=0 then
		EnemyDamage=1
		End If
		Life=Life-EnemyDamage
		msgbox("The Witch Dealed: " &EnemyDamage)
		if Life<=0 then
			msgbox("You Have Died")
			HutDungeon=0
			Shoping=1
			FinnishedDungeon=1
			Life=MaxLife
			HutDungeonPosition=0
			Exit Do
		elseif Life>=1 then
			msgbox("Witch's Health: " &EnemyHealth)
		End If
	End If
	loop
	Claim=inputbox("Do You Want To Leave Or Gather The Rewards First?")
	if Claim="Leave" then
		Exit Do
	elseif Claim="Gather" then
		Money=Money+2710
		Experience=Experience+7290
		Wand=Wand+1
		WitchsKilled=WitchsKilled+1
		msgbox("You Found $2710 and 1 Wand!")
		Exit Do
	End If
	Loop
	Do While HutDungeonPosition=10
		max=100
		min=1
		Chance0 = Round(max*Rnd)
		if Chance0>max then
			Chance0=max
		elseif Chance0<min then
			Chance0=min
		end if
		If Chance0>=1 then
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
			Exit Do
		end if
	loop
Loop

Do While LevelUpDungeon=1
	x=msgbox("Welcome To Where You Can Level Up, What Do You Want To Do?", ,"Level Up God")
	LevelUp=inputbox("Level Up, Leave")
	if LevelUp="Level Up" then
		if Level=1 then
			if Experience>=140 then
				MaxLife=120
				Life=MaxLife
				Level=2
				Experience=Experience-140
				msgbox("You Have Levelled Up To Level 2!")
			elseif Experience<=139 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			end if
		elseif Level=2 then
			if Experience>=300 then
				MaxLife=140
				Life=MaxLife
				Level=3
				Experience=Experience-300
				msgbox("You Have Levelled Up To Level 3!")
			elseif Experience<=299 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			end if
		elseif Level=3 then
			if Experience>=620 then
				MaxLife=160
				Life=MaxLife
				Level=4
				Experience=Experience-620
				msgbox("You Have Levelled Up To Level 4!")
			elseif Experience<=619 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			end if
		elseif Level=4 then
			if Experience>=1260 then
				MaxLife=180
				Life=MaxLife
				Level=5
				Experience=Experience-1260
				msgbox("You Have Levelled Up To Level 5!")
			elseif Experience<=1259 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			End If
		elseif Level=5 then
			if Experience>=2540 then
				MaxLife=200
				Life=MaxLife
				Level=6
				Experience=Experience-2540
				msgbox("You Have Levelled Up To Level 6!")
			elseif Experience<=2539 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			End If
		elseif Level=6 then
			if Experience>=5100 then
				MaxLife=220
				Life=MaxLife
				Level=7
				Experience=Experience-5100
				msgbox("You Have Levelled Up To Level 7!")
			elseif Experience<=5099 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			End If
		elseif Level=7 then
			if Experience>=10220 then
				MaxLife=240
				Life=MaxLife
				Level=8
				Experience=Experience-10220
				msgbox("You Have Levelled Up To Level 8!")
			elseif Experience<=10219 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			End If
		elseif Level=8 then
			if Experience>=20460 then
				MaxLife=260
				Life=MaxLife
				Level=9
				Experience=Experience-20460
				msgbox("You Have Levelled Up To Level 9!")
			elseif Experience<=20459 then
				msgbox("ERROR, You Are Not Experienced Enough!")
			End If
		elseif Level=9 then
			if Experience>=40940 then
				MaxLife=300
				Life=MaxLife
				Level=10
				Experience=Experience-40940
				msgbox("You Have Levelled Up To Level 10")
			elseif Experience<=40939 then
				msgbox("ERROR, You Are Not Experienced Enough!")
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