function scr_enemy_grabpos(player)
{
	x = player.x
	if player.sprite_index != player.spr_haulingstart 
	{
		if player.character == "SP"
		{
			var bottom = bbox_bottom - y;
			y = player.y - bottom;
			
			if player.sprite_index == player.spr_haulingwalk
			{
				if floor(player.image_index) == 0
				or floor(player.image_index) == 4
					y -= 3;
				if floor(player.image_index) == 1
				or floor(player.image_index) == 5
					y += 2;
				if floor(player.image_index) == 2
				or floor(player.image_index) == 6
					y += 7;
				if floor(player.image_index) == 3
				or floor(player.image_index) == 7
					y += 3;
			}
			else if player.sprite_index == player.spr_haulingjump
			{
				if floor(player.image_index) == 0
					y += 15;
				if floor(player.image_index) == 1
					y -= 12;
				if floor(player.image_index) == 2
					y -= 16;
				if floor(player.image_index) >= 3
					y -= 6;
			}
			else if player.sprite_index == player.spr_haulingland
			{
				if floor(player.image_index) == 0
					y += 15;
				if floor(player.image_index) == 1
					y += 8;
				if floor(player.image_index) == 2
					y -= 4;
			}
			else if player.sprite_index == player.spr_haulingfall
				y -= 8;
			
			if sprite_index == spr_slimegrabbed or sprite_index == spr_slimegrabbed_re
				y += 20;
			if sprite_index == spr_sausagemannocigar_grabbed
			or sprite_index == spr_sausageman_grabbed
				y += 20;
		}
		else
			y = player.y - 40
	}
	else
	{
		var bottom = bbox_bottom - y;
		y = player.y - bottom;
		
		if player.character == "SP"
		{
			if floor(player.image_index) = 0
				y += 18;
			else if floor(player.image_index) = 1
				y += 4;
			else if floor(player.image_index) = 2
				y -= 10;
			else if floor(player.image_index) = 3
				y -= 8;
			
			if sprite_index == spr_slimegrabbed or sprite_index == spr_slimegrabbed_re
				y += 20;
			if sprite_index == spr_sausagemannocigar_grabbed
			or sprite_index == spr_sausageman_grabbed
				y += 20;
		}
		else
			y = player.y - (floor(player.image_index) * 10);
	}
	image_xscale = -player.xscale
}
function scr_enemy_driverpos(player)
{
	if player.character == "P"
	{
		y = player.y
		if floor(player.image_index) == 0
		{
			depth = 0
			x = player.x + (player.xscale * 10)
		}
		if floor(player.image_index) == 1
		{
			depth = 0
			x = player.x + (player.xscale * 5)
		}
		if floor(player.image_index) == 2
		{
			depth = 0
			x = player.x
		}
		if floor(player.image_index) == 3
		{
			depth = 0
			x = player.x + (player.xscale * -5)
		}
		if floor(player.image_index) == 4
		{
			depth = 0
			x = player.x + (player.xscale * -10)
		}
		if floor(player.image_index) == 5
		{
			depth = -8
			x = player.x + (player.xscale * -5)
		}
		if floor(player.image_index) == 6
		{
			depth = -8
			x = player.x 
		}
		if floor(player.image_index) == 7
		{
			depth = -8
			x = player.x + (player.xscale * 5)
		}
	}
	else if player.character == "SP"
	{
		var bottom = bbox_bottom - y;
		y = player.y - bottom;
		x = player.x
		
		depth = 0
		
		if player.sprite_index == spr_playerSP_piledriverstart
		{
			if floor(player.image_index) == 0
			{
				x -= image_xscale * 32;
				y += 12;
			}
			if floor(player.image_index) >= 1
				y -= 26;
		}
		else if player.sprite_index == spr_playerSP_piledriverland
		{
			x -= image_xscale * 32;
			if floor(player.image_index) == 0
				y += 20;
			else
				y += 45;
		}
		else
		{
			x += image_xscale * 32;
			y -= 28;
		}
		
		if sprite_index == spr_slimegrabbed or sprite_index == spr_slimegrabbed_re
			y += 20;
		if sprite_index == spr_sausagemannocigar_grabbed
		or sprite_index == spr_sausageman_grabbed
			y += 15;
	}
	else
	{
		depth = -8
		
		x = player.x
		y = player.y - 40
	}
}