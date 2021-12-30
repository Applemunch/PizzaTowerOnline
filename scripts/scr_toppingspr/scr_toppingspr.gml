function scr_collectsprite(single = false)
{
	var spr = -1, toppings = [spr_sausagecollect];
	var char = (instance_exists(obj_player1) ? obj_player1.character : "P");
	
	if object_index == obj_collectescape
		toppings = [spr_fishcollect, spr_bananacollect, spr_eggcollect, spr_shrimpcollect, spr_baconcollect];
	else
	{
		// noise
		if char == "N"
			toppings = [spr_halloweencollectibles1, spr_halloweencollectibles2, spr_halloweencollectibles3, spr_halloweencollectibles4, spr_halloweencollectibles5];
		// snick
		else if char == "S"
			toppings = [spr_snickcollectible1];
		// pizzelle
		else if char == "SP"
		{
			if global.gameplay == 0
				toppings = [spr_sugarycollectibles1, spr_sugarycollectibles2, spr_sugarycollectibles3, spr_sugarycollectibles4, spr_sugarycollectibles5, spr_sugarycollectibles6, spr_sugarycollectibles7, spr_sugarycollectibles8, spr_sugarycollectibles9, spr_sugarycollectibles10];
			else
				toppings = [spr_sugarycollect1_NEW, spr_sugarycollect2_NEW, spr_sugarycollect3_NEW, spr_sugarycollect4_NEW, spr_sugarycollect5_NEW, spr_sugarycollect6_NEW, spr_sugarycollect7_NEW, spr_sugarycollect8_NEW, spr_sugarycollect9_NEW, spr_sugarycollect10_NEW];
		}
		// default / peppino
		else
		{
			if global.gameplay == 0
				toppings = [spr_shroomcollect, spr_tomatocollect, spr_cheesecollect, spr_sausagecollect, spr_pineapplecollect];
			else
				toppings = [spr_sausagecollect_NEW, spr_shroomcollect_NEW, spr_pineapplecollect_NEW, spr_tomatocollect_NEW, spr_cheesecollect_NEW];
		}
	
		// strongcold
		if string_startswith(room_get_name(room), "strongcold")
			toppings = [spr_xmastopping1, spr_xmastopping2, spr_xmastopping3, spr_xmastopping4, spr_xmastopping5];
		// snick rematch
		if global.snickrematch
			toppings = [spr_shroomcollect_re, spr_tomatocollect_re, spr_cheesecollect_re, spr_sausagecollect_re, spr_pineapplecollect_re];
	}
	
	// random sprite
	if single
		spr = toppings[0];
	else
		spr = toppings[irandom(array_length(toppings) - 1)];
	return spr;
}