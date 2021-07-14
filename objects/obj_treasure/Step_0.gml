if obj_player1.character = "S"
	instance_destroy()

if sprite_index == sprgot && obj_player1.state != states.gottreasure
	instance_destroy()

if sprite_index != sprgot
	sprite_index = spridle

if place_meeting(x,y,obj_player1) && player = 0 && obj_player1.state != states.gameover
{
	if global.gameplay != 0 && global.musicgame == 1
	{
		instance_create_depth(0, 0, 0, obj_levelendfade);
		instance_destroy();
	}
	else
	{
		with obj_player1
		{
			if grounded
			{
				sprite_index = spr_gottreasure
				
				treasure_x = x
				treasure_y = y
				treasure_room = room
				
				if sprite_index == spr_playerSP_gottreasure
				{
					treasure_x -= 25;
					treasure_y -= 25;
				}
				
				global.treasure = true
				hsp = 0
				vsp = 0
				
				if other.sprite_index == other.spridle
				{
					other.alarm[0] = 150
					state = states.gottreasure
					scr_soundeffect(sfx_secretfound)
					ds_list_add(global.saveroom, other.id) 
				}
				
				other.sprite_index = other.sprgot
				sprgot = other.sprgot
				other.x = treasure_x
				other.y = treasure_y - 35
				obj_tv.showtext = true
				obj_tv.message = "YOU GOT A TOWER SECRET TREASURE!!!"
				obj_tv.alarm[0] = 200
				other.player = 1

				ini_close(); 
			}
		}
	}
}