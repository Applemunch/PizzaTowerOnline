if ds_list_find_index(global.baddieroom, id) == -1
{
    with instance_create(x, y, obj_sausageman_dead)
        sprite_index = spr_tank_wheel
	
	repeat 3 with instance_create(x, y, obj_sausageman_dead)
		sprite_index = other.spr_content_dead
}
event_inherited()