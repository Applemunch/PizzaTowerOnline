//Draw Text
draw_set_halign(fa_center);
draw_set_color(c_white)
draw_self()

if place_meeting(x,y,obj_player1) && !drawing
{
	drawing = true
	obj_tv.manualhide = manualhide
}

if (!place_meeting(x,y,obj_player1) or obj_player1.state == states.victory) && drawing
{
	obj_camera.panto = [0, 0];
	
	drawing = false
	obj_tv.manualhide = false
}

if drawing
{
	if !readsave
	{
		ini_open("saveData.ini");
		
		tamin = ini_read_real("TAmin", string(level), -1);
		tasec = ini_read_real("TAsec", string(level), -1);
		tachar = ini_read_string("TAchar", string(level), "???");
		
		toppin1 = ini_read_real("Toppin", string(level) + "1", 0);
		toppin2 = ini_read_real("Toppin", string(level) + "2", 0);
		toppin3 = ini_read_real("Toppin", string(level) + "3", 0);
		toppin4 = ini_read_real("Toppin", string(level) + "4", 0);
		toppin5 = ini_read_real("Toppin", string(level) + "5", 0);
		
		secret = ini_read_string("Secret", string(level), 0);
		highscore = ini_read_real("Highscore", string(level), 0);
		
		ini_close();
		readsave = true;
	}
	
	if tamin >= 0 && global.timeattack
	{
		draw_set_colour(c_yellow);
		draw_set_font(global.font_small);
		
		var middle = ":";
		if tasec < 10
			middle = ":0";
		draw_text(x,y-60, string(tamin) + middle + string(tasec) + " (" + tachar + ")")
	}
	
	draw_set_font(global.bigfont)
	draw_set_colour(c_white);
	
	var outof = 6;
	if level == "etb"
		outof = 2;
	if level == "mansion"
		outof = 3;
	
	var scory = -90;
	
	if level != "snickchallenge" && level != "snickrematch" && level != "eatery" && level != "dragonlair" && level != ""
	{
		scory = -160;
		if level != "freezer" && level != "sewer" && level != "factory" && level != "golf"
		&& global.gameplay == 0
		{
			if sprite_index == spr_entrancegate && obj_player1.state == states.normal
				obj_camera.panto = [0, -32];
			draw_text(x, y - 200, string(secret) + " OF " + string(outof) + " SECRET");
		}
		
		if toppin1
		{
			if level == "strongcold"
				draw_sprite(spr_xmasshroomtoppin_idle, -1, x - 75, y - 120)
			else if level == "steamcc"
				draw_sprite(spr_toppinmallow, -1, x - 75, y - 120)
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinshroom, -1, x - 75, y - 120)
				else
					draw_sprite(spr_toppinshroom_NEW, 3, x - 75, y - 120)
			}
		}
		else
		{
			if level == "steamcc"
				draw_sprite(spr_toppinSP_startgate, 0, x - 75, y - 120);
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinshroom_pause, -1, x- 75, y - 120)
				else
					draw_sprite(spr_toppinNEW_startgate, 4, x- 75, y - 120)
			}
		}


		if toppin2
		{
			if level == "strongcold"
				draw_sprite(spr_xmascheesetoppin_idle, -1, x - 35, y - 120)
			else if level == "steamcc"
				draw_sprite(spr_toppinchoc, -1, x - 35, y - 120)
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppincheese, -1, x - 35, y - 120)
				else
					draw_sprite(spr_toppincheese_NEW, 5, x - 35, y - 120)
			}
		}
		else
		{
			if level == "steamcc"
				draw_sprite(spr_toppinSP_startgate, 1, x - 35, y - 120);
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppincheese_pause, -1, x- 35, y - 120)
				else
					draw_sprite(spr_toppinNEW_startgate, 2, x- 35, y - 120)
			}
		}


		if toppin3
		{
			if level == "strongcold"
				draw_sprite(spr_xmastomatotoppin_idle, -1, x, y - 120)
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppintomato, -1, x, y - 120)
				else
					draw_sprite(spr_toppintomato_NEW, 2, x, y - 120)
			}
		}
		else
		{
			if level == "steamcc"
				draw_sprite(spr_toppinSP_startgate, 2, x, y - 120);
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppintomato_pause, -1, x, y - 120)
				else
					draw_sprite(spr_toppinNEW_startgate, 3, x, y - 120)
			}
		}

		if toppin4
		{
			if level == "strongcold"
				draw_sprite(spr_xmassausagetoppin_idle, -1, x + 35, y - 120)
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinsausage, -1, x + 35, y - 120)
				else
					draw_sprite(spr_toppinsausage_NEW, 0, x + 35, y - 120)
			}
		}
		else
		{
			if level == "steamcc"
				draw_sprite(spr_toppinSP_startgate, 3, x + 35, y - 120);
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinsausage_pause, -1, x + 35, y - 120)
				else
					draw_sprite(spr_toppinNEW_startgate, 1, x + 35, y - 120)
			}
		}
	
		if toppin5
		{
			if level == "strongcold"
				draw_sprite(spr_xmaspineappletoppin_idle, -1, x + 75, y - 120)
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinpineapple, -1, x + 75, y - 120)
				else
					draw_sprite(spr_toppinpineapple_NEW, 0, x + 75, y - 120)
			}
		}
		else
		{
			if level == "steamcc"
				draw_sprite(spr_toppinSP_startgate, 4, x + 75, y - 120);
			else
			{
				if global.gameplay == 0
					draw_sprite(spr_toppinpineapple_pause, -1, x + 75, y - 120)
				else
					draw_sprite(spr_toppinNEW_startgate, 0, x + 75, y - 120)
			}
		}
	}
	
	if level != "eatery" && level != ""
		draw_text(x,y + scory, string(highscore))
	
	ini_close();
}