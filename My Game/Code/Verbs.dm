//-----------------------------------------------------
					//VERBS FILE//
//-----------------------------------------------------

mob

//-----------------------------------------------------
					//VERB VARS//
//-----------------------------------------------------
	var
		ServerTalkOn=1

//-----------------------------------------------------
					//PLAYER VERBS//
//-----------------------------------------------------

	verb
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
					//TEST VERBS//
//-----------------------------------------------------

	verb

