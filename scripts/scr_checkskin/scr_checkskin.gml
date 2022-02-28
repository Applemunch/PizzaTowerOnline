function scr_checkskin(argument0)
{
	if !instance_exists(obj_player)
		return false;
	
	enum checkskin
	{
		p_anton,
		p_antononly,
		p_peter,
		p_sage,
		p_gray,
		n_hardoween,
		n_big,
		n_nose,
		s_shit,
		s_sbombic
	}
	
	if argument0 == checkskin.p_anton // anton or annie
		return (obj_player.character == "P" && obj_player.paletteselect == 13) or (obj_player.character == "SP" && obj_player.paletteselect == 13);
	if argument0 == checkskin.p_antononly // only anton (for the voice clip)
		return obj_player.character == "P" && obj_player.paletteselect == 13;
	if argument0 == checkskin.p_peter
		return obj_player.character == "P" && obj_player.paletteselect == 17;
	if argument0 == checkskin.p_sage
		return obj_player.character == "P" && obj_player.paletteselect == 18;
	if argument0 == checkskin.p_gray
		return obj_player.character == "P" && obj_player.paletteselect == 5;
	if argument0 == checkskin.n_hardoween
		return global.gameplay == 0 && obj_player.character == "N" && obj_player.paletteselect == 1;
	if argument0 == checkskin.n_big
		return obj_player.character == "N" && obj_player.paletteselect == 14;
	if argument0 == checkskin.n_nose
		return obj_player.character == "N" && obj_player.paletteselect == 17;
	if argument0 == checkskin.s_shit
		return obj_player.character == "S" && obj_player.paletteselect == 11;
	if argument0 == checkskin.s_sbombic
		return obj_player.character == "S" && obj_player.paletteselect == 13;
	
	return false;
}