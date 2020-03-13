//-----------------------------------------------------
					//VERBS FILE//
//-----------------------------------------------------
/*
	Notes:
*/
//-----------------------------------------------------
					//VERB VARS//
//-----------------------------------------------------

mob/var
		ServerTalkOn=1

//client/New()
//	if(key in Admin)
//		usr = new/mob/DM()
//		usr.name = key
//		usr.key = key
//	return ..()

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
	if(usr.attacking == 0)
		var/obj/K = new/obj/ExplorerSword
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
		M.loc = locate(/turf/Start)
		M.HP = usr.MAXHP
	else
		del(M)

//-----------------------------------------------------
					//UPDATE VERBS//
//-----------------------------------------------------

mob/proc/Update()
	return

//-----------------------------------------------------
					//TEST VERBS//
//-----------------------------------------------------


mob/verb/CheckExpVals()
	world << "Test: [explist[0]], [explist[1]], [explist[2]]"
