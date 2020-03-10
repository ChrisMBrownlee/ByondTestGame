//-----------------------------------------------------
					//MOB INFO//
//-----------------------------------------------------

mob/usr

//-----------------------------------------------------
					//ICON INFO//
//-----------------------------------------------------

	icon = 'Player.dmi'

//-----------------------------------------------------
					//LOG IN//
//-----------------------------------------------------

	Login()
		if(key in God)
			world << "The Deity, [src], has blessed you with their presence."
			src.loc = locate(/turf/Start)
		else if(key in Admin)
			world << "The Admin, [src], has blessed you with their presence."
			src.loc = locate(/turf/Start)
		world << "[src] has joined the world."
		src.loc = locate(/turf/Start)
		..()

//-----------------------------------------------------
					//LOG OUT//
//-----------------------------------------------------

	Logout()
		world << "[src] has left the world."
		del(src)
		..()

//-----------------------------------------------------
					//USER BUMP//
//-----------------------------------------------------

	Bump(mob/M)
		if(M.CA == 1)
			Attack()

//-----------------------------------------------------
					//STATS//
//-----------------------------------------------------

	HP = 30
	step_size = 10
	attacking = 0