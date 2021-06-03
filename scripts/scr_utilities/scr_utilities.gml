function point_in_camera(x, y, cam)
{
	var camx = camera_get_view_x(cam);
	var camy = camera_get_view_y(cam);
	var camw = camera_get_view_width(cam);
	var camh = camera_get_view_height(cam);
	return point_in_rectangle(x, y, camx, camy, camx + camw, camy + camh);
}

/// enemy
function increase_combo()
{
	var funny = true;
	if variable_instance_exists(id, "baddieID")
	&& instance_exists(baddieID)
		if baddieID.important or baddieID.object_index == obj_pizzaballOLD funny = false;
	if variable_instance_exists(id, "boundbox")
		if important or object_index == obj_pizzaballOLD funny = false;
	
	if global.gameplay != 0 && funny
	{
		global.combo += 1
		global.combotime = 60;
		global.heattime = 60;
		global.style += 5 + global.combo;
	}
	else
		global.combotime = 60;
}

function scr_hitthrow(baddie, player)
{
	var lag = 5;
	with baddie
	{
		if state != states.hit
		{
			increase_combo();
		
			repeat 5
				create_particle(x, y, particles.baddiegibs)
			repeat 5
				instance_create(x,y,obj_slapstar)
			instance_create(x,y,obj_bangeffect)
		
			hp -= 1;
			thrown = true;
						
			hitLag = lag;
			hitX = x;
			hitY = --y;
			state = states.hit;
			
			stuntouchbuffer = lag * 2;
			
			hsp = hithsp;
			vsp = hitvsp;
						
			grounded = false;
		}
	}
	
	with player
	{
		if state != states.hitlag
		{
			if scr_solid(x, y)
			{
				x = hitX;
				y = hitY;
			}
			tauntstoredmovespeed = movespeed;
			tauntstoredsprite = sprite_index;
			tauntstoredstate = state;
			tauntstoredvsp = vsp;
			state = states.hitlag;
						
			hitLag = lag;
			hitX = x;
			hitY = y;
		}
	}
}