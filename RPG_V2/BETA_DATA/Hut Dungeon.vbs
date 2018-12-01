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
