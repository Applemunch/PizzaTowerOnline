function scr_player_door()
{
	hsp = 0
	mach2 = 0
	jumpAnim = true
	dashAnim = true
	landAnim = false
	moveAnim = true
	stopAnim = true
	crouchslideAnim = true
	crouchAnim = true
	machhitAnim = false

	image_speed = 0.35

	if floor(image_index) >= image_number - 1
		image_speed = 0;

	if floor(image_index) >= image_number - 3 && !instance_exists(obj_fadeout) && (sprite_index = spr_downpizzabox or sprite_index = spr_uppizzabox)
	{
		with obj_boxofpizza_editor
		{
			if enter
			{
				with instance_create(x,y,obj_fadeout)
				{
					_id = other.id;
					index = other.index;
					custom_level = true;
				}
			
				enter = false;
				exit;
			}
		}
		instance_create(x,y,obj_fadeout)
	}
	
	if scr_stylecheck(2) && x != doorx
	{
		var spd = (box ? 9 : 6);
		x = Approach(x, doorx, spd);
		
		if x != xprevious
			xscale = sign(x - xprevious);
	}
}