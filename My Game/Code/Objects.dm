//-----------------------------------------------------
					//OBJECTS FILE//
//-----------------------------------------------------

obj

//-----------------------------------------------------
					//OBJ VERBS//
//-----------------------------------------------------
	verb
		Get()
			set src in usr.loc
			loc = usr
		Drop()
			set src in usr
			loc = usr.loc

//-----------------------------------------------------
					//GENDER OBJ//
//-----------------------------------------------------

obj
	male
		icon = 'Misc.dmi'
		icon_state = "Male"
	female
		icon = 'Misc.dmi'
		icon_state = "Female"

//-----------------------------------------------------
					//WEAPON OBJ//
//-----------------------------------------------------

	ExplorerSword
		name = "Explorer Sword"
		icon = 'Warrior Weapons.dmi'
		icon_state = "explorer"
		value = 1