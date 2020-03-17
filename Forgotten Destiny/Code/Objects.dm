//-----------------------------------------------------
					//OBJECTS FILE//
//-----------------------------------------------------

obj

//-----------------------------------------------------
					//OBJ VERBS//
//-----------------------------------------------------
	verb
		Get()
			set src in oview(1)
			usr.contents += src
			view() << "[usr] picks up \a [src]."

		Drop()
			set src in usr
			loc = usr.loc
			view() << "[usr] dropped \a [src]."
			del(src)

		Equip()
			if(usr.weapon_equipped == 0)
				usr.Power += src.powmod
				usr.weapon_equipped = 1
				usr << "You equip [src.name]."
			else
				usr << "Unequip your [src.name] first"

		Unequip()
			if(usr.weapon_equipped == 1)
				usr.Power -= src.powmod
				usr.weapon_equipped = 0
				usr << "You unequipped [src.name]."
			else
				usr << "You're not weilding anything."
//-----------------------------------------------------
					//GENDER OBJ//
//-----------------------------------------------------

obj/Misc
	Male
		icon = 'Misc.dmi'
		icon_state = "Male"
	Female
		icon = 'Misc.dmi'
		icon_state = "Female"

//-----------------------------------------------------
					//WEAPON OBJ//
//-----------------------------------------------------

obj/Swords
	ExplorerSword
		name = "Explorer Sword"
		icon = 'Warrior Weapons.dmi'
		icon_state = "explorer"
		value = 1
		powmod = 1

obj/Daggers
	TestDagger
		name="Admin Dagger"
		icon 'Rogue Weapons.dmi'
		icon_state = "TestDagger"
		value = 0
		powmod = 999