//-----------------------------------------------------
					//MOB INFO//
//-----------------------------------------------------

mob/usr

//-----------------------------------------------------
					//ICON INFO//
//-----------------------------------------------------

	icon = 'Player.dmi'
//	winset(client, "default", "title = \"Forgotten Destiny\"")

//-----------------------------------------------------
					//LOG IN//
//-----------------------------------------------------

	Login()
		LoginPlayer()
		..()

//-----------------------------------------------------
					//LOG OUT//
//-----------------------------------------------------

	Logout()
		world << "[src] has left the world."
		LogoutPlayer()
		del(src)
		..()

//-----------------------------------------------------
					//USER BUMP//
//-----------------------------------------------------

	Bump(mob/M)
		if(M.CA == 1)
			Attack()
		else if(M.client)
			usr.loc = M.loc