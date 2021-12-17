if !global.snickchallenge
{
	instance_destroy(id, false);
	exit;
}

if deactivate
{
	if hitboxcreate
    {
        with obj_forkhitbox
        {
            if ID == other.id
                instance_destroy();
        }
		
        repeat 6 with instance_create(x + random_range(-100, 100), y + random_range(-100, 100), obj_balloonpop)
			sprite_index = spr_shotgunimpact;
    }
	
    x = room_width / 2;
    y = -100;
	
    hitboxcreate = false;
    visible = false;
	
	exit;
}

if !knocked
{
	var target = instance_nearest(x, y, obj_player);
	if target
	{
		// approach
		x = median(x - maxspeed, target.x, x + maxspeed)
		if global.snickrematch
			y = median(y - maxspeed * 0.75, target.y, y + maxspeed * 0.75)
		else
			y = median(y - maxspeed, target.y, y + maxspeed)
		
		// turn
		if x != target.x
			image_xscale = -sign(x - target.x)
	}
}
else if !global.snickrematch
{
	image_angle -= hspeed * 4;
	with instance_place(x, y, obj_baddie)
	{
		if object_index != obj_pizzaballOLD
			instance_destroy();
	}
}

if global.snickrematch
{
	sprite_index = spr_snick_rexe;
	with obj_player1
		if character == "S" other.sprite_index = spr_snick_exi;
	maxspeed = 2.75;
	
	if room == dungeon_10 or room == dungeon_9 or room == snick_challengeend
		maxspeed = 3.25;
}

if obj_player1.state == states.parry && distance_to_object(obj_player1) < 50 && alarm[0] == -1
{
	alarm[0] = 10;
	knocked = true
	
	if x > obj_player1.x
		hspeed = 16
	else
		hspeed = -16;
		
	if y > obj_player1.y
		vspeed = 16
	else
		vspeed = -16;
}

if !hitboxcreate && (!obj_player.instakillmove && obj_player.state != states.handstandjump && obj_player.state != states.punch)
{
	hitboxcreate = true
	with instance_create(x, y, obj_forkhitbox)
	{
		sprite_index = other.sprite_index
		ID = other.id
	}
}

if (place_meeting(x, y, obj_player) && (obj_player.instakillmove or obj_player1.state == states.handstandjump))
or place_meeting(x, y, obj_shotgunbullet) or place_meeting(x, y, obj_antonball) or ((obj_player1.state == states.keyget or obj_player1.state == states.victory) && !deactivate)
or place_meeting(x, y, obj_playerexplosion) or place_meeting(x, y, obj_dynamiteexplosion)
{
	repeat 6 with instance_create(x + random_range(-100, 100), y + random_range(-100, 100), obj_balloonpop)
		sprite_index = spr_shotgunimpact;
	
	if global.snickrematch
	{
		deactivate = true;
		alarm[1] = room_speed * 5;
	}
	
	var antonball = instance_place(x, y, obj_antonball);
	if antonball
	{
		scr_soundeffect(sfx_antonballbrick1);
		if x != antonball.x
			antonball.hsp = sign(antonball.x - x) * 6;
		if y != antonball.y
			antonball.vsp = sign(antonball.y - y) * 4;
	}
	
	x = room_width / 2
	y = -100 
}

if room == ruin_11 or room == ruin_3 or room == medieval_pizzamart or room == ruin_pizzamart or room == dungeon_pizzamart
{
	x = room_width / 2;
	y = -100;
}
