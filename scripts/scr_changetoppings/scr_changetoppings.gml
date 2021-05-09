function scr_changetoppings() {
	if string_startswith(room_get_name(room), "strongcold")
		exit;

	with (obj_collect)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "M"
				sprite_index = choose(spr_shroomcollect,spr_tomatocollect,spr_cheesecollect,spr_sausagecollect,spr_pineapplecollect)
			if obj_player1.character = "N"
				sprite_index = choose(spr_halloweencollectibles1,spr_halloweencollectibles2,spr_halloweencollectibles3,spr_halloweencollectibles4,spr_halloweencollectibles5)
			if obj_player1.character = "S"
				sprite_index = spr_snickcollectible1
			if obj_player1.character = "SP"
				sprite_index = choose(spr_sugarycollectibles1, spr_sugarycollectibles2, spr_sugarycollectibles3, spr_sugarycollectibles4, spr_sugarycollectibles5, spr_sugarycollectibles6, spr_sugarycollectibles7, spr_sugarycollectibles8, spr_sugarycollectibles9, spr_sugarycollectibles10);

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-5,5), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}
	with (obj_bigcollect)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "M"
				sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
			if obj_player1.character = "N"
				sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween)
			if obj_player1.character = "S"
				sprite_index = spr_snickcollectible2
			if obj_player1.character = "SP"
				sprite_index = choose(spr_pizzacollect1_ss, spr_pizzacollect2_ss, spr_pizzacollect3_ss)

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-10,10), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}

	with (obj_giantcollect)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "M"
				sprite_index = spr_giantpizza
			if obj_player1.character = "N"
				sprite_index = spr_giantpizzahalloween
			if obj_player1.character = "S"
				sprite_index = spr_snickcollectible3
			if obj_player1.character = "SP"
				sprite_index = spr_giantpizza_ss

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (5) instance_create(x+sprite_width/2+random_range(-15,15), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}

	with (obj_destroyable2)
	{
		if ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "S" or obj_player1.character == "M"
				sprite_index = spr_destroyable2
			if obj_player1.character = "N"
				sprite_index = spr_halloweensmallblock
			if obj_player1.character = "SP"
				sprite_index = spr_destroyable2_ss

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-5,5), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}


	with (obj_destroyable2escape)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "S" or obj_player1.character == "M"
				sprite_index = spr_destroyable21
			if obj_player1.character = "N"
				sprite_index = spr_halloweensmallblockescape
			if obj_player1.character = "SP"
				sprite_index = spr_destroyable2escape_ss

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-5,5), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}

	with (obj_destroyable2_big)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "S" or obj_player1.character == "M"
				sprite_index = spr_bigbreakable
			if obj_player1.character = "N"
				sprite_index = spr_halloweenbigblock
			if obj_player1.character = "SP"
				sprite_index = spr_destroyable2big_ss

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-10,10), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}

	with (obj_destroyable2_bigescape)
	{
		if  ds_list_find_index(global.saveroom, id) = -1  
		{
			if obj_player1.character = "P" or obj_player1.character == "V" or obj_player1.character == "S" or obj_player1.character == "M"
				sprite_index = spr_bigbreakableescape
			if obj_player1.character = "N"
				sprite_index = spr_halloweenbigblockescape
			if obj_player1.character = "SP"
				sprite_index = spr_destroyable2bigescape_ss

			instance_create(x+sprite_width/2,y+sprite_height/2,obj_cloudeffect)
			repeat (3) instance_create(x+sprite_width/2+random_range(-10,10), y +sprite_height/2+random_range(-5,5), obj_cloudeffect)
		}
	}


}
