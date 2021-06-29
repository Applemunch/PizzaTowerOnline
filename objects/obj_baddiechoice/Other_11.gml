with baddiemenu
{
	showbaddie = true;
	
	instance_destroy(baddieid, false);
	instance_destroy(obj_treasureguybox);
	
	refresh = 100
	content = other.selarray[other.sel[0]][0];
}

scr_soundeffect(sfx_collecttoppin);
instance_destroy();