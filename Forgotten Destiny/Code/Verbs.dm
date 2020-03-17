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
			var/damage = rand(usr.Power - 3, usr.Power + 3)
			var/hit = rand(1, 100)
			M.killlist += "[usr.name]"
			if(hit <= 50)
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
					//PROC VERBS//
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

mob/proc/Death(mob/M)
	view() << "[M] has died"
	if(M.client)
		M.loc = locate(/turf/Start) // Set Location to Spawn
		M.HP = usr.MAXHP // Reset HP to Max
		M.MP = usr.MAXMP // Reset MP to Max
		ExpLoss(M)
	else
		GetExp(M, src)
		GetGold(M, src)
		del(M)

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
	Player.CON += (5)
	Player.INT += (5)
	Player.CHA += (5)
	Player.DEX += (5)
	Player.FTH += (5)
	Player.LUK += (5)
	//THEN FORMULATE FOR MISC STATS
	Player.Power += (5)
	Player.MAXHP += (5 + Player.CON)
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
					//TEST VERBS//
//-----------------------------------------------------

mob/verb/Meditate()
	usr << "You start meditating"
	while(usr.HP != usr.MAXHP || usr.MP != usr.MAXMP)
		if(usr.HP != usr.MAXHP)
			if(usr.HP > usr.MAXHP)
				usr.HP = usr.MAXHP
			else
				usr << "You restore [usr.CON] HP"
				usr.HP += usr.CON
		if(usr.MP != usr.MAXMP)
			if(usr.MP > usr.MAXMP)
				usr.MP = usr.MAXMP
			else
				usr << "You restore [usr.INT] MP"
				usr.MP += usr.INT
		sleep(15)
	usr << "You stop meditating"

proc/AddWeapon(mob/M, obj/S)
	var/temp = S.icon
	world << "[temp]"
	M.underlays += image("[S.icon]", icon_state = "[S.overlay]", layer = S.layer)

mob/verb/ExpLossTest()
	ExpLoss(M)
	
mob/proc/ExpLoss(mob/Player)
	var/BExpLoss = 5%
	var/ExpLossPrev = 0%
	var/MExpLoss = (BExpLoss * (1 - ExpLossPrev / 100))
	world << "[MExpLoss] Exp Lost"