Life = 4
Damage = 0
CurrentEnemy = "Minion"
EnemyHealth=30
EnemyDamage=3
Function Fight
msgbox("You Found A " &CurrentEnemy + "! Watch Out!")
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
					msgbox("You Defeated The " &CurrentEnemy + "!")
					msgbox("You Have: " &Life)
					KilledEnemy=1
					Combat=0
					Exit Do
				End If
			msgbox("The " &CurrentEnemy + " Attacks Back!")
			EnemyDamage=EnemyDamage-DamageAvoided
				if EnemyDamage<=0 then
					EnemyDamage=1
				End If
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
					Exit Do
				elseif Life>=1 then
					msgbox("Your Health: " &Life)
					msgbox("" &CurrentEnemy + "'s Health: " &EnemyHealth)
				End If
		End If
loop
End Function

Fight