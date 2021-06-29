hsp = 0
vsp = 0
grav = 0.5
grounded = false

movespeed = 6

image_speed = 0.35

countdown = 120
depth = -10

playercollision = true

kick = false
mask_index = spr_player_mask

/*
if check_bysync() == false && global.pvp
	alarm[10] = 1;
if check_bysync() == true && !global.pvp
{
	gms_instance_sync_destroy_silent(id);
	instance_destroy(id, false);
}
sync = check_bysync();
rmstart = room;
*/
sync = false