if other.key_up2 && other.state == states.normal && !instance_exists(obj_option)
{
	scr_soundeffect(sfx_collecttoppin);
	instance_create(0, 0, obj_option);
	
	other.state = -1;
	other.hsp = 0;
	other.vsp = 0;
}