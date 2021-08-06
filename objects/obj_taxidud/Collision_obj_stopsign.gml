if !instance_exists(playerid)
	exit

if playerid.visible = false
	{
	with (obj_player1)
	{
		scr_soundeffect(sfx_taxi1)
state = states.normal

		
		

cutscene = false
	}
	
	obj_player1.visible = true
	}