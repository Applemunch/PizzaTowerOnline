if room == rm_editor exit;
if index == -1 exit;

if (obj_player1.state = states.normal or obj_player1.state = states.mach1 or obj_player1.state == states.pogo or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.Sjumpprep)  && sprite_index = spr_doorkey && obj_player1.key_up && obj_player1.grounded && global.key_inv == true && place_meeting(x,y,obj_player1) 
{

	obj_player1.state = states.victory
	obj_player1.image_index = 0

	/*
	if instance_exists(obj_player2) && global.coop = true
	{
		obj_player2.x = obj_player1.x 
		obj_player2.y = obj_player1.y
		obj_player2.state = states.victory
		obj_player2.image_index = 0
	}
	*/
	
	image_index = 0
	sprite_index = spr_doorkeyopen
	image_speed = 0.35
	instance_create(x+50,y+50,obj_lock)
	global.key_inv = false
}

/*
if instance_exists(obj_player2)
{
	if obj_player2.state = states.normal && obj_player2.grounded && obj_player2.key_up && global.key_inv == true && place_meeting(x,y,obj_player2)
	{
		obj_player2.state = states.victory
		obj_player2.image_index = 0


		obj_player1.x = obj_player2.x 
		obj_player1.y = obj_player2.y
		obj_player1.state = states.victory
		obj_player1.image_index = 0
		
		image_index = 0
		sprite_index = spr_doorkeyopen
		image_speed = 0.35
		instance_create(x+50,y+50,obj_lock)
		global.key_inv = false
	}
}
*/

if sprite_index == spr_doorkeyopen && floor(image_index) == 2 {
	image_speed = 0
}

if floor(obj_player1.image_index) = obj_player1.image_number - 4 && obj_player1.state = states.victory && place_meeting(x, y, obj_player1)
{
	var door_id = id;
	with obj_player1
	{
		index = other.index;
		if !instance_exists(obj_fadeout)
		{
			scr_soundeffect(sfx_door)
			with instance_create(x,y,obj_fadeout)
			{
				_id = door_id;
				index = other.index;
				custom_level = true;
			}
		}
	}
}

if sprite_index == spr_doorkeyopen && image_speed == 0 {
	opened = true;
	sprite_index = spr_doorvisited;
}

