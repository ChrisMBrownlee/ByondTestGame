//-----------------------------------------------------
					//ADMIN FILE//
//-----------------------------------------------------

var/list/God = list("Kiln")
var/list/Admin = list("ErebusAres", "Kiln")
var/list/Mod = list()

//-----------------------------------------------------
					//ADMIN VERBS//
//-----------------------------------------------------
mob/God/verb
	Announce()
		var/temp = input("What to announce?") as text
		world << "[src] Announces: [temp]"

mob/Admin/verb
	StabSelf()
		usr << "You stab yourself for 5 damage"
		usr.HP -= 5

	DispellMana()
		usr << "You release 5 mana"
		usr.MP -= 5

	GiveGold()
		var/tempgold = input("How much gold to give?") as num
		usr.Gold += tempgold
		usr << "The Gods gift you [tempgold] Gold!"

	Regenerate(M as mob in view(6))
		M << "A magical force restored you"
		//M.HP = M.MAXHP
		//M.MP = M.MAXMP