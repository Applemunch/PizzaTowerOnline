if deactivate
{
    x = room_width / 2;
    y = room_height + 100;
	
    hitboxcreate = false;
    visible = false;
	instance_destroy(obj_snickexgquill)
	
	exit;
}

if !knocked
{
	x=median(x-maxspeed * 0.75,obj_player1.x,x+maxspeed * 0.75)
	y=median(y-maxspeed,obj_player1.y,y+maxspeed)


	if x != obj_player.x
	image_xscale = sign(x - obj_player.x)
}

if global.snickrematch = false
{
	instance_destroy()
	exit
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

if hitboxcreate = false && (obj_player1.instakillmove = false && obj_player1.state != states.handstandjump)
{
	hitboxcreate = true
	with instance_create(x,y,obj_forkhitbox)
	{
		sprite_index = other.sprite_index
		image_xscale = 0.5
        image_yscale = 0.5
		ID = other.id
	}
}

if (place_meeting(x,y,obj_player1) && (obj_player1.instakillmove = true or obj_player1.state = states.handstandjump))
or place_meeting(x, y, obj_shotgunbullet) or place_meeting(x, y, obj_antonball) or ((obj_player1.state == states.keyget or obj_player1.state == states.victory) && !deactivate)
{
	repeat(6) with instance_create(x+random_range(-100,100), y+random_range(-100,100),obj_balloonpop)
		sprite_index= spr_shotgunimpact
	
	deactivate = true;
	alarm[1] = room_speed * 5;
	
	var antonball = instance_place(x, y, obj_antonball);
	if antonball
	{
		scr_soundeffect(sfx_antonballbrick1);
		if x != antonball.x
			antonball.hsp = sign(antonball.x - x) * 6;
		if y != antonball.y
			antonball.vsp = sign(antonball.y - y) * 4;
	}
	
	x = room_width/2
	y = room_height + 100
}


if room = ruin_11 or room = ruin_3 or room == ruin_4 or room == medieval_pizzamart or room == ruin_pizzamart or room == dungeon_pizzamart
{
	x = room_width / 2
	y = room_height + 100
}
else
{
    for (var i = floor((x - 50) / 32) * 32; i < floor((x + 50) / 32) * 32; i += 32)
    {
        for (var j = floor((y - 50) / 32) * 32; j < floor((y + 50) / 32) * 32; j += 32)
        {
            if choose(true, false) && irandom_range(0, 10) == 10
            {
                var lay_id = get_layer("Tiles_1");
                var map_id = layer_tilemap_get_id(lay_id);
				
                var data = tilemap_get_at_pixel(map_id, i, j);
                if data > 0
                {
                    data = irandom_range(1, 97);
                    tilemap_set_at_pixel(map_id, data, i, j);
                }
            }
        }
    }
}

if quillt <= 0 && !knocked
{
    instance_create(x, y, obj_snickexgquill);
    quillt = room_speed / 2
}
else
    quillt -= 1