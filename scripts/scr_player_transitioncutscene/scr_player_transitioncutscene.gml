function scr_player_transitioncutscene() {
	costumercutscenetimer --

	//Knock door trigger
	if sprite_index= spr_player_knock && costumercutscenetimer < 0
	{
	
		xscale *= -1
		hsp = 5
		sprite_index = spr_player_move
		costumercutscenetimer = 35
	}

	//Stop walking and go in give pizza animation
	if sprite_index= spr_player_move && costumercutscenetimer < 0
	{
		with (obj_costumerdoor)
		{
			image_index = 1
			instance_create(x,y,obj_costumer)
		}
		image_index = 0
	hsp = 0
	xscale *= -1
	sprite_index =spr_player_givepizza

	}

	//Rank transition
	if sprite_index = spr_player_levelcomplete && costumercutscenetimer < 0 
	{

	if grounded && (x > other.x + 32 && x < other.x + 160) && key_up && (state = states.normal or state = states.mach1 or state = states.mach2 or state = states.mach3)
	{

	if global.collect >= global.srank
	{
		global.rank = "s"
	}
	else if global.collect > global.arank
	{
		global.rank = "a"
	}
	else if global.collect > global.brank
	{
		global.rank = "b"
	}
	else if global.collect > global.crank
	{
		global.rank = "c"
	}
	else 
	{
		global.rank = "d"
	}

	//Level rank saves

	ini_open("saveData.ini");




	if room == floor1_room11
	{
	ini_open("saveData.ini");
	if global.deserttoppin1 != true
	ini_write_string("Toppin","desert1",global.shroomfollow);
	if global.deserttoppin2 != true
	ini_write_string("Toppin","desert2",global.cheesefollow );
	if global.deserttoppin3 != true
	ini_write_string("Toppin","desert3",global.tomatofollow);
	if global.deserttoppin4 != true
	ini_write_string("Toppin","desert4",global.sausagefollow);
	if global.deserttoppin5 != true
	ini_write_string("Toppin","desert5",global.pineapplefollow);


	if global.deserthighscore < global.collect
	ini_write_string("Highscore","desert",global.collect);



	if global.rank = "s"
	ini_write_string("Ranks","desert",global.rank)
	if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks","desert","none")
	ini_write_string("Ranks","desert",global.rank)
	if global.rank = "b" && "s"  !=  ini_read_string("Ranks","desert","none") && "a"  !=  ini_read_string("Ranks","desert","none")
	ini_write_string("Ranks","desert",global.rank)
	if global.rank = "c" && "s"  !=  ini_read_string("Ranks","desert","none") && "a"  !=  ini_read_string("Ranks","desert","none") && "b"  !=  ini_read_string("Ranks","desert","none") 
	ini_write_string("Ranks","desert",global.rank)
	if global.rank = "d" && "s"  !=  ini_read_string("Ranks","desert","none") && "a"  !=  ini_read_string("Ranks","desert","none") && "b"  !=  ini_read_string("Ranks","desert","none") && "c"  !=  ini_read_string("Ranks","desert","none") 
	ini_write_string("Ranks","desert",global.rank)
	}


	if room == floor2_room0
	{
	ini_open("saveData.ini");




	if global.mansionhighscore < global.collect
	ini_write_string("Highscore","mansion",global.collect);


	if global.mansiontoppin1 != true
	ini_write_string("Toppin","mansion1",global.shroomfollow);
	if global.mansiontoppin2 != true
	ini_write_string("Toppin","mansion2",global.cheesefollow );
	if global.mansiontoppin3 != true
	ini_write_string("Toppin","mansion3",global.tomatofollow);
	if global.mansiontoppin4 != true
	ini_write_string("Toppin","mansion4",global.sausagefollow);
	if global.mansiontoppin5 != true
	ini_write_string("Toppin","mansion5",global.pineapplefollow);

	if global.rank = "s"
	ini_write_string("Ranks","mansion",global.rank)
	if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks","mansion","none")
	ini_write_string("Ranks","mansion",global.rank)
	if global.rank = "b" && "s"  !=  ini_read_string("Ranks","mansion","none") && "a"  !=  ini_read_string("Ranks","mansion","none")
	ini_write_string("Ranks","mansion",global.rank)
	if global.rank = "c" && "s"  !=  ini_read_string("Ranks","mansion","none") && "a"  !=  ini_read_string("Ranks","mansion","none") && "b"  !=  ini_read_string("Ranks","mansion","none") 
	ini_write_string("Ranks","mansion",global.rank)
	if global.rank = "d" && "s"  !=  ini_read_string("Ranks","mansion","none") && "a"  !=  ini_read_string("Ranks","mansion","none") && "b"  !=  ini_read_string("Ranks","mansion","none") && "c"  !=  ini_read_string("Ranks","mansion","none") 
	ini_write_string("Ranks","mansion",global.rank)
	}


	if room == floor3_room0
	{
	ini_open("saveData.ini");



	if global.factoryhighscore < global.collect
	ini_write_string("Highscore","factory",global.collect);



	if global.factorytoppin1 != true
	ini_write_string("Toppin","factory1",global.shroomfollow);
	if global.factorytoppin2 != true
	ini_write_string("Toppin","factory2",global.cheesefollow );
	if global.factorytoppin3 != true
	ini_write_string("Toppin","factory3",global.tomatofollow);
	if global.factorytoppin4 != true
	ini_write_string("Toppin","factory4",global.sausagefollow);
	if global.factorytoppin5 != true
	ini_write_string("Toppin","factory5",global.pineapplefollow);

	if global.rank = "s"
	ini_write_string("Ranks","factory",global.rank)
	if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks","factory","none")
	ini_write_string("Ranks","factory",global.rank)
	if global.rank = "b" && "s"  !=  ini_read_string("Ranks","factory","none") && "a"  !=  ini_read_string("Ranks","factory","none")
	ini_write_string("Ranks","factory",global.rank)
	if global.rank = "c" && "s"  !=  ini_read_string("Ranks","factory","none") && "a"  !=  ini_read_string("Ranks","factory","none") && "b"  !=  ini_read_string("Ranks","factory","none") 
	ini_write_string("Ranks","factory",global.rank)
	if global.rank = "d" && "s"  !=  ini_read_string("Ranks","factory","none") && "a"  !=  ini_read_string("Ranks","factory","none") && "b"  !=  ini_read_string("Ranks","factory","none") && "c"  !=  ini_read_string("Ranks","factory","none") 
	ini_write_string("Ranks","factory",global.rank)
	}



	if room == floor4_room0
	{
	ini_open("saveData.ini");


	if global.sewerhighscore < global.collect
	ini_write_string("Highscore","sewer",global.collect);



	if global.sewertoppin1 != true
	ini_write_string("Toppin","sewer1",global.shroomfollow);
	if global.sewertoppin2 != true
	ini_write_string("Toppin","sewer2",global.cheesefollow );
	if global.sewertoppin3 != true
	ini_write_string("Toppin","sewer3",global.tomatofollow);
	if global.sewertoppin4 != true
	ini_write_string("Toppin","sewer4",global.sausagefollow);
	if global.sewertoppin5 != true
	ini_write_string("Toppin","sewer5",global.pineapplefollow);


	if global.rank = "s"
	ini_write_string("Ranks","sewer",global.rank)
	if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks","sewer","none")
	ini_write_string("Ranks","sewer",global.rank)
	if global.rank = "b" && "s"  !=  ini_read_string("Ranks","sewer","none") && "a"  !=  ini_read_string("Ranks","sewer","none")
	ini_write_string("Ranks","sewer",global.rank)
	if global.rank = "c" && "s"  !=  ini_read_string("Ranks","sewer","none") && "a"  !=  ini_read_string("Ranks","sewer","none") && "b"  !=  ini_read_string("Ranks","sewer","none") 
	ini_write_string("Ranks","sewer",global.rank)
	if global.rank = "d" && "s"  !=  ini_read_string("Ranks","sewer","none") && "a"  !=  ini_read_string("Ranks","sewer","none") && "b"  !=  ini_read_string("Ranks","sewer","none") && "c"  !=  ini_read_string("Ranks","sewer","none") 
	ini_write_string("Ranks","sewer",global.rank)
	}

	if room == floor5_room1
	{
	
	
		if global.freezerhighscore < global.collect
	ini_write_string("Highscore","freezer",global.collect);
	
	
	if global.freezertoppin1 != true
	ini_write_string("Toppin","freezer1",global.shroomfollow);
	if global.freezertoppin2 != true
	ini_write_string("Toppin","freezer2",global.cheesefollow );
	if global.freezertoppin3 != true
	ini_write_string("Toppin","freezer3",global.tomatofollow);
	if global.freezertoppin4 != true
	ini_write_string("Toppin","freezer4",global.sausagefollow);
	if global.freezertoppin5 != true
	ini_write_string("Toppin","freezer5",global.pineapplefollow);
	
	ini_open("saveData.ini");
	if global.rank = "s"
	ini_write_string("Ranks","freezer",global.rank)
	if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks","freezer","none")
	ini_write_string("Ranks","freezer",global.rank)
	if global.rank = "b" && "s"  !=  ini_read_string("Ranks","freezer","none") && "a"  !=  ini_read_string("Ranks","freezer","none")
	ini_write_string("Ranks","freezer",global.rank)
	if global.rank = "c" && "s"  !=  ini_read_string("Ranks","freezer","none") && "a"  !=  ini_read_string("Ranks","freezer","none") && "b"  !=  ini_read_string("Ranks","freezer","none") 
	ini_write_string("Ranks","freezer",global.rank)
	if global.rank = "d" && "s"  !=  ini_read_string("Ranks","freezer","none") && "a"  !=  ini_read_string("Ranks","freezer","none") && "b"  !=  ini_read_string("Ranks","freezer","none") && "c"  !=  ini_read_string("Ranks","freezer","none") 
	ini_write_string("Ranks","freezer",global.rank)
	}

	ini_close(); 


	if !instance_exists(obj_endlevelfade)
	{
	instance_create(x,y,obj_endlevelfade)
	}

	if state != states.door
	{
		audio_stop_all()
	state = states.door
	obj_endlevelfade.alarm[0] = 235
	image_index = 0
	}

	}
	
	}


	//Stop animation
	if sprite_index =spr_player_givepizza && floor(image_index) = image_number - 1
	image_speed = 0

	if sprite_index =spr_player_levelcomplete && floor(image_index) = image_number - 1
	image_speed = 0


}
