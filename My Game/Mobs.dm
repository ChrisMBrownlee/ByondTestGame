/* MOB INFO */
//BY DEFAULT MOBS HAVE STEP SIZE OF 8


//PLAYER(S):
mob/Player
	var hp = 30
//SET ICON FOR PLAYER
	icon = 'Player.dmi'
//ON LOGIN
	Login()
		world << "[src] has joined the world."
		src.loc = locate(/turf/start)
		..()
	Logout()
		world << "[src] has left the world."
//PLAYER VERBS
	verb
		Smile()
			world << "[usr] smiles."
		Laugh()
			world << "[usr] laughs."
		Cry()
			world << "[usr] cries \his heart out."
		Say(msg as text)
			world << "[usr] says, [msg]"
//MOVEMENT SPEED
	step_size = 8

//mob/aggroslime
//	icon = 'aggroslime.dmi'
//	icon_state = 'madboi'

mob/aggroslime
	icon = 'aggroslime.dmi'

