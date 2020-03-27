//-----------------------------------------------------
					//VERBS FILE//
//-----------------------------------------------------
/*
	Notes:
*/
//-----------------------------------------------------
					//CLIENT//
//-----------------------------------------------------

client/New()
	if(key in God)
		src.verbs += typesof(/mob/God/verb)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/Mod/verb)
//		usr = new/mob/usr()
//		usr = new/mob/Admin()
//		usr = new/mob/God()
//		usr.name = key
//		usr.key = key
	if(key in Admin)
		src.verbs += typesof(/mob/Admin/verb)
		src.verbs += typesof(/mob/Mod/verb)
//		usr = new/mob/usr()
//		usr = new/mob/Admin()
//		usr.name = key
//		usr.key = key
	if(key in Mod)
		src.verbs += typesof(/mob/Mod/verb)
	return ..()

//-----------------------------------------------------
					//PASSIVE VERBS//
//-----------------------------------------------------

mob/verb
	Smile()
		view() << "[usr] smiles."

	Laugh()
		view() << "[usr] laughs."

	Cry()
		view() << "[usr] cries \his heart out."

	Say(msg as text)
		view() << "[usr]: [msg]"

	Poke(M as mob in view(1))
		view() << "[usr] pokes [M]"

	Whisper(M as mob, msg as text)
		M << "[usr] whispers to you, '[msg]'"
		src << "You whisper to [M], '[msg]'"

	World_Say(msg as text)
		world << "[usr] shouts: '[msg]'"

//-----------------------------------------------------
					//ATTACK VERBS//
//-----------------------------------------------------

mob/verb/Attack()
	var/obj/K = new/obj
	K.dir = src.dir
	K.loc = src.loc
	step(K, dir)
	var/turf/X = K.loc
	for(var/mob/M as mob in X)
		if(M.CA == 1)
			DoAttack()

mob/proc/DoAttack()
	if(usr.attacking == 0)
		var/obj/K = new/obj/Swords/ExplorerSword
		src.attacking = 1
		K.dir = src.dir
		K.loc = src.loc
		step(K, dir)
		var/turf/X = K.loc
		for(var/mob/M as mob in X)
			if(M == src)
				continue
			var/damage = rand(usr.Power - 5, usr.Power + 5)
			var/hit = Accuracy(M)
			M.killlist += "[usr.name]"
			if(hit == "true")
				src << "You attack [M] for [damage] damage!"
				M << "[src] attacks you for [damage] damage!"
				M.HP -= damage
				if(M.HP <= 0)
					Death(M)
			else
				src << "[M] dodged your attack!"
				M << "You dodged [src] attack!"
		sleep(usr.ATKSPD)
		src.attacking = 0
		del(K)

//-----------------------------------------------------
					//ACCURACY VERBS//
//-----------------------------------------------------

mob/proc/Accuracy(mob/M)
	var/AccFormula = ((0.8 * src.DEX) + (0.5 * src.LUK) + (src.EquipAcc) + (M.Evasion * -1))
	var/LevelDiff = M.Level - usr.Level
	var/MissRate

	if (LevelDiff > 20)
		MissRate = 100
	else if (LevelDiff > 15 && LevelDiff <= 20)
		MissRate = 98
	else if (LevelDiff > 10 && LevelDiff <= 15)
		MissRate = 96
	else if (LevelDiff > 5 && LevelDiff <= 10)
		MissRate = 94
	else if (LevelDiff <= 5)
		MissRate = 100 - AccFormula

	if (rand(1,100) <= MissRate)
		return "false"
	else
		return "true"

//-----------------------------------------------------
					//LOOK VERBS//
//-----------------------------------------------------

mob/proc/Look()
	var/mob/usr/Player
	while(src)
		if(Player in oview(6))
			if(src.ALIGN == "Evil")
				walk_to(src, Player, 1, 4)
				if(Player in oview(1))
					step_towards(src, Player)
				else
					step_rand(src)
					break
			else
				if(Player.name in src.killlist)
					walk_to(src, Player, 1, 4)
					if(Player in oview(1))
						step_towards(src, Player)
				else
					step_rand(src)
					sleep(src.MOVSPD)
					break
		else
			for(Player in view(src))
				break
		sleep(5)
	spawn(2)
		Look()

//-----------------------------------------------------
					//MONSTER ATTACK VERBS//
//-----------------------------------------------------

mob/proc/MonsterAttack(mob/M)
	var/dodamage = rand(1, src.Power)
	var/hit = rand(1, 100)
	if(hit <= 50)
		M.HP -= dodamage
		M << "[src] hit you for [dodamage] damage!"
	else
		M << "You dodged [src]'s attack!"
	if(M.HP <= 0)
		Death(M)

//-----------------------------------------------------
					//DEATH VERBS//
//-----------------------------------------------------

//TODO: MAKE DEATH VERB BETTER
mob/proc/Death(mob/M)
	view() << "[M] has died"
	if(M.client)
		M.loc = locate(/turf/Start) // Set Location to Spawn
		M.HP = usr.MAXHP // Reset HP to Max
		M.MP = usr.MAXMP // Reset MP to Max
		ExpLoss(M) // ExpLoss Call
	else
		GetExp(M, src)
		GetGold(M, src)
		del(M)

//-----------------------------------------------------
					//EXPLOSS VERBS//
//-----------------------------------------------------

mob/proc/ExpLoss(mob/M)
	var/BaseLoss = 0.10 * explist[M.Level] // 10% of Level's Max Exp
	var/ReduceLoss = 0.00 // % of Reduction Value
	var/MaxExpLoss = (BaseLoss * (1 - ReduceLoss / 100)) // 10% * ( 1 - ReductionValue / 100 )
	usr << "[MaxExpLoss] Exp Lost" // Tell User Amount of EXP lost
	M.Exp -= MaxExpLoss // Set Current EXP to - MaxExpLoss
	if ( M.Exp < 0 )	// If Current EXP is Less Than 0
		M.Exp = 0 	// Set Current EXP to 0

//-----------------------------------------------------
					//UPDATE VERBS//
//-----------------------------------------------------

mob/proc/Update()
	return

//-----------------------------------------------------
					//EXP VERBS//
//-----------------------------------------------------

mob/proc/GetExp(mob/M, mob/Player)
	Player.Exp += M.Exp
	usr << "You gain [M.Exp] by sleighing [M]"
	while(Player.Exp > explist[Player.Level])
		Player.Exp = (Player.Exp - explist[Player.Level])
		LevelUp(Player)

//-----------------------------------------------------
					//LEVEL UP VERBS//
//-----------------------------------------------------

mob/proc/LevelUp(mob/Player)
	//BUMP PLAYER LEVEL + 1
	Player.Level += 1

	//BUMP STATS UP
	BumpStats(Player)

	//SET CURRENT HP TO MAXHP
	Player.HP = Player.MAXHP

	//SET CURRENT MP TO MAXMP
	Player.MP = Player.MAXMP

mob/proc/BumpStats(mob/Player)
//TODO: Make formula for stat gains
	//BUMP STATS FIRST
	Player.STR += (5)
	Player.INT += (5)
	Player.DEX += (5)
	Player.LUK += (5)
	//THEN FORMULATE FOR MISC STATS
	Player.Power += (5)
	Player.MAXHP += (5 + Player.STR)
	Player.MAXMP += (5 + Player.INT)
	view() << "[Player] Leveled Up!"
	//TODO: PLAY LEVEL UP DING

//-----------------------------------------------------
					//GOLD VERBS//
//-----------------------------------------------------

mob/proc/GetGold(mob/M, mob/Player)
	Player.Gold += M.Gold //Give Player Gold
	usr << "[M] dropped [M.Gold] Gold!"

//-----------------------------------------------------
					//DODGE VERBS//
//-----------------------------------------------------

mob/proc/Dodge(mob/M)
	var/dodge = (sqrt(usr.DEX + 2 * usr.LUK) - sqrt( M.Accuracy ) - 2 * (M.Level - usr.Level)) * (1 + usr.Evasion / 100)

	if (dodge > (0.90))
		var/tmp/max = 0.90
		return max
	else
		return dodge

//-----------------------------------------------------
					//LOAD/LOGIN VERBS//
//-----------------------------------------------------

mob/proc/LoginPlayer()
	if(key in God)
		world << "The Deity, [src], has blessed you with their presence."
	else if(key in Admin)
		world << "The Admin, [src], has blessed you with their presence."
	else
		world << "[src] has joined the world."
	if(fexists("PlayerData/[ckey].txt"))
		//DO PLAYER LOAD
		var/savefile/F = new("PlayerData/[ckey].txt")
		usr << "Welcome back, [usr.name], enjoy your adventure!"
		F["level"] >> usr.Level
		F["hp"] >> usr.HP
		F["maxhp"] >> usr.MAXHP
		F["mp"] >> usr.MP
		F["maxmp"] >> usr.MAXMP
		F["exp"] >> usr.Exp
		F["gold"] >> usr.Gold
		F["saved_x"] >> usr.x
		F["saved_y"] >> usr.y
		F["saved_z"] >> usr.z
		F["inv_list"] >> usr.contents
		F["gender"] >> usr.Gender
		//UPDATE PLAYER IMAGE AFTER LOADING
		UpdatePlayerIMG()
	else
		//MAKE NEW PLAYER
		usr << "Welcome, [usr.name], enjoy your new adventure!"
		src.loc = locate(/turf/Start)
		//CHANGE THIS FOR PLAYER SETUP
		UpdatePlayerIMG()
	..()

//-----------------------------------------------------
					//SAVE/LOGOUT VERBS//
//-----------------------------------------------------
mob/proc/LogoutPlayer()
	var/savefile/F = new("PlayerData/[ckey].txt")
	F["level"] << usr.Level
	F["hp"] << usr.HP
	F["maxhp"] << usr.MAXHP
	F["mp"] << usr.MP
	F["maxmp"] << usr.MAXMP
	F["exp"] << usr.Exp
	F["gold"] << usr.Gold
	F["saved_x"] << usr.x
	F["saved_y"] << usr.y
	F["saved_z"] << usr.z
	F["inv_list"] << usr.contents
	F["gender"] << usr.Gender

//-----------------------------------------------------
					//UPDATE PLAYER IMG VERBS//
//-----------------------------------------------------

mob/proc/UpdatePlayerIMG()
	if(usr.Gender == "Male")
		usr.overlays += image('Player.dmi', icon_state = "Male", layer = 2.1)
	else
		usr.overlays += image('Player.dmi', icon_state = "Female", layer = 2.1)
	return

//-----------------------------------------------------
					//TEST VERBS//
//-----------------------------------------------------

//TODO: FIX WHEN PLAYER MOVES STOP MEDITATING
mob/verb/Meditate()
	usr << "You start meditating"
	while(usr.HP != usr.MAXHP || usr.MP != usr.MAXMP)
		if(usr.HP != usr.MAXHP)
			if(usr.HP > usr.MAXHP)
				usr.HP = usr.MAXHP
			else
				usr << "You restore [usr.STR] HP"
				usr.HP += usr.STR
		if(usr.MP != usr.MAXMP)
			if(usr.MP > usr.MAXMP)
				usr.MP = usr.MAXMP
			else
				usr << "You restore [usr.INT] MP"
				usr.MP += usr.INT
		sleep(15)
	usr << "You stop meditating"

proc/AddWeapon(mob/M, obj/S)
	M.underlays += image(S.icon , icon_state = "[S.overlay]", layer = S.layer)