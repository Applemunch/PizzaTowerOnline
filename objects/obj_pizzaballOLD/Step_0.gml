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






//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

//Regenerate
if hp != 5
hp = 5

if state != states.grabbed
depth = 0



if state != states.stun
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}

if ds_list_find_index(global.baddieroom, id) == -1  
{
	// thrown camera
	if thrown
	{
		with obj_camera
		{
			targetoverride = other.id;
			targetgoingback = false;
		}
		alarm[4] = room_speed / 2;
	}

	// reset thrown camera when grabbed
	if state == states.grabbed
	{
		with obj_camera
		{
			if targetoverride = other.id
			{
				targetoverride = noone;
				targetgoingback = false;
			}
		}
		alarm[4] = -1;
	}

	// focus back to player if hurt
	if obj_player1.state == states.hurt && obj_camera.targetoverride == id
	{
		with obj_camera
		{
			targetoverride = noone;
			targetgoingback = true;
		}
	}
}