if !(global.snickrematch && global.snickchallenge)
{
	instance_destroy(id, false)
	exit
}

if deactivate
{
    x = room_width / 2;
    y = -100;
	
    hitboxcreate = false;
    visible = false;
	
	exit;
}

if !knocked
{
	x = median(x - maxspeed, obj_player.x, x + maxspeed)
	y = median(y - maxspeed * 0.75, obj_player.y, y + maxspeed * 0.75)
	
	if x != obj_player.x
		image_xscale = -sign(x - obj_player.x)
}

if instance_exists(obj_player) && obj_player.state == states.parry && distance_to_object(obj_player) < 50 && alarm[0] == -1
{
	alarm[0] = 10;
	knocked = true
	
	if x > obj_player.x
		hspeed = 16;
	else hspeed = -16;
		
	if y > obj_player.y
		vspeed = 16;
	else vspeed = -16;
}

if !hitboxcreate && (!obj_player.instakillmove && obj_player.state != states.handstandjump)
{
	hitboxcreate = true
	with instance_create(x, y, obj_forkhitbox)
	{
		sprite_index = other.sprite_index
		ID = other.id
	}
}

if obj_player.state == states.keyget or obj_player.state == states.victory
{
	deactivate = true;
	alarm[1] = room_speed * 5;
}

if room == ruin_11 or room == ruin_4 or room == medieval_pizzamart or room == ruin_pizzamart or room == dungeon_pizzamart
{
	x = room_width / 2
	y = -100
}

// powers
else if !(point_in_rectangle(x, y, _camx - 50, _camy - 50, _camx + _camw + 50, _camy + _camh + 50)) && cantp <= 0
{
	var target = instance_nearest(x, y, obj_player);
	if target
	{
	    y = target.y;
	    x = clamp(target.x + 900 * -target.xscale, _camx, _camx + _camw);
	}
	
	repeat 6 with instance_create(x + random_range(-100, 100), y + random_range(-100, 100), obj_balloonpop)
		sprite_index = spr_shotgunimpact;
	
    cantp = room_speed * 3;
}

if cantp > 0
{
    cantp -= 1;
    if room == dungeon_10 or room == dungeon_9 or room == snick_challengeend
        cantp -= 4;
}
else
	cantp = 0;
