depth = 50;
event_inherited();

image_speed = 0.35;
image_index = 0;

yoffset = 2;
hsp = 0;
vsp = 0;
grav = 0.23;
movespeed = 3;
panic = false;
playerid = obj_player1;
spr_intro = sprite_index;
spr_run = sprite_index;
spr_idle = sprite_index;
spr_panic = sprite_index;
spr_intro_strongcold = sprite_index;
spr_run_strongcold = sprite_index;
spr_idle_strongcold = sprite_index;

sc_check = function() {
	return string_startswith(room_get_name(room), "strongcold");
}