if (place_meeting(x,y,obj_player1) or place_meeting(x,y,obj_antonball)) && obj_player1.state != states.gameover
&& sprite_index == spr_closed
{
	global.heattime = 60;
	if content != obj_bigcollect
		ds_list_add(global.saveroom, id);
	
	if content != obj_bigcollect
	{
		audio_stop_sound(sfx_collecttoppin)
		scr_soundeffect(sfx_collecttoppin)
	}
	else if content == obj_bigcollect
	{
		audio_stop_sound(sfx_stompenemy)
		scr_soundeffect(sfx_stompenemy)
	}
	
	if content == obj_noisebomb
	{
		with obj_player1
		{
			state = states.backbreaker
			sprite_index = spr_player_bossintro
			image_index = 0
		}
		with instance_create(x,y-25,content)
			sprite_index = spr_intro
		
		/*
		instance_create(x,y,obj_localtaunteffect)
		instance_create(x,y+ 600, obj_itspizzatime)

		global.panic = true

		//DDP Set global timer based on current stage
		switch(room) {
			case floor1_room11:
				global.minutes = 2
				global.seconds = 30
				break
			case floor2_roomtreasure:
				global.minutes = 2
				global.seconds = 40
				break
			case floor3_roomtreasure:
				global.minutes = 2
				global.seconds = 30
				break
			case floor4_roomtreasure:
				global.minutes = 2
				global.seconds = 0
				break
			case floor5_roomtreasure:
				global.minutes = 2
				global.seconds = 0
				break
		}

		//DDP Set up maximum possible time for background wave shader
		global.wave = 0
		global.maxwave = (global.minutes * 60 + global.seconds) * 60

		// Start up panicbg effects if option is enabled
		if global.panicbg {
			scr_panicbg_init()
		}
		*/
	}
	
	if object_get_parent(content) == obj_pizzakinparent
	{
		with instance_create(x,y,obj_smallnumber)
			number = "1000";
		global.collect += 1000;
		
		instance_create(x,y,obj_localtaunteffect);
		with instance_create(x,y-25,content)
		{
			if sc_check()
				sprite_index = spr_intro_strongcold;
			else
				sprite_index = spr_intro;
		}
		
		var toppinname = "TOPPINS";
		if check_sugary()
			toppinname = "CONFECTI";
		
		with obj_tv
		{
			if global.toppintotal < 5
				message = "YOU NEED " + string(5 - global.toppintotal) + " MORE " + toppinname + "!";
			else
				message = "YOU HAVE ALL " + toppinname + "!";
			showtext = true;
			alarm[0] = 150;
		}
		global.toppintotal += 1;
	
		if content == obj_pizzakinshroom or content == obj_toppinmallow
			global.shroomfollow = true;
		if content == obj_pizzakincheese
			global.cheesefollow = true;
		if content == obj_pizzakintomato
			global.tomatofollow = true;
		if content == obj_pizzakinsausage
			global.sausagefollow = true;
		if content == obj_pizzakinpineapple
			global.pineapplefollow = true;
	}
	
	image_index = 0;
	sprite_index = spr_open
}

if sprite_index == spr_open
{
	if floor(image_index) >= 3 && !createdpizza && content == obj_bigcollect
	{
	    createdpizza = true
		depth = 105
	    with instance_create(x, y, content)
			owner = other.id;
	}
	
	if floor(image_index) >= image_number - 1
		instance_destroy();
}

if place_meeting(x, y, obj_otherplayer)
	image_alpha = 0.5;
else
	image_alpha = 1;

with obj_player1
	if character == "S" instance_destroy(other);