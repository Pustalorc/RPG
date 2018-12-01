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