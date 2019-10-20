/*
	These are simple defaults for your project.
	First ever project
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 8		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

// Mob stuff

mob
	step_size = 8
	verb
		say(msg as text)
			world << "[usr] says, [msg]"
	icon = 'player.dmi'
	Login()
		loc = locate(/turf/start)
		..()

mob/DM
	key = "Tisx"
	verb
		intangible()
			density = 0
	verb
		tangible()
			density = 1

mob/verb/make_potato()
	set src in view()
	name = "potato"
	desc = "mmm where's muh butter"
	icon = 'potato.dmi'

mob/verb/set_name(N as text)
	set desc = "(\"new name\") Change your name"
	name = N

mob/verb/set_icon(i as icon)
	set name = "set icon"
	icon = i

mob/verb/play(snd as sound)
	view() << snd

mob/verb/said(ms as text)
	view() << "[usr] says, '[ms]'"

// Object stuff

obj
	step_size = 8

obj/torch
	icon = 'torch.dmi'
	luminosity = 3

obj/torch/verb/extinguish()
	set src in view(1)
	luminosity = 0

obj
	verb
		get()
			set src in usr.loc
			loc = usr
		drop()
			set src in usr
			loc = usr.loc
	torch
		get()
			set src in oview()
			loc = usr

obj/scroll/verb
	write(msg as message)
		set src in view(0)
		desc = msg
	read()
		set src in view()
		usr << desc

// Turf


turf
	floor
		icon = 'floor.dmi'
	wall
		icon = 'wall.dmi'
		density = 1
		opacity = 1
	start
		icon = 'start.dmi'

area/dark
	luminosity = 0

area/dark/verb/clap()
	luminosity = 1
