// Sprites
if x != xprevious
{
	sprite_index = spr_petrun;
	xscale = sign(x - xprevious);
}
else
	sprite_index = spr_petidle;
depth = -6;

if petind != obj_player1.petfollow
{
	petind = obj_player1.petfollow;
	scr_petspr(petind);
	
	repeat 5
	{
		with instance_create(x + random_range(-50, 50), y + 25 + random_range(-25, 50), obj_cloudeffect)
			depth = other.depth - 1;
	}
}

if obj_player1.character == "S"
	xoffsetmax = 45;
else if petind == 1 or petind == 7 // noiserat or grunt
	xoffsetmax = 40; 
else
	xoffsetmax = 35;

if room == rank_room
	visible = false;

// misty float
if petind == 10 or petind == 11
{
	var sindiv = 20;
	if petind == 11
		sindiv = 15;
	
	siner++;
	yoffset = floor(-5 + sin(siner / sindiv) * -5);
}
else
	yoffset = 0;

// sync
if instance_exists(obj_gms) && gms_info_isloggedin()
{
	gms_self_set("petx", x);
	gms_self_set("pety", y + yoffset + yslope);
}