if obj_player1.character = "P" or obj_player1.character == "V"
	sprite_index = choose(spr_shroomcollect,spr_tomatocollect,spr_cheesecollect,spr_sausagecollect,spr_pineapplecollect)
if obj_player1.character = "N"
	sprite_index = choose(spr_halloweencollectibles1,spr_halloweencollectibles2,spr_halloweencollectibles3,spr_halloweencollectibles4,spr_halloweencollectibles5)
if obj_player1.character = "S"
	sprite_index = spr_snickcollectible1
if obj_player1.character = "SP"
	sprite_index = choose(spr_sugarycollectibles1, spr_sugarycollectibles2, spr_sugarycollectibles3, spr_sugarycollectibles4, spr_sugarycollectibles5, spr_sugarycollectibles6, spr_sugarycollectibles7, spr_sugarycollectibles8, spr_sugarycollectibles9, spr_sugarycollectibles10);
	
if string_startswith(room_get_name(room), "strongcold")
	sprite_index = choose(spr_xmastopping1,spr_xmastopping2,spr_xmastopping3,spr_xmastopping4,spr_xmastopping5)
if global.snickrematch
	sprite_index = choose(spr_shroomcollect_re, spr_tomatocollect_re, spr_cheesecollect_re, spr_sausagecollect_re, spr_pineapplecollect_re);

grav = 0.5
hsp = random_range(-10, 10)
vsp = random_range(-5, 0)