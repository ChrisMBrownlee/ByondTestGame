//-----------------------------------------------------
					//ADMIN FILE//
//-----------------------------------------------------

var/list/God = list("Kiln")
var/list/Admin = list("ErebusAres", "Kiln")
var/list/Mod = list("iceededpple")

//-----------------------------------------------------
					//GOD VERBS//
//-----------------------------------------------------

mob/God/verb
	Announce()
		set category = "God"
		var/temp = input("What to announce?") as text
		world << "[src] Announces: [temp]"

//-----------------------------------------------------
					//ADMIN VERBS//
//-----------------------------------------------------

mob/Admin/verb
	Stab_Self()
		set category = "Admin"
		if (usr.HP <= 5)
			usr.HP -= 5
			Death(usr)
		else if (usr.HP <= 10)
			usr << "One More Time You Will Die!"
			usr.HP -= 5
		else
			usr << "You stab yourself for 5 damage"
			usr.HP -= 5

	Dispell_Mana()
		set category = "Admin"
		if (usr.MP <= 0)
			usr << "You have no more mana to dispell"
		else
			usr << "You release 5 mana"
			usr.MP -= 5

	Give_Gold(mob/usr/M in world)
		set category = "Admin"
		var/tempgold = input("How much gold to give?") as num
		M.Gold += tempgold
		M << "The Gods gift you [tempgold] Gold!"
		usr << "You gave [M] [tempgold] Gold."

	Take_Gold(mob/usr/M in world)
		set category = "Admin"
		var/tempgold = input("How much gold to take?") as num
		M.Gold -= tempgold
		M << "The Gods took [tempgold] Gold from you!"
		usr << "You took [tempgold] from [M]"
		if(M.Gold < 0)
			M.Gold = 0

	Regenerate(mob/usr/M in world)
		set category = "Admin"
		M << "A magical force restored you"
		usr << "You Regenerated [M]"
		M.HP = M.MAXHP
		M.MP = M.MAXMP

	Set_Level(mob/usr/M in world)
		set category = "Admin"
		var/templevel = input("What level shall we make them?") as num
		M << "The Gods granted you Level [templevel]!"
		usr << "You granted [M] Level [templevel]"
		M.Level = templevel

	Set_Stats(mob/usr/M in world)
		set category = "Admin"
		usr << "This does nothing right now, sorry..."

	Summon(mob/M in world)
		set category = "Admin"
		M.loc = src.loc
		M << "[src] has summoned you."
		src << "You have summoned [M]"

	Rename(mob/M as mob in world, ID as text)
		set category = "Admin"
		set desc = "Change a Mob's ID"
		M.name = ID

	Kill(mob/M in world)
		set category = "Admin"
		set desc = "Kill someone or something"
		M.HP -= M.MAXHP + 1000
		Death()
		src << "You killed [M]"

//-----------------------------------------------------
					//MOD VERBS//
//-----------------------------------------------------

mob/Mod/verb
	Kick(mob/M in world, reason as message|null)
		if(usr.client)
			set category = "Admin"
			set name = "Kick"
			set desc = "(mob, \[reason]) Kick A Dick"
			if(M == usr)
				usr << "Why are you trying to kick yourself...?"
				return
			if(M.key in God | Admin)
				usr << "You can't kick someone equal or higher than you"
				M << "[src] tried to kick you."
			return

		if(alert("Are you sure?","Kick [M]:","Yes","No") == "Yes")
		else
			usr << "You can't kick npcs..."