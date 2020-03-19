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
			Look()
		Update(src)
	Bump(mob/M)
		if(M.client)
			MonsterAttack(M)
	density = 1

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
			Exp = 8
			Level = 5
			Gold = 3
			ALIGN = "Neutral"
			MAXHP = 80
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
