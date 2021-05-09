with (obj_player1)
{
	
if grounded && obj_hookshot.hooked = false
hsp = 0

if obj_hookshot.hooked = true
{
	

 xDist = obj_player.x - obj_hookshot.x; 
 yDist = obj_player.y - obj_hookshot.y;
if sign(xDist) = -1
hsp ++
else if sign(xDist) = 1
hsp --
else 
hsp = 0


vsp = 0
}
}


if scr_solid(x,y) && hooked = false 
{
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop
with instance_create(x,y,obj_slimedebris)
sprite_index = spr_hookshot_drop

hsp = 0
vsp = 0
hooked = true
obj_player.state = states.hookshot
}

if (sprite_index = spr_hookshot_side or sprite_index = spr_hookshot_top) && image_number = -1
image_speed =0



if (hooked = true && obj_player.state != states.hookshot) or  obj_player.state != states.hookshot
instance_destroy()

// Vertical
repeat(abs(vsp)) {
    if (!place_meeting(x, y + sign(vsp), obj_null))
        y += sign(vsp); 
    else {
        vsp = 0;
        break;
    }
}

// Horizontal
repeat(abs(hsp)) {
    // Move up slope
    if (place_meeting(x + sign(hsp), y, obj_null) && place_meeting(x + sign(hsp), y - 1, obj_null) && !place_meeting(x + sign(hsp), y - 2, obj_null)) 
        y -= 2;
    else if (place_meeting(x + sign(hsp), y, obj_null) && !place_meeting(x + sign(hsp), y - 1, obj_null)) 
        y--;

    // Move down slope
    if (!place_meeting(x + sign(hsp), y, obj_null) && !place_meeting(x + sign(hsp), y + 1, obj_null) && !place_meeting(x + sign(hsp), y + 2, obj_null) && place_meeting(x + sign(hsp), y + 3, obj_null))
        y += 2;
      
    else if (!place_meeting(x + sign(hsp), y, obj_null) && !place_meeting(x + sign(hsp), y + 1, obj_null) && place_meeting(x + sign(hsp), y + 2, obj_null))
        y++;

    if (!place_meeting(x + sign(hsp), y, obj_null))
        x += sign(hsp); 
    else {
        hsp = 0;
        break;
    }
    }

//Gravity
if (vsp < 20) 
vsp += grav;



