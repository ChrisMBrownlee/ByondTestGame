var
	maleshow = new/obj/male
	femaleshow = new/obj/female

obj
	male
		icon = 'Misc.dmi'
		icon_state = "Male"
	female
		icon = 'Misc.dmi'
		icon_state = "Female"

mob/usr/Stat()
	statpanel("Status")
	usr.Gold = round(usr.Gold)
	if(usr.client.statpanel == "Status")
		stat(usr)
		stat("Level:", "[usr.Level]")
		stat("HP:", "[usr.HP]/[usr.MAXHP]")
		stat("SP:", "[usr.SP]/[usr.MAXSP]")
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