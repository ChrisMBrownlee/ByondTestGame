atom/movable
	var
		respawn = 200
		turf/startloc

	New(loc)
		..(loc) // default new stuff
		startloc = loc // store the starting loc for use later

	Del()
		if(startloc) Remake(src.type, src.startloc, src.respawn)
		..() // default del stuff

proc/Remake(atom_type, loc, delay)
	if(loc) // if we know where it started
		if(delay != -1) spawn(delay) new atom_type(loc)