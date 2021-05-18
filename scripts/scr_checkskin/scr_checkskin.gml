function scr_checkskin(argument0)
{
	enum checkskin
	{
		p_anton,
		p_antononly,
		p_peter,
		p_sage,
		p_gray,
		n_big,
		s_shit,
		s_sbombic
	}

	if argument0 == checkskin.p_anton
		return (obj_player1.character == "P" && obj_player1.paletteselect == 13) or (obj_player1.character == "SP" && obj_player1.paletteselect == 13);
	if argument0 == checkskin.p_antononly
		return obj_player1.character == "P" && obj_player1.paletteselect == 13;
	if argument0 == checkskin.p_peter
		return obj_player1.character == "P" && obj_player1.paletteselect == 17;
	if argument0 == checkskin.p_sage
		return (obj_player1.character == "P" && obj_player1.paletteselect == 18);
	if argument0 == checkskin.p_gray
		return obj_player1.character == "P" && obj_player1.paletteselect == 5;
	if argument0 == checkskin.n_big
		return obj_player1.character == "N" && obj_player1.paletteselect == 15;
	if argument0 == checkskin.s_shit
		return obj_player1.character == "S" && obj_player1.paletteselect == 11;
	if argument0 == checkskin.s_sbombic
		return obj_player1.character == "S" && obj_player1.paletteselect == 13;

	return false;
}