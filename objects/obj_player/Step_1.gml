/// @description other??
if !patron
	global.gameplay = 0;

// pizzelle new grab sprite
if character == "SP"
{
	if global.gameplay == 0
		spr_suplexdash = spr_playerSP_suplexdash;
	else
		spr_suplexdash = spr_playerSP_suplexdash_NEW;
}
