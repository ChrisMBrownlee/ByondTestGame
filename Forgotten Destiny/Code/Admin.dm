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
	StabSelf()
		if (usr.HP <= 5)
			usr.HP -= 5
			Death(usr)
		else if (usr.HP <= 10)
			usr << "One More Time You Will Die!"
			usr.HP -= 5 
		else
			usr << "You stab yourself for 5 damage"
			usr.HP -= 5

	DispellMana()
		if (usr.MP <= 0)
			usr << "You have no more mana to dispell"
		else
			usr << "You release 5 mana"
			usr.MP -= 5

	GiveGold(M as mob in view(6))
		var/tempgold = input("How much gold to give?") as num
		//M.Gold += tempgold
		M << "The Gods gift you [tempgold] Gold!"

	Regenerate(M as mob in view(6))
		M << "A magical force restored you"
		src << "You Regenerated [M]"
		//M.HP = M.MAXHP
		//M.MP = M.MAXMP

//-----------------------------------------------------
					//MOD VERBS//
//-----------------------------------------------------

mob/Moderator/verb