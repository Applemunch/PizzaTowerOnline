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
	x=median(x-maxspeed,obj_player1.x,x+maxspeed)
	y=median(y-maxspeed * 0.75,obj_player1.y,y+maxspeed * 0.75)


	if x != obj_player.x
	image_xscale = -sign(x - obj_player.x)
}

if global.snickrematch = false
	instance_destroy()

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

if hitboxcreate = false && (obj_player1.instakillmove = false && obj_player1.state != states.handstandjump)
{
	hitboxcreate = true
	with instance_create(x,y,obj_forkhitbox)
	{
		sprite_index = other.sprite_index
		ID = other.id
	}
}

if obj_player1.state == states.keyget or obj_player1.state == states.victory
{
	deactivate = true;
	alarm[1] = room_speed * 5;
}

if room = ruin_11 or room = ruin_3 or room == ruin_4 or room == medieval_pizzamart or room == ruin_pizzamart or room == dungeon_pizzamart
{
	x = room_width / 2
	y = -100
}

// powers
else if !(point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ) - 50, __view_get( e__VW.YView, 0 ) - 50, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 50)) && cantp <= 0
{
	var target = obj_player1;
	
    y = target.y;
    x = clamp(target.x + 900 * -target.xscale, __view_get(e__VW.XView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0));
	
	repeat 6 with instance_create(x + random_range(-100, 100), y + random_range(-100, 100), obj_balloonpop)
		sprite_index = spr_shotgunimpact;
	
    cantp = room_speed * 3;
}

if cantp > 0
{
    cantp -= 1;
    if room == dungeon_10 or room == dungeon_9 or room == snick_challengeend
        cantp -= 4
    cantp = max(cantp, 0)
}