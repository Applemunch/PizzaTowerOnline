function scr_heatdown()
{
	global.baddiespeed = max(global.baddiespeed - 1, 1);
	
	if global.stylethreshold != 2
		global.baddiepowerup = false

	if global.stylethreshold < 2
	{
		global.baddierage = false
		with obj_heatafterimage
			visible = false
	}
	
	with obj_tv
	{
		message = "HEAT DOWN..."
		alarm[0] = 200
		showtext = true
	}

	obj_stylebar.toggle = true
	obj_stylebar.alarm[0] = 5
}