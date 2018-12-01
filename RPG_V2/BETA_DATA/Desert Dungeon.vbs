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