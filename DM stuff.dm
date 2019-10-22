/*
	Basic code for DM admin
*/



mob/DM
	key = "Tisx"
	verb
		intangible()
			density = !density
			if(density) usr << "You can no longer go through walls"
			else usr << "You can go through walls"

mob/DM/verb/set_weather(txt as text)
	weather = txt

mob/DM/verb/set_value(obj/o,v as num)
	o.value = v

mob/DM
	var/vulnerable

	verb/set_vulnerability(v as num)
		vulnerable = v

	HurtMe(N)
		if(vulnerable)
			..()

mob/DM/verb/set_date(day as num)
	set desc = "Enter day of the year (1-365)"

	day_of_year = day
	world << "The sign of [Stars(day)] is now in force"