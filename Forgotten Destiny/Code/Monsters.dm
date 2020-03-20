//-----------------------------------------------------
					//FILE RULES//
//-----------------------------------------------------
/*
	1) Try to keep the monsters in Alphabetical Order
	2) Try to remove excess TABs
*/
//-----------------------------------------------------
					//MONSTERS FILE//
//-----------------------------------------------------

mob/NPC/Monster
	New()
		.=..()
		spawn(1)
			if(ALIGN == "NA")
				..()
			else
				Look()
		Update(src)
	Bump(mob/M)
		if(M.client)
			MonsterAttack(M)
	density = 1

//-----------------------------------------------------
					//TRAINING//
//-----------------------------------------------------

	TrainingDummy

//-----------------------------------------------------
				//Training Dummy West//
//-----------------------------------------------------
		DummyW
			name = "Training Dummy"
			icon = 'Monsters.dmi'
			icon_state = "DummyW"
			HP = 100000000
			MAXHP = 100000000
			Power = 0
			Guard = 0
			Evasion = -100
			Exp = 0
			Level = 0
			Gold = 0
			ALIGN = "NA"
			DropCorpse = 0
			ATKSPD = 0
			MOVSPD = 0
			CA = 1

//-----------------------------------------------------
				//Training Dummy East//
//-----------------------------------------------------
		DummyE
			name = "Training Dummy"
			icon = 'Monsters.dmi'
			icon_state = "DummyE"
			HP = 100000000
			MAXHP = 100000000
			Power = 0
			Guard = 0
			Evasion = -100
			Exp = 0
			Level = 0
			Gold = 0
			ALIGN = "NA"
			DropCorpse = 0
			ATKSPD = 0
			MOVSPD = 0
			CA = 1


//-----------------------------------------------------
					//SLIMES//
//-----------------------------------------------------

	Slime

//-----------------------------------------------------
				//BLUE SLIME//
//-----------------------------------------------------
		BlueSlime
			name = "Blue Slime"
			icon = 'Monsters.dmi'
			icon_state = "BlueSlime"
			HP = 80
			MAXHP = 80
			Power = 3
			Guard = 13
			Evasion = 0
			Exp = 8
			Level = 5
			Gold = 3
			ALIGN = "Neutral"
			DropCorpse = 0
			ATKSPD = 10
			MOVSPD = 20
			CA = 1

//-----------------------------------------------------
					//RED SLIME//
//-----------------------------------------------------
		RedSlime
			name = "Red Slime"
			icon = 'Monsters.dmi'
			icon_state = "RedSlime"
			HP = 80
			MAXHP = 80
			Power = 3
			Guard = 13
			Evasion = 0
			Exp = 8
			Level= 5
			Gold = 3
			ALIGN = "Neutral"
			DropCorpse = 0
			ATKSPD = 10
			MOVSPD = 20
			CA = 1

//-----------------------------------------------------
					//Green SLIME//
//-----------------------------------------------------
		GreenSlime
			name = "Green Slime"
			icon = 'Monsters.dmi'
			icon_state = "GreenSlime"
			HP = 80
			MAXHP = 80
			Power = 25
			Guard = 13
			Evasion = 0
			Exp = 8
			Level= 7
			Gold = 10
			ALIGN = "Neutral"
			DropCorpse = 0
			ATKSPD = 5
			MOVSPD = 10
			CA = 1

//-----------------------------------------------------
					//NEW MONSTER//
//-----------------------------------------------------
