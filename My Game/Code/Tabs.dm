//-----------------------------------------------------
					//TAB FILE//
//-----------------------------------------------------

//-----------------------------------------------------
					//CALL STAT//
//-----------------------------------------------------

mob/usr/Stat()

//-----------------------------------------------------
					//STATUS TAB//
//-----------------------------------------------------

	statpanel("Status")
	usr.Gold = round(usr.Gold)
	if(usr.client.statpanel == "Status")
		stat(usr)
		stat("Level:", "[usr.Level]")
		stat("Class:", "[usr.Class]")
		stat("Health:", "[usr.HP]/[usr.MAXHP]")
		stat("Mana:", "[usr.MP]/[usr.MAXMP]")
		if(Gender == "Male")
			stat("Gender:", "\icon[maleshow]")
		else
			stat("Gender:", "\icon[femaleshow]")
		if(usr.AddedPower == 0)
			stat("Power:", "[usr.Power]")
		else
			stat("Power:", "[usr.Power]([usr.AddedPower])")
		if(usr.AddedGuard == 0)
			stat("Guard:", "[usr.Guard]")
		else
			stat("Guard:", "[usr.Guard]([usr.AddedGuard])")
		stat("Experience:", "[usr.Exp]/[usr.ExpMax]")

//-----------------------------------------------------
					//STATS TAB//
//-----------------------------------------------------

	statpanel("Stats")
	if(usr.client.statpanel == "Stats")
		stat("Level:", "[usr.Level]")
		stat("Class:", "[usr.Class]")
		stat("Health:", "[usr.HP]/[usr.MAXHP]")
		stat("Mana:", "[usr.MP]/[usr.MAXMP]")
		stat("")
		stat("-----===== Ability Stats =====-----")
		if(usr.RemainingAP == 0)
			stat("Str:","[usr.STR]")
			stat("Dex:","[usr.DEX]")
			stat("Con:","[usr.CON]")
			stat("Int:","[usr.INT]")
			stat("Cha:","[usr.CHA]")
			stat("Luk:","[usr.LUK]")
			stat("Fth:","[usr.FTH]")
		else
			if(usr.TMPSTR > 0)
				stat("Strength:","[usr.STR] (+ [usr.TMPSTR])")
			else
				stat("Strength:","[usr.STR]")
			//show plus/minus

//-----------------------------------------------------
					//NEW TAB//
//-----------------------------------------------------
	statpanel("Exp Stuff")
	if(usr.client.statpanel == "Exp Stuff")
		stat("Required EXP Lv 1:", "[explist.[1]]")
		stat("Required EXP Lv 2:", "[explist.[2]]")
		stat("Required EXP Lv 3:", "[explist.[3]]")
		stat("Required EXP Lv 4:", "[explist.[4]]")
		stat("Required EXP Lv 5:", "[explist.[5]]")