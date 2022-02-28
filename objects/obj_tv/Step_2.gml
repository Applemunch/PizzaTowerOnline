// Transformation prompts
if room != Realtitlescreen && global.gameplay != 0
{
	if !ds_exists(special_prompts, ds_type_map)
	or special_prompts == noone
	{
	    special_prompts = ds_map_create();
	
	    ini_open("saveData" + global.saveslot + ".ini");
	    ds_map_set(special_prompts, "knight", ini_read_real("Prompts", "knight", 0));
	    ds_map_set(special_prompts, "boxxedpep", ini_read_real("Prompts", "boxxedpep", 0));
	    ds_map_set(special_prompts, "mort", ini_read_real("Prompts", "mort", 0));
	    ds_map_set(special_prompts, "squished", ini_read_real("Prompts", "squished", 0));
	    ds_map_set(special_prompts, "skateboard", ini_read_real("Prompts", "skateboard", 0));
	    ds_map_set(special_prompts, "cheeseball", ini_read_real("Prompts", "cheeseball", 0));
	    ds_map_set(special_prompts, "shotgun", ini_read_real("Prompts", "shotgun", 0));
	    ds_map_set(special_prompts, "ghost", ini_read_real("Prompts", "ghost", 0));
	    ds_map_set(special_prompts, "firemouth", ini_read_real("Prompts", "firemouth", 0));
	    ds_map_set(special_prompts, "fireass", ini_read_real("Prompts", "fireass", 0));
	    ds_map_set(special_prompts, "bombpep", ini_read_real("Prompts", "bombpep", 0));
	    ds_map_set(special_prompts, "rocket", ini_read_real("Prompts", "rocket", 0));
	    ini_close();
	}
}
else
	special_prompts = noone;

// tv visibility
if room == rank_room or room == timesuproom or room == boss_room1 or room == Oldtitlescreen or room == characterselect or room == editor_entrance
or (instance_exists(obj_gms) && global.__chat)
{
	visible = false
	if global.gameplay != 0
	{
	    animset = spr_tv_off;
	    tvsprite = spr_tv_idle;
		image_index = 0;
		state = states.transitioncutscene;
	}
}
else
	visible = true

// check if sugary tv
with obj_player1
	other.sugary = (character == "SP" or character == "SN");

//Text
panicy = 600 + (string_height(message) - 16);
if showtext
{
	xi = (960 / 2) + random_range(1, -1);
	if yi > 500 + 32
		yi -= 5
	else
		yi = 500 + 32
}
else
{
	xi = (960 / 2) + random_range(1,-1)
	if yi < panicy
		yi += 1
	else
		yi = panicy
}

#region old hud

if global.gameplay == 0
{
	if surface_exists(promptsurface)
	{
		surface_free(promptsurface);
		tvsprite = spr_tvdefault;
	}
	
	// More logic
	if (instance_exists(obj_player1) && obj_player1.y < camera_get_view_y(view_camera[0]) + 200 && obj_player1.x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200)
	or manualhide
		alpha = 0.5
	else if !( room == rank_room or room == timesuproom or room == boss_room1 or room == Realtitlescreen or room == characterselect)
		alpha = 1

	//TV
	//Rank milestone
	if instance_exists(obj_itspizzatime)
	{
		image_speed = 0.25
		message = "GET TO THE EXIT!!"
		alarm[0] = 200
		showtext = true
		tvsprite = spr_tvexit
	}

	else if global.collect >= global.srank && !shownranks && obj_player1.character != "S" && global.srank > 0
	{
		image_speed = 0
		message = "YOU GOT ENOUGH FOR RANK S"
		showtext = true
		alarm[0] = 200
		tvsprite = spr_tvranks
		shownranks = true
	}
	else if global.collect >= global.arank && !shownranka && obj_player1.character != "S" && global.srank > 0
	{
		image_speed = 0
		message = "YOU GOT ENOUGH FOR RANK A"
		showtext = true
		alarm[0] = 200
		tvsprite = spr_tvranka
		shownranka = true
	}
	else if global.collect >= global.brank && !shownrankb && obj_player1.character != "S" && global.srank > 0
	{
		image_speed = 0
		message = "YOU GOT ENOUGH FOR RANK B"
		showtext = true
		alarm[0] = 200
		tvsprite = spr_tvrankb
		shownrankb = true
	}
	else if global.collect >= global.crank && !shownrankc && obj_player1.character != "S" && global.srank > 0
	{
		image_speed = 0
		message = "YOU GOT ENOUGH FOR RANK C"
		showtext = true
		alarm[0] = 200
		tvsprite = spr_tvrankc
		shownrankc = true
	}
	else
	//Clap
	if instance_exists(obj_player1) && obj_player1.sprite_index = spr_player_levelcomplete
	{
		image_speed = 0.1
		alarm[0] = 50
		chose = true
		tvsprite = spr_tvclap
		once = true
	}
	else


	 //Hurt
	if instance_exists(obj_player1) && obj_player1.state = states.hurt 
	{
		image_speed = 0.1
		showtext = true
		if chose = false
			message = choose("OW!", "OUCH!", "OH!", "WOH!")
		alarm[0] = 50
		chose = true
		tvsprite = spr_tvhurt
		once = true
	}
	else //Times Up
	if instance_exists(obj_player1)
	&& (obj_player1.state = states.timesup or obj_player1.state = states.ejected)
	{
		alarm[0] = 50
		image_speed = 0.1
		tvsprite = spr_tvskull
	}


	//Noise miniboss
	else 
	if global.miniboss = true
	{
		alarm[0] = 50
		image_speed = 0.1
		tvsprite = spr_tvnoise
	}

	else //Hurt message
	if global.hurtcounter >= global.hurtmilestone
	{
		alarm[0] = 150
		image_speed = 0.1
		
		var char = "P";
		if instance_exists(obj_player1)
			char = obj_player1.character;
		
		if char == "P"
			character = "PEPPINO"
		else if char == "N"
			character = "THE NOISE"
		else if char == "S"
			character = "SNICK"
		else if char == "V"
			character = "VIGILANTE"
		else if char == "G"
			character = "GLADE"
		else if char == "SP"
			character = "PIZZELLE"
		else if char == "M"
			character = "PEPPERMAN"
		else
			character = "NULLINO"
		
		message = "YOU HAVE HURT " + string(character) + " " + string(global.hurtmilestone) + " TIMES..."
		if tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4
			tvsprite = choose(spr_tvtalking1,spr_tvtalking2,spr_tvtalking3,spr_tvtalking4)
		global.hurtmilestone += 10
	}
	else //Skateboard
	if instance_exists(obj_player1) && obj_player1.state = states.skateboard 
	{
		showtext = true
		message = "SWEET DUDE!!"
		alarm[0] = 50
		tvsprite = spr_tvrad
		once = true
	}

	else //Combo
	if global.combo != 0 && global.combotime != 0 && (tvsprite = spr_tvdefault or tvsprite = spr_tvcombo or tvsprite = spr_tvescape)
	{
		tvsprite = spr_tvcombo
		image_speed = 0
		if global.combo >= 4 {
			imageindexstore = 3
		}
		else {
			imageindexstore = global.combo -1;
		}
	}


	else //Good job combo
	if global.combotime = 0 && tvsprite = spr_tvcombo
	{
		tvsprite = spr_tvcomboresult
		image_index = imageindexstore;
		alarm[0] = 50
	}
	else //Main Menu
	if room = Realtitlescreen 
	{
		image_speed = 0.1
		tvsprite = spr_tvbanana
	
		/*
		if obj_mainmenuselect.selected = false
		{
		if obj_mainmenuselect.optionselected = 0
		{
		showtext = true
	message = "START GAME"
		}
			if obj_mainmenuselect.optionselected = 1
		{
		showtext = true
	message = "OPTION"
		}
			if obj_mainmenuselect.optionselected = 2
		{
		showtext = true
	message = "ERASE DATA"
		}
		}
		else
			{
		showtext = true
	message = ""
		}
		*/
	}

	if instance_exists(obj_player1) && obj_player1.state = states.keyget
	{
	showtext = true
	message = "GOT THE KEY!"
	alarm[0] = 50
	}
	if instance_exists(obj_noise_pushbutton)
	{ 
	if obj_noise_pushbutton.hsp != 0 && global.panic = false
	{
	showtext = true
	message = "UH OH..."
	alarm[0] = 50
	}
	}
}

#endregion
#region new hud

else
{
	alpha = 1;
	
	image_speed = 0.35;
	if bubblespr != noone && bubblespr != spr_tv_bubbleclosed
	{
	    if prompt != noone
	        prompt_buffer = 2;
	    bubbleindex += image_speed;
	    if floor(bubbleindex) == sprite_get_number(bubblespr)
	    {
	        bubbleindex = 0;
	        switch bubblespr
	        {
	            case spr_tv_bubbleopen:
	                bubblespr = spr_tv_bubble;
	                break;
	            case spr_tv_bubbleclose:
	                bubblespr = spr_tv_bubbleclosed;
	                if prompt == noone or prompt == ""
	                    bubblespr = noone;
	                break;
	        }
	    }
	}

	switch state
	{
	    case states.normal:
			if animset != spr_tv_open
	        {
		        idlespr = spr_tv_idle;
			
				if !instance_exists(obj_player1)
				or (obj_player1.character != "P" && obj_player1.character != "N" && obj_player1.character != "SP")
					idlespr = spr_tv_placeholder;
				else
				{
					var _state = states.normal;
					if instance_exists(obj_player1)
					{
						_state = obj_player1.state;
				        if _state == states.hitlag
				            _state = obj_player1.tauntstoredstate;
						if _state == states.backbreaker
						{
							with obj_teleporter
							{
								if alarm[0] > -1 or alarm[1] > -1
									_state = storedstate;
							}
							with obj_warplaser
							{
								if alarm[0] > -1 or alarm[1] > -1
									_state = storedstate;
							}
						}
					}
					
			        switch _state
			        {
						default:
							with obj_player1
			                {
			                    if shotgunAnim
			                        other.idlespr = spr_tv_shotgun;
			                    else if global.mort
			                        other.idlespr = spr_tv_mort;
								else if skateboarding
									other.idlespr = spr_tv_clown;
			                }
			                break;
						
			            case states.knightpep:
			            case states.knightpepslopes:
			            case states.knightpepattack:
			                idlespr = spr_tv_knight;
			                break;
			
			            case states.bombpep:
			                idlespr = spr_tv_bombpep;
			                break;
			
			            case states.fireass:
			                idlespr = spr_tv_fireass;
							with obj_player1
							{
								if sprite_index == spr_scaredjump1
								or sprite_index == spr_scaredjump2
								or sprite_index == spr_scaredjump3
									other.idlespr = spr_tv_scaredjump;
							}
			                break;
			
			            case states.tumble:
			                idlespr = spr_tv_tumble;
			                break;
			
			            case states.firemouth:
			                idlespr = spr_tv_firemouth;
			                break;
			
			            case states.ghost:
			                idlespr = spr_tv_ghost;
			                break;
			
			            case states.stunned:
							with obj_player1
							{
								if sprite_index == spr_squished
									other.idlespr = spr_tv_squished;
							}
			                break;
			
			            case states.barrel:
			                idlespr = spr_tv_barrel;
			                break;
			
			            case states.golf:
			                idlespr = spr_tv_golf;
			                break;
						
			            case states.rocket:
			                idlespr = spr_tv_rocket;
			                break;
						
			            case states.cheeseball:
			                idlespr = spr_tv_cheeseball;
			                break;
						
			            case states.cotton:
			                idlespr = spr_tv_cotton;
			                break;
						
			            case states.cheesepep:
			            case states.cheesepepstick:
			            case states.cheesepepstickside:
			            case states.cheesepepstickup:
			                idlespr = spr_tv_cheesepep
			                break
						
			            case states.boxxedpep:
			                idlespr = spr_tv_boxxedpep
			                break
			        }
				}
			
		        switch animset
		        {
		            case spr_tv_off:
		                if visible
		                {
		                    animset = spr_tv_open;
		                    image_index = 0;
		                }
		                break;
			
		            case spr_tv_open:
		                if floor(image_index) == image_number - 1
		                    animset = idlespr;
		                break
				
					case spr_tv_placeholder:
						if idlespr != spr_tv_placeholder
							animset = idlespr;
						break;
					
		            case spr_tv_idle:
		                if idleanim > 0
		                    idleanim--;
		                if animset != idlespr
		                    animset = idlespr;
				
		                if idleanim <= 0 && floor(image_index) == image_number - 1
		                {
		                    animset = choose(spr_tv_idleanim1, spr_tv_idleanim2);
		                    image_index = 0
		                }
		                break
				
		            case spr_tv_idleanim1:
		            case spr_tv_idleanim2:
		                if floor(image_index) == image_number - 1
		                {
		                    animset = idlespr;
		                    idleanim = 240 + 60 * irandom_range(-1, 2);
		                }
		                if idlespr != spr_tv_idle
		                    animset = idlespr;
		                break;
					
		            default:
						if ds_list_empty(tvprompts_list)
						or (tvsprite == spr_tv_idleanim1 or tvsprite == spr_tv_idleanim2)
							animset = idlespr;
						break;
		        }
				
	            if !ds_list_empty(tvprompts_list)
	            {
					if (bubblespr == spr_tv_bubbleclosed or bubblespr == noone)
					&& prompt_buffer <= 0
					{
		                var b = tvprompts_list[| 0];
		                prompt_buffer = prompt_max;
						
		                if b[0] != "" && b[0] != noone
		                {
		                    bubblespr = spr_tv_bubbleopen;
		                    bubbleindex = 0;
		                    prompt = b[0];
		                    promptspd = b[3];
		                    promptx = promptxstart;
		                }
		                else
		                {
		                    if bubblespr != noone && bubblespr != spr_tv_bubbleclosed
		                        bubblespr = spr_tv_bubbleclose
		                    if bubblespr == spr_tv_bubbleclosed
		                        bubblespr = noone;
						
		                    bubbleindex = 0;
		                    promptx = promptxstart;
		                    prompt = noone;
		                }
					
						tvsprite = b[2];
						
						if b[1] == false
						{
							animset = spr_tv_open;
							image_index = 0;
						}
					}
					
					if animset != spr_tv_open
					{
						if tvsprite != spr_tv_idleanim1 && tvsprite != spr_tv_idleanim2
							animset = tvsprite;
						
						if prompt_buffer > 0
						{
				            prompt_buffer--;
				            if prompt_buffer <= 0
				            {
				                promptx = promptxstart;
				                ds_list_delete(tvprompts_list, 0);
				                // state = states.normal;
				            }
						}
					}
	            }
	            else
	                bubblespr = noone;
	        }
			else if floor(image_index) == image_number - 1
				animset = tvsprite;
			
			if tvsprite != spr_tv_open && animset != spr_tv_open
			{
				if instance_exists(obj_player1) && obj_player1.character != "P"
				{
				    var spr = sprite_get_name(animset);
				    spr = asset_get_index(spr + obj_player1.character);
				
				    if spr > -1
				        sprite_index = spr;
					else
					{
						if sugary
						{
							animset = spr_tv_placeholderSP;
							sprite_index = spr_tv_placeholderSP;
						}
						else
						{
							animset = spr_tv_placeholder;
							sprite_index = spr_tv_placeholder;
						}
					}
				}
				else
					sprite_index = animset;
			}
			else
			{
				if sugary
					sprite_index = spr_tv_openSP;
				else
					sprite_index = spr_tv_open;
			}
	        break;
		
	    case states.transitioncutscene:
			if animset == spr_tv_off
				animset = spr_tv_open;
	        if animset == spr_tv_open && floor(image_index) == image_number - 1
	            animset = tvsprite;
			sprite_index = animset;
			
			if animset == tvsprite
				state = states.normal;
			
			/*
	        if animset == tvsprite
	        {
	            if prompt_buffer > 0
	                prompt_buffer--;
	            else
	            {
	                promptx = promptxstart;
	                ds_list_delete(tvprompts_list, 0);
	                state = states.normal;
	            }
	        }
			*/
	        break;
	}

	// hide tv if player overlapping it
	var change_pos = false;
	
	if instance_exists(obj_player1)
	&& obj_player1.x > camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 224
	&& obj_player1.y < camera_get_view_y(view_camera[0]) + 187
	    change_pos = true;
	
	if bubblespr != noone && instance_exists(obj_player1)
	&& obj_player1.x > camera_get_view_x(view_camera[0]) + 316
	&& obj_player1.y < camera_get_view_y(view_camera[0]) + 101
	    change_pos = true;
	
	if manualhide
		change_pos = true;
	
	if instance_exists(obj_fadeout)
		change_pos = false;
	
	var spd = 15;
	if change_pos
	    hud_posY = Approach(hud_posY, -300, spd);
	else
	    hud_posY = Approach(hud_posY, 0, spd);
}

#endregion