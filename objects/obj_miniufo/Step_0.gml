if room == rm_editor exit;

switch (state)
{
    case states.idle: scr_enemy_idle (); break;
    case states.charge: scr_enemy_charge (); break;
    case states.turn: scr_enemy_turn (); break;
    case states.walk: scr_enemy_walk (); break;
    case states.land: scr_enemy_land (); break;
    case states.hit: scr_enemy_hit (); break;
    case states.stun: scr_enemy_stun (); break;
    case states.pizzagoblinthrow: scr_pizzagoblin_throw (); break;
    // grabbed state here
}
if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}




if state != states.stun
birdcreated = false


if state == states.walk && y > ystart && !scr_solid(x,y-1)
y--
if state == states.walk && y < ystart && !scr_solid(x,y+1)
y++


if state == states.stun
	grav = 0.5
else 
	grav = 0

if laserbuffer > 0 && state == states.walk
	laserbuffer--


//Create laser
if laserbuffer <= 0 && state == states.walk
{
	var laser = instance_create(x,y,obj_warplaser)
	if global.gameplay == 0
		laser.vsp = 2;
	else
	{
		if !audio_is_playing(sfx_enemyprojectile) && point_in_camera(x, y, view_camera[0])
			scr_soundeffect(sfx_enemyprojectile);
		laser.vsp = 5;
	}
	
	laserbuffer = 100
}
//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}





if state != states.grabbed
depth = 0


//Scared
scr_scareenemy()




if state != states.stun
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = sprite_index
baddieID = other.id
other.boundbox = true
}
}


