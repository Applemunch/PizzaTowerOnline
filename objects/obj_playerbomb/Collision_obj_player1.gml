if !sync && place_meeting(x, y - 1, other) && y > other.y && other.vsp > 0 && other.state == states.pogo && other.sprite_index != spr_playerN_pogobounce
{
	instance_create(other.x, other.y + 50, obj_stompeffect);
	scr_soundeffect(sfx_stompenemy);
	
	other.pogospeedprev = false;
	other.sprite_index = spr_playerN_pogobounce;
	other.movespeed = 0;
	other.vsp = -1;
	other.image_index = 0;
	
	vsp = 6;
}