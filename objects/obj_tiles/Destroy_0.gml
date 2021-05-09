/// @description 
if room != rm_editor exit;
if global.autotile == false exit;
if global.loadeditor == true exit;

if (sprite_get_number(sprite_index) > 5 || sprite_get_number(sprite_index) <= 1)
{
    inst[0] = instance_place((x + 32), y, obj_tiles)
    inst[1] = instance_place((x - 32), y, obj_tiles)
    inst[2] = instance_place(x, (y + 32), obj_tiles)
    inst[3] = instance_place(x, (y - 32), obj_tiles)
    inst[4] = instance_place((x + 32), (y + 32), obj_tiles)
    inst[5] = instance_place((x - 32), (y + 32), obj_tiles)
    inst[6] = instance_place((x + 32), (y - 32), obj_tiles)
    inst[7] = instance_place((x - 32), (y - 32), obj_tiles)
    for (var i = 0; i < 8; i++)
    {
        if instance_exists(inst[i])
        {
            with (inst[i])
                alarm[1] = 1
        }
    }
}
if (sprite_get_number(sprite_index) <= 5 && sprite_get_number(sprite_index) > 1)
{
    inst[0] = instance_place((x + 32), y, obj_tiles)
    inst[1] = instance_place((x - 32), y, obj_tiles)
    var tile_index = object_index
    for (i = 0; i < 2; i++)
    {
        if instance_exists(inst[i])
        {
            with (inst[i])
            {
                if (object_index == tile_index)
                    alarm[2] = 1
                else
                    alarm[1] = 1
            }
        }
    }
}
if (sprite_get_number(sprite_index) <= 1)
{
    inst[0] = instance_place((x + 32), y, obj_tiles)
    inst[1] = instance_place((x - 32), y, obj_tiles)
    inst[2] = instance_place(x, (y + 32), obj_tiles)
    inst[3] = instance_place(x, (y - 32), obj_tiles)
    inst[4] = instance_place((x + 32), (y + 32), obj_tiles)
    inst[5] = instance_place((x - 32), (y + 32), obj_tiles)
    inst[6] = instance_place((x + 32), (y - 32), obj_tiles)
    inst[7] = instance_place((x - 32), (y - 32), obj_tiles)
    for (i = 0; i < 8; i++)
    {
        if instance_exists(inst[i])
        {
            with (inst[i])
                alarm[1] = 1
        }
    }
}


/*
with object_index {
	alarm[1] = 1;	
}
	if place_meeting(x + width, y, object_index) {
		with instance_place(x + width, y, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x - width, y, object_index) {
		with instance_place(x - width, y, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x, y + width, object_index) {
		with instance_place(x, y + width, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x, y - width, object_index) {
		with instance_place(x, y - width, object_index) {
			alarm[1] = 1;
		}
	}