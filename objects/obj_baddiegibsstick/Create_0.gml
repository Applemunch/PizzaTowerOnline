image_speed = 0;
vsp = 0;
hsp = 0;
grounded = false;
storedx = noone;
storedy = noone;
grav = 0.4;
depth = 16;

sprite_index = choose(spr_goop, spr_goop2);
if obj_player1.character == "SP"
	sprite_index = choose(spr_goop1SP, spr_goop2SP);
if obj_player1.character == "N"
	sprite_index = choose(spr_goop1N, spr_goop2N);
saveable = true;