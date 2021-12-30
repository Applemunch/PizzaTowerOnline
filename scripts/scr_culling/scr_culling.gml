function scr_culling()
{
	if !sprite_exists(sprite_index) or !rectangle_in_rectangle(x - sprite_xoffset, y - sprite_xoffset, x - sprite_xoffset + sprite_width, y - sprite_yoffset + sprite_height, _camx, _camy, _camx + _camw, _camy + _camh)
		return true;
	return false;
}
