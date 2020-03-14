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
		stat("Experience:", "[usr.Exp]/[explist[usr.Level]]")
		stat("Gold:", "[usr.Gold]")

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
					//INVENTORY TAB//
//-----------------------------------------------------

	statpanel("Inventory")
	if(usr.client.statpanel == "Inventory")
		stat(src.contents)

//-----------------------------------------------------
					//EQUIPMENT TAB//
//-----------------------------------------------------

	statpanel("Equipment")
	if(usr.client.statpanel == "Equipment")
		stat("Empty")

//-----------------------------------------------------
					//ADMIN COMMANDS TAB//
//-----------------------------------------------------



//-----------------------------------------------------
					//GOD COMMANDS TAB//
//-----------------------------------------------------

mob/God/Stat()
	statpanel("God Commands")
	if(usr.client.statpanel == "God Commands")
		stat(typesof(/mob/God/verb))