with (obj_player1)
{
	if other.image_yscale = 1
	{
		if ((key_down && !place_meeting(x,y+1,obj_destructibles)  && place_meeting(x,y+1,other) && ((state = states.crouch or (character = "S" && scr_transformationcheck())) or state == states.machroll))
		or ((state = states.crouchslide or state == states.freefall or state == states.freefallland) && !place_meeting(x,y+1,obj_destructibles) && place_meeting(x,y+1,other)))
		&& !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
		{
			other.depth = -10
			scr_soundeffect(sfx_box)
			obj_player1.box = true
			mach2 = 0
			
			with obj_camera
				chargecamera = 0
			
			doorx = other.x
			x = doorx;

			sprite_index = spr_downpizzabox
			image_index = 0
			state = states.door
			
			other.enter = true;
		}
	}
	
	if other.image_yscale = -1
	{
		if ((key_up && !place_meeting(x,y-1,obj_destructibles) && place_meeting(x,y-10,other) && (state == states.normal or state == states.pogo or state == states.jump or  state = states.mach1 or state == states.mach2 or state == states.mach3 or state == states.Sjumpprep)) or ((state = states.Sjump or state == states.Sjumpland)  && !place_meeting(x,y-1,obj_destructibles) && place_meeting(x,y-1,other))) 
		&& !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
		{
			scr_soundeffect(sfx_box)
			other.depth = -10
			obj_player1.box = true
			mach2 = 0
			
			with obj_camera
				chargecamera = 0
			
			doorx = other.x
			y = other.y + 24
			
			sprite_index = spr_uppizzabox
			image_index = 0
			state = states.door
			
			other.enter = true;
		}
	}
}