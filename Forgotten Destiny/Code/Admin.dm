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
		var/temp = input("What to announce?") as text
		world << "[src] Announces: [temp]"

//-----------------------------------------------------
					//ADMIN VERBS//
//-----------------------------------------------------

mob/Admin/verb
	Stab_Self()
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
		if (usr.MP <= 0)
			usr << "You have no more mana to dispell"
		else
			usr << "You release 5 mana"
			usr.MP -= 5

	Give_Gold(mob/usr/M in world)
		var/tempgold = input("How much gold to give?") as num
		M.Gold += tempgold
		M << "The Gods gift you [tempgold] Gold!"
		usr << "You gave [M] [tempgold] Gold."

	Take_Gold(mob/usr/M in world)
		var/tempgold = input("How much gold to take?") as num
		M.Gold -= tempgold
		M << "The Gods took [tempgold] Gold from you!"
		usr << "You took [tempgold] from [M]"
		if(M.Gold < 0)
			M.Gold = 0

	Regenerate(mob/usr/M in world)
		M << "A magical force restored you"
		usr << "You Regenerated [M]"
		M.HP = M.MAXHP
		M.MP = M.MAXMP

	Set_Level(mob/usr/M in world)
		var/templevel = input("What level shall we make them?") as num
		M << "The Gods granted you Level [templevel]!"
		usr << "You granted [M] Level [templevel]"
		M.Level = templevel

	Set_Stats(mob/usr/M in world)
		usr << "This does nothing right now, sorry..."

//-----------------------------------------------------
					//MOD VERBS//
//-----------------------------------------------------

//mob/Moderator/verb