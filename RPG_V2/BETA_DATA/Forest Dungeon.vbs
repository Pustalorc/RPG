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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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
							KilledEnemy=1
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
							Money=Money-10
								If Money<=-1 then
									msgbox("Game Over! You Lost!")
									wscript.quit
								End If
							Exit Do
						elseif Life>=1 then
							msgbox("Your Health: " &Life)
							msgbox("Minion's Health: " &EnemyHealth)
						End If
				End If
		loop
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
					Exit Do
				End If
		Loop
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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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
						KilledEnemy=1
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
						msgbox("Your Health: " &Life)
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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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
			msgbox("In The Chest You Found:")
			Money=Money+50
			Keys=Keys+5
			msgbox("$50! And 5 Keys!")
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