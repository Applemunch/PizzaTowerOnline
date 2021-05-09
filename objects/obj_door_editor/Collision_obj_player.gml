/// @description 
if index == -1 exit;
if !place_meeting(x,y,obj_doorblocked)
with (other)
{
if key_up && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
&& ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
{
	var door_id = other.id;
	index = other.index;
	scr_soundeffect(sfx_door)

	with obj_camera
		chargecamera = 0


	if object_index = obj_player1
	obj_player1.sprite_index = obj_player1.spr_lookdoor

	if object_index = obj_player2
	obj_player2.sprite_index = obj_player2.spr_lookdoor
	
	obj_player.image_index = 0		
	obj_player.state = states.door		
	obj_player.mach2 = 0
			if instance_exists(obj_player2) && global.coop = true
			{
				if object_index = obj_player2 
				{
					obj_player1.x = obj_player2.x
					obj_player1.y = obj_player2.y
				}
				if object_index = obj_player1 
				{
					obj_player2.x = obj_player1.x
					obj_player2.y = obj_player1.y
				}
			

			}
		
	other.visited = true


	with instance_create(x,y,obj_fadeout) {
		_id = door_id;
		index = other.index;
		custom_level = true;
	}
}

}
