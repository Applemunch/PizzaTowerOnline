function scr_pizzagoblin_throw() {

	if (!variable_global_exists("throw_frame")) {
		// What frame should the enemy be on to throw stuff
		global.throw_frame = 0
		global.throw_frame[obj_pizzagoblin] = 2
		global.throw_frame[obj_canongoblin] = 5
		global.throw_frame[obj_noisegoblin] = 18
		global.throw_frame[obj_cheeserobot] = 6
		global.throw_frame[obj_spitcheese] = 2
		global.throw_frame[obj_trash] = 2
		global.throw_frame[obj_invtrash] = 2
		global.throw_frame[obj_robot] = 2
		global.throw_frame[obj_kentukykenny] = 8
		global.throw_frame[obj_pizzard] = 6
		global.throw_frame[obj_pepgoblin] = 0
		global.throw_frame[obj_swedishmonkey] = 15
		global.throw_frame[obj_rancher] = 3
		global.throw_frame[obj_pickle] = 2
		global.throw_frame[obj_tankOLD] = 6

		// What sprite should the enemy go to when throwing
		global.throw_sprite = 0
		global.throw_sprite[obj_pizzagoblin] = spr_pizzagoblin_throwbomb
		global.throw_sprite[obj_canongoblin] = spr_canongoblin_throwbomb
		global.throw_sprite[obj_noisegoblin] = spr_archergoblin_shoot
		global.throw_sprite[obj_cheeserobot] = spr_cheeserobot_attack
		global.throw_sprite[obj_spitcheese] = spr_spitcheese_spit
		global.throw_sprite[obj_trash] = spr_trash_throw
		global.throw_sprite[obj_invtrash] = spr_invtrash_throw
		global.throw_sprite[obj_robot] = spr_robot_attack
		global.throw_sprite[obj_kentukykenny] = spr_kentukykenny_throw
		global.throw_sprite[obj_pizzard] = spr_pizzard_shoot
		global.throw_sprite[obj_pepgoblin] = spr_pepgoblin_kick
		global.throw_sprite[obj_swedishmonkey] = spr_swedishmonkey_eat
		global.throw_sprite[obj_rancher] = spr_ranch_shoot
		global.throw_sprite[obj_pickle] = spr_pickle_attack
		global.throw_sprite[obj_tankOLD] = spr_tank_shoot
	
		// How long before the enemy throws something again
		global.reset_timer = 0
		global.reset_timer[obj_pizzagoblin] = 200
		global.reset_timer[obj_canongoblin] = 200
		global.reset_timer[obj_noisegoblin] = 200
		global.reset_timer[obj_cheeserobot] = 200
		global.reset_timer[obj_spitcheese] = 100
		global.reset_timer[obj_trash] = 100
		global.reset_timer[obj_invtrash] = 100
		global.reset_timer[obj_robot] = 200
		global.reset_timer[obj_kentukykenny] = 200
		global.reset_timer[obj_pizzard] = 100
		global.reset_timer[obj_pepgoblin] = 100
		global.reset_timer[obj_swedishmonkey] = 200
		global.reset_timer[obj_rancher] = 100
		global.reset_timer[obj_pickle] = 120
		global.reset_timer[obj_tankOLD] = 100
	}
	
	// Stop moving
	hsp = 0

	// Change speed if I'm touching a rail
	if place_meeting(x,y+1, obj_railh)
		hsp = -5
	else if place_meeting(x,y+1, obj_railh2)
		hsp = 5

	// If I'm standing then return to idle
	if floor(image_index) = (image_number -1)
	{
		state = states.walk
		sprite_index = walkspr
	}

	// Check if bomb timer expired and I'm on the right animation frame
	if bombreset = 0 && floor(image_index) = global.throw_frame[object_index]
	{
		// Set bomb timer and animation frame
		bombreset = global.reset_timer[object_index] / (global.stylethreshold + 1);
		sprite_index = global.throw_sprite[object_index]
		if point_in_camera(x, y, view_camera[0])
		{
			audio_stop_sound(sfx_enemyprojectile)
			scr_soundeffect(sfx_enemyprojectile)
		}
		
		// Spawn the right projectile
		switch object_index
		{
			case obj_pizzagoblin:
				with instance_create(x,y,obj_pizzagoblinbomb)
				{
					hsp = other.image_xscale * 10
					vsp = -8
				}
				break
		
			case obj_canongoblin:
				with instance_create(x,y,obj_canongoblinbomb)
				{
					image_xscale = other.image_xscale
				}
				break;
	
			case obj_noisegoblin:
				with instance_create(x + 22,y + 24,obj_noisegoblin_arrow)
					_id = other.id;
				break
		
			case obj_cheeserobot:
				with instance_create(x,y,obj_cheeseblob)
				{
					sprite_index = spr_cheeserobot_goop
					image_xscale = other.image_xscale
					hsp = other.image_xscale * 8
					vsp = 0
					grav = 0
				}
				break
		
			case obj_spitcheese:
				with instance_create(x +image_xscale * 6,y - 6,obj_spitcheesespike)
				{
					image_xscale = other.image_xscale
					hsp = other.image_xscale * 5
					vsp = -6
				}
				break
		
			case obj_trash:
			case obj_invtrash:
				with instance_create(x +image_xscale * 6,y - 6,obj_cheeseball)
				{
					image_xscale = other.image_xscale
					hsp = other.image_xscale * 5
					vsp = -4
				}
				break
		
			case obj_robot:
				with instance_create(x + (8 * image_xscale),y,obj_robotknife) 
				{
					image_xscale = other.image_xscale
					hsp = other.image_xscale * 5
					_id = other.id;
				}
				break
			
			case obj_kentukykenny:
				with instance_create(x,y,obj_kentukykenny_projectile)
				{
			
					image_xscale = other.image_xscale
				}
				break
		
			case obj_pizzard:
				with instance_create(x,y,obj_pizzard_bolt)
					image_xscale = other.image_xscale
				break
		
			case obj_swedishmonkey:
				with instance_create(x, y, obj_slipnslide)
				{
					baddieID = other.id
					if other.image_xscale != 0
						image_xscale = other.image_xscale
					hsp = -image_xscale * 4
					vsp = -5
					
					if scr_solid(x, y)
						instance_destroy();
					else
					{
						with obj_slipnslide
							if baddieID = other.baddieID
								banana += 1
					}
				}
				break
			
			case obj_pepgoblin:
				with instance_create(x,y,obj_pepgoblin_kickhitbox)
				{
					baddieID = other.id
					image_xscale = other.image_xscale
				}
				break
		
			case obj_pickle:
				attacking = false;
				with instance_create(x,y,obj_forkhitbox)
				{
					ID = other.id
					image_xscale = other.image_xscale
					sprite_index = other.sprite_index
				}
				break
		
			case obj_tankOLD:
				with instance_create(x +image_xscale * 6,y - 6,obj_spitcheesespike)
				{
					image_xscale = other.image_xscale
					hsp = other.image_xscale * 5
					vsp = -6
				}
				break
			
			case obj_rancher:
				with instance_create(x + (image_xscale * 6), y + 26, obj_rancher_bullet)
					image_xscale = other.image_xscale
				break
		}
	}


	// Bump away from enemies and one-way walls?
	if !((grounded)) && hsp < 0
		hsp += 0.1
	else if !((grounded)) && hsp > 0
		hsp -= 0.1


}
