var destruct = instance_place(x + hsp, y + vsp, obj_destructibles);
if scr_solid(x + hsp, y)
{
	hsp *= -1;
	
	if !destruct
	{
		audio_stop_sound(sfx_antonballbounce2);
		scr_soundeffect(sfx_antonballbounce2);
	}
}
x += hsp;

if scr_solid(x, y + vsp) or (place_meeting(x, y + vsp, obj_platform) && !place_meeting(x, y, obj_platform) && vsp > 0)
{
	vsp *= -1;
	
	if !destruct
	{
		audio_stop_sound(sfx_antonballbounce2);
		scr_soundeffect(sfx_antonballbounce2);
	}
}
y += vsp;

if destruct
{
	scr_sleep(50);
	
	audio_stop_sound(sfx_antonballbrick1);
	audio_stop_sound(sfx_antonballbrick2);
	audio_stop_sound(sfx_antonballbrick3);
	
	if destruct.object_index == obj_destroyable2
	or destruct.object_index == obj_destroyable2escape
		scr_soundeffect(sfx_antonballbrick2);
	else if destruct.object_index == obj_destroyable2_big
	or destruct.object_index == obj_destroyable2_bigescape
	or destruct.object_index == obj_hungrypillar
		scr_soundeffect(sfx_antonballbrick3);
	else
		scr_soundeffect(sfx_antonballbrick1);
	
	with obj_camera
	{
		shake_mag = 4;
		shake_mag_acc = 0.5;
	}
	
	instance_destroy(destruct);
}

var player = instance_place(x + hsp, y + vsp, obj_player1);
if player && canhit
{
	with obj_camera
	{
		shake_mag = 4;
		shake_mag_acc = 0.5;
	}
	
	if player.hsp == 0
	{
		if x != player.x
			hsp = sign(x - player.x) * 6;
	}
	else
		hsp = sign(player.hsp) * 6;
	
	if y != player.y
		vsp = sign(y - player.y) * 4;
	
	if player.state == states.handstandjump
	{
		scr_soundeffect(sfx_antonball_launch);
		hsp = round(hsp * 1.5);
		
		if global.gameplay == 0
			scr_sleep(50);
		else
		{
			with player
			{
				if scr_solid(x, y)
				{
					x = hitX;
					y = hitY;
				}
				
				tauntstoredstate = state;
				tauntstoredmovespeed = movespeed;
				tauntstoredsprite = sprite_index;
				tauntstoredvsp = vsp;
				
				hitX = x;
				hitY = y;
				hitLag = 4;
				state = states.hitlag;
			}
		}
		alarm[0] = 30;
	}
	else
	{
		scr_soundeffect(sfx_antonballbounce);
		alarm[0] = 15;
	}
	
	canhit = false;
}

with obj_baddie
{
	if place_meeting(x, y, other)
	{
		if !invincible && instantkillable && object_index != obj_pizzaballOLD
		{
			instance_destroy();
			
			audio_stop_sound(sfx_antonballbrick1);
			audio_stop_sound(sfx_antonballbrick2);
			audio_stop_sound(sfx_antonballbrick3);
			
			if global.combo <= 1
				scr_soundeffect(sfx_antonballbrick1);
			if global.combo == 2
				scr_soundeffect(sfx_antonballbrick2);
			if global.combo >= 3
				scr_soundeffect(sfx_antonballbrick3);
		}
		
		if x != other.x
			other.hsp = sign(other.x - x) * 6;
		if y != other.y
			other.vsp = sign(other.y - y) * 4;
	}
}

if scr_solid(x, y)
or !scr_checkskin(checkskin.p_anton)
or obj_player1.state == states.gameover
	instance_destroy();