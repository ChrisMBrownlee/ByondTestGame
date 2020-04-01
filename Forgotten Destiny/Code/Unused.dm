atom
	moveable
		proc
			StepOn(atom/moveable/A)
				if(A == src) return 1
				else return !(density & A.density)
			StepOff(atom/moveable/A)
				return 1
			SteppedOn(atom/moveable/A)
			SteppedOff(atom/moveable/A)

turf
	Enter(atom/moveable/A)
		if((density | loc.density) & A.density) return 0
		else
			for(var/atom/moveable/M in src)
				if(M != A)
					if(!M.StepOn(A))
						return 0
			return 1
	Exit(atom/moveable/A)
		for(var/atom/moveable/M in src)
			if(M != A)
				if(!M.StepOff(A))
					return 0
		return 1
	Entered(atom/moveable/A)
		..()
		for(var/atom/moveable/M in src)
			if(M != A)
				M.SteppedOn(A)
	Exited(atom/moveable/A)
		..()
		for(var/atom/moveable/M in src)
			if(M != A)
				M.SteppedOff(A)

mob/StepOn(var/mob/M)
	if(ismob(M))
		if(src.client && M.client)
			return 1
	return ..()