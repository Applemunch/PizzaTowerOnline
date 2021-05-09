function scr_player_finishingblow()
{
	hsp = 0
	vsp = 0

	if floor(image_index) == image_number - 1
		state = states.normal
	
	if floor(image_index) == 5 && global.gameplay != 0
		image_index += 1;
	
	if floor(image_index) == 6 + (character == "SP") && !instance_exists(obj_swordhitbox)
	{
		if instance_exists(baddiegrabbedID) && baddiegrabbedID.object_index == obj_junk && scr_checkskin(checkskin.p_anton)
			scr_soundeffect(sfx_punchball_throw);
		
		scr_soundeffect(sfx_punch)
		scr_soundeffect(sfx_killingblow)
	
		with instance_create(x,y,obj_swordhitbox)
		{
			playerid = other.object_index
			if global.pvp && other.baddiegrabbedID == obj_otherplayer
			{
				gms_instance_sync_var_add("xscale", other.xscale);
				gms_instance_sync(id, is_onetime | isc_local);
			}
		}
	}
	
	if floor(image_index) == 0 && !instance_exists(obj_swordhitbox) && sprite_index == spr_swingdingend
	{
		if instance_exists(baddiegrabbedID) && baddiegrabbedID.object_index == obj_junk && scr_checkskin(checkskin.p_anton)
			scr_soundeffect(sfx_punchball_throw);
	
		scr_soundeffect(sfx_killingblow)
	
		with instance_create(x,y,obj_swordhitbox)
		{
			playerid = other.object_index
			if global.pvp && other.baddiegrabbedID == obj_otherplayer
			{
				gms_instance_sync_var_add("xscale", other.xscale);
				gms_instance_sync(id, is_onetime | isc_local);
			}
		}
	}
	
	image_speed = 0.4;
	if global.gameplay == 0
		image_speed = 0.35;
	landAnim = false
}