switch state
{
    case states.normal:
        for (var i = 0; i < ds_list_size(baddielist); i++)
            instance_deactivate_object(baddielist[| i][1]);
		
        if collisioned && ds_list_find_index(global.saveroom, id) == -1
        {
            if (dir == 1 && targetplayer.x > x + offset)
			or (dir == -1 && targetplayer.x < x - offset)
            {
                if !instance_exists(block_inst)
                {
                    block_inst = instance_create_depth(x, y, depth, obj_solid);
					with block_inst
					{
	                    sprite_index = other.mask_index;
	                    mask_index = sprite_index;
	                    image_xscale = other.image_xscale;
	                    image_yscale = other.image_yscale;
	                    visible = false;
					}
                }
                with obj_arenagate
                {
                    block_inst = instance_create_depth(x, y, depth, obj_solid);
					with block_inst
					{
	                    sprite_index = other.mask_index;
	                    mask_index = sprite_index;
	                    image_xscale = other.image_xscale;
	                    image_yscale = other.image_yscale;
	                    visible = false;
					}
                    sprite_index = spr_arenagate_close;
                }
				
                cutscene_count = cutscene_max;
                sprite_index = spr_arenagate_close;
                image_speed = 0.5;
				
                with obj_camera
                {
                    shake_mag = 3;
                    shake_mag_acc = 3 / room_speed;
                }
				
                state = 115;
                round_count = round_max;
            }
            else
            {
				if (dir == 1 && targetplayer.x < x)
				or (dir == -1 && targetplayer.x > x + sprite_width)
                    collisioned = false;
            }
        }
        break;
	
    case 117:
        with obj_player1
        {
            xscale = sign(other.x - x);
            state = states.arenaintro;
            sprite_index = spr_bossintro;
        }
		
        if cutscene_count > 0
            cutscene_count--;
        else
        {
            with obj_player
            {
                state = states.normal;
                image_index = 0;
            }
            state = 118;
            round_count = round_max;
        }
        break;
	
    case 118:
        if round_count > 0
            round_count--;
        else
            state = 116;
        break;
	
    case 115:
        if !ds_list_empty(baddielist)
        {
            for (i = 0; i < ds_list_size(baddielist); i++)
            {
                var b = ds_list_find_value(baddielist, i);
                if b[0] == wave
                {
                    instance_activate_object(b[1]);
                    alarm[1] = 1;
                }
                else
                    instance_deactivate_object(b[1]);
            }
        }
		
        wave_minutes = minutes;
        wave_seconds = seconds;
        round_count = round_max;
        state = 118;
        break;
	
    case 116:
		// check if the current wave was defeated
		var dsempty = true;
		for(var i = 0; i < ds_list_size(currentarena); i++)
		{
			if instance_exists(currentarena[| i])
			{
				if object_is_ancestor(currentarena[| i].object_index, obj_baddie)
				{
					dsempty = false;
					break;
				}
			}
		}
		
		// next wave
        if dsempty && !instance_exists(obj_arena_pizzaportal)
        {
            wave++;
            if wave > maxwave
            {
				// victory
                image_index = 0;
                sprite_index = spr_arenagate_open;
                state = states.transitioncutscene;
                instance_destroy(block_inst);
				
                with obj_arenagate
                {
                    image_index = 0;
                    sprite_index = spr_arenagate_open;
                    instance_destroy(block_inst);
                }
				
                cutscene_count = outro_max;
                with obj_music
                    arena = false;
            }
            else
            {
				// next wave
                state = 115;
                round_count = round_max;
            }
        }
        break
	
    case states.transitioncutscene:
        if floor(image_index) == image_number - 1
            state = states.victory;
        break;
	
    case states.victory:
        instance_destroy();
        break;
}

if sprite_index == spr_arenagate_close && image_index > image_number - 1
    image_index = image_number - 1;
if sprite_index == spr_arenagate_open && image_index > image_number - 1
    sprite_index = spr_arenagate_opened;