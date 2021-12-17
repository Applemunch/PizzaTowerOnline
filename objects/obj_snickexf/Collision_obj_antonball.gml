scr_soundeffect(sfx_antonballbrick1);
if x != other.x
	other.hsp = sign(other.x - x) * 6;
if y != other.y
	other.vsp = sign(other.y - y) * 4;
