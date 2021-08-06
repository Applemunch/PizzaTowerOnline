function scr_collectsprite()
{
	var spr = spr_sausagecollect;
	
	if obj_player1.character == "N"
		spr = choose(spr_halloweencollectibles1,spr_halloweencollectibles2,spr_halloweencollectibles3,spr_halloweencollectibles4,spr_halloweencollectibles5)
	else if obj_player1.character == "S"
		spr = spr_snickcollectible1
	else if obj_player1.character == "SP"
	{
		if global.gameplay == 0
			spr = choose(spr_sugarycollectibles1, spr_sugarycollectibles2, spr_sugarycollectibles3, spr_sugarycollectibles4, spr_sugarycollectibles5, spr_sugarycollectibles6, spr_sugarycollectibles7, spr_sugarycollectibles8, spr_sugarycollectibles9, spr_sugarycollectibles10);
		else
			spr = choose(spr_sugarycollect1_NEW, spr_sugarycollect2_NEW, spr_sugarycollect3_NEW, spr_sugarycollect4_NEW, spr_sugarycollect5_NEW, spr_sugarycollect6_NEW, spr_sugarycollect7_NEW, spr_sugarycollect8_NEW, spr_sugarycollect9_NEW, spr_sugarycollect10_NEW);
	}
	else
	{
		if global.gameplay == 0
			spr = choose(spr_shroomcollect,spr_tomatocollect,spr_cheesecollect,spr_sausagecollect,spr_pineapplecollect)
		else
			spr = choose(spr_sausagecollect_NEW, spr_shroomcollect_NEW, spr_pineapplecollect_NEW, spr_tomatocollect_NEW, spr_cheesecollect_NEW)
	}

	if string_startswith(room_get_name(room), "strongcold")
		spr = choose(spr_xmastopping1,spr_xmastopping2,spr_xmastopping3,spr_xmastopping4,spr_xmastopping5)
	if global.snickrematch
		spr = choose(spr_shroomcollect_re, spr_tomatocollect_re, spr_cheesecollect_re, spr_sausagecollect_re, spr_pineapplecollect_re);
	
	return spr;
}