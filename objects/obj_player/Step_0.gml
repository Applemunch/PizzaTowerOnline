if room == rm_editor
{
	visible = false;
	exit;
}

if room == custom_lvl_room
{
	if place_meeting(x, y, par_camera_editor)
	{
		cam = instance_place(x, y, par_camera_editor);
		cam_width = instance_place(x, y, par_camera_editor).width;
		cam_height = instance_place(x, y, par_camera_editor).height;
		
		with obj_camera
			bound_camera = true;
		
		/*
		if cam != instance_place(x, y, par_camera_editor) {
			scr_render();
			cam = instance_place(x, y, par_camera_editor);
			cam_width = instance_place(x, y, par_camera_editor).width;
			cam_height = instance_place(x, y, par_camera_editor).height;
		}
		if cam == instance_place(x, y, par_camera_editor) {
			with obj_camera {
				bound_camera = true;
			}
		}*/
	}
	else
	{
		cam = noone;
		cam_width = 0;
		cam_height = 0;
		instance_activate_all();
		
		with obj_camera
			bound_camera = false;
	}
}

switch state
{
	default: state = states.normal;
	case -1: break;
    case states.normal: scr_player_normal (); break;
	case states.revolver: scr_player_revolver (); break;
	case states.dynamite: scr_player_dynamite (); break;
    case states.boots: scr_player_boots (); break;
	case states.grabbed: scr_player_grabbed (); break;
	case states.finishingblow: scr_player_finishingblow (); break;
	case states.tumble: scr_player_tumble (); break;
	case states.titlescreen: scr_player_titlescreen (); break;
	case states.ejected: scr_player_ejected (); break;
	case states.firemouth: scr_player_firemouth (); break;
	case states.fireass: scr_player_fireass (); break;
	case states.transitioncutscene: scr_player_transitioncutscene (); break;
    case states.hookshot: scr_playerN_hookshot (); break;
    case states.slap: scr_player_slap (); break;
    case states.tacklecharge: scr_player_tacklecharge (); break;
    case states.cheesepep: scr_player_cheesepep (); break;
    case states.cheeseball: scr_player_cheeseball (); break;
    case states.cheesepepstick: scr_player_cheesepepstick (); break;
    case states.boxxedpep: scr_player_boxxedpep (); break;
    case states.pistolaim: scr_player_pistolaim (); break;
    case states.climbwall: scr_player_climbwall (); break;
    case states.knightpepslopes: scr_player_knightpepslopes (); break;
    case states.portal: scr_player_portal(); break;
    case states.secondjump: scr_player_secondjump (); break;
    case states.chainsawbump: scr_player_chainsawbump (); break;
    case states.handstandjump: scr_player_handstandjump (); break;
    case states.gottreasure: scr_player_gottreasure (); break;
    case states.knightpep: scr_player_knightpep (); break;
    case states.knightpepattack: scr_player_knightpepattack (); break;
    case states.meteorpep: scr_player_meteorpep (); break;
    case states.bombpep: scr_player_bombpep (); break;
    case states.grabbing: scr_player_grabbing (); break;
    case states.chainsawpogo: scr_player_chainsawpogo (); break;
    case states.shotgunjump: scr_player_shotgunjump (); break;
    case states.stunned: scr_player_stunned (); break;
    case states.highjump: scr_player_highjump (); break;
    case states.chainsaw: scr_player_chainsaw (); break;
    case states.facestomp: scr_player_facestomp (); break;
    case states.timesup: scr_player_timesup (); break;
    case states.machroll: scr_player_machroll (); break;
    case states.pistol: scr_player_pistol (); break;
    case states.shotgun: scr_player_shotgun (); break;
    case states.machfreefall: scr_player_machfreefall (); break;
    case states._throw: scr_player_throw (); break;
    case states.superslam: scr_player_superslam (); break;
    case states.slam: scr_player_slam (); break;
    case states.skateboard: scr_player_skateboard (); break;
    case states.grind: scr_player_grind (); break;
    case states.grab: scr_player_grab (); break;
    case states.punch: scr_player_punch (); break;
    case states.backkick: scr_player_backkick (); break;
    case states.uppunch: scr_player_uppunch (); break;
    case states.shoulder: scr_player_shoulder (); break;
    case states.backbreaker: scr_player_backbreaker (); break;
    case states.bossdefeat: scr_player_bossdefeat (); break;
    case states.bossintro: scr_player_bossintro (); break;
    case states.smirk: scr_player_smirk (); break;
    case states.pizzathrow: scr_player_pizzathrow (); break;
    case states.gameover: scr_player_gameover (); break;
    case states.Sjumpland: scr_player_Sjumpland (); break;
    case states.freefallprep: scr_player_freefallprep (); break;
    case states.runonball: scr_player_runonball (); break;
    case states.boulder: scr_player_boulder (); break;
    case states.keyget: scr_player_keyget (); break;
    case states.tackle: scr_player_tackle (); break;
    case states.slipnslide: scr_player_slipnslide (); break;
    case states.ladder: scr_player_ladder (); break;
    case states.jump: scr_player_jump (); break;
    case states.victory: scr_player_victory (); break;
    case states.comingoutdoor: scr_player_comingoutdoor (); break;
    case states.Sjump: scr_player_Sjump (); break;
    case states.Sjumpprep: scr_player_Sjumpprep (); break;
    case states.crouch: scr_player_crouch (); break;
    case states.crouchjump: scr_player_crouchjump (); break;
    case states.crouchslide: scr_player_crouchslide (); break;
    case states.mach1: scr_player_mach1 (); break;
    case states.mach2: scr_player_mach2 (); break;
    case states.mach3: scr_player_mach3 (); break;
    case states.machslide: scr_player_machslide (); break;
    case states.bump: scr_player_bump (); break;
    case states.hurt: scr_player_hurt (); break;
    case states.freefall: scr_player_freefall (); break;
    case states.freefallland: scr_player_freefallland (); break;
    case states.hang: scr_player_hang (); break;
    case states.door: scr_player_door (); break;
    case states.barrel: scr_player_barrel (); break;
    case states.current: scr_player_current (); break;
	case states.taxi: scr_player_taxi (); break;
	case states.pogo: scr_player_pogo (); break;
	case states.rideweenie: scr_player_rideweenie (); break;
	case states.faceplant: scr_player_faceplant (); break;
	case states.ghost: scr_player_ghost (); break;
	case states.mort: scr_player_mort (); break;
	case states.hook: scr_player_hook (); break;
	case states.actor: scr_player_actor (); break;
	case states.parry: scr_player_parry (); break;
	case states.slipbanan: scr_player_slipbanan (); break;
	case states.hitlag: scr_player_hitlag (); break;
	case states.dance: scr_player_dance (); break;
	case states.rotate: scr_player_rotate (); break;
	case states.frozen: scr_player_frozen (); break;
	case states.spindash: scr_player_spindash (); break;
	case states.golf: scr_player_golf (); break;
	case states.cotton: scr_player_cotton (); break;
}
global.coop = false;

// hardoween noise gravity
if scr_checkskin(checkskin.n_hardoween)
	basegrav = 0.4;
else
	basegrav = 0.5;

// invhurt
if global.gameplay != 0
{
	if invhurt_buffer > 0
	    invhurt_buffer--;
	if state == states.hurt
	{
	    if hurt_buffer > 0
	        hurt_buffer--;
	    else
	    {
	        invhurt_buffer = invhurt_max;
	        hurt_buffer = -1;
	    }
	}
	else
	{
	    if hurt_buffer > 0
	        invhurt_buffer = invhurt_max;
	    hurt_buffer = -1;
	}
}

// heat meter
if global.heattime > 0
    global.heattime -= 0.25;
if global.heattime <= 0 && global.style > -1 && !global.stylelock
    global.style -= 0.05;
if state == states.victory && place_meeting(x, y, obj_startgate) && global.style > -1
	global.style -= 5;

if cutscene
    global.heattime = 60;

//Titlescreen
if room == Oldtitlescreen
	state = states.titlescreen

if wallclingcooldown < 10
	wallclingcooldown++
if noisebombcooldown > 0
	noisebombcooldown--

//Pepper Pizza
if pizzapepper > 0
{
	angry = true
	anger = 1
	
	pizzapepper--
	if pizzapepper <= 0
	{
		angry = false;
		anger = 0;
	}
}
if global.gameplay != 0
{
	angry = false;
	anger = 0;
}
 
//Supercharge
if ((global.combo >= 3 && global.gameplay == 0) or (supercharge == 4 && global.gameplay != 0))
&& state != states.backbreaker && character != "S"
{
	if character != "V"
		supercharged = true
	else
		anger = 100
}
if global.combotime > 0 && !cutscene
    global.combotime -= 0.5;
if global.combotime <= 0 && state != states.backbreaker
{
    global.combotime = 0;
    global.combo = 0;
    supercharge = 0;
	supercharged = false;
}

//Supercharged effect
if !instance_exists(superchargedeffectid) && supercharged
{
	with instance_create(x, y, obj_superchargeeffect)
	{
		playerid = other.object_index	
		other.superchargedeffectid = id
	}
}
if instance_exists(superchargedeffectid) && !supercharged
	instance_destroy(superchargedeffectid);
 
//Pizzashield
if !instance_exists(pizzashieldid) && pizzashield
{
	with instance_create(x,y,obj_pizzashield)
	{
		playerid = other.object_index	
		other.pizzashieldid = id
	}
}
 
//POGO
if state != states.pogo && state != states.backbreaker
{
	pogospeed = 6
	pogospeedprev = false
}

//Player sounds
scr_playersounds()

//Reset doublejump for Noise
if grounded && vsp >= 0
	doublejump = false

//Jetpack flash
if pogochargeactive
{
	if !flashflicker
	{
		if pogochargeactive && sprite_index == spr_playerN_pogofall
			sprite_index = spr_playerN_pogofallmach

		if pogochargeactive && sprite_index == spr_playerN_pogobounce
			sprite_index = spr_playerN_pogobouncemach
	}
	
	flashflicker = true
	pogocharge --
}
else
	flashflicker = false

if state != states._throw
	kickbomb = false

if pogocharge = 0
{
	pogochargeactive = false
	pogocharge = 100
}

//Flash flicker
if flashflicker
{
	flashflickertime ++
	if flashflickertime = 20
	{
		flash = true
		flashflickertime = 0
	}
}

//Fightball off
/*
if !global.coop
	fightball = false
if state != states.mach3 && state != states.grabbed
*/
	fightball = false

//Thrown at enemy
if state != states.grabbed && state != states.hurt
	thrown = false

//Reset suplex
if grounded && state != states.handstandjump && sprite_index != spr_cotton_drill
	suplexmove = false

if state != states.freefall && state != states.hitlag
	freefallsmash = 0

//Die
if (global.playerhealth <= 0 && state != states.gameover)
{
	image_index = 0
	sprite_index = spr_dead
	state = states.gameover
}

// reset from checkpoint
if state == states.gameover && y > room_height * 2
{
	room = global.checkpointroom
	if global.checkpointroom == editor_entrance
	{
		obj_onlinemenu.menu = menutypes.leveldetails;
		state = states.titlescreen;
		targetDoor = "A";
	}
	
    var old_checkroom = global.checkpointroom
    var old_checkDoor = global.checkpointDoor
    var old_points = global.checkpointCollect
    var old_pointsN = global.checkpointCollectN
    var old_pizzadelivery = global.pizzadelivery
    var old_pizzasdelivered = global.checkpoint_pizzasdelivered
    var old_failcutscene = global.failcutscene
    var old_hp = global.checkpoint_hp
    var old_shroomfollow = global.checkpoint_shroomfollow
    var old_cheesefollow = global.checkpoint_cheesefollow
    var old_tomatofollow = global.checkpoint_tomatofollow
    var old_sausagefollow = global.checkpoint_sausagefollow
    var old_pineaplefollow = global.checkpoint_pineapplefollow
    var old_gnomecheck0 = global.checkpoint_gnomecheck0
    var old_gnomecheck1 = global.checkpoint_gnomecheck1
    var old_gnomecheck2 = global.checkpoint_gnomecheck2
    var old_gnomecheck3 = global.checkpoint_gnomecheck3
    var old_gnomecheck4 = global.checkpoint_gnomecheck4
    var old_key_inv = global.checkpoint_key_inv
	
	if global.checkpoint_pizzacoin == -1
		var old_pizzacoin = global.pizzacoinstart;
	else
		var old_pizzacoin = global.checkpoint_pizzacoin;
	
    var older_baddieroom = ds_list_create()
    var older_saveroom = ds_list_create()
	
    ds_list_copy(older_baddieroom, global.old_baddieroom)
    ds_list_copy(older_saveroom, global.old_saveroom)
	
    scr_playerreset()
	
    global.checkpoint_hp = old_hp
    global.hp = old_hp
    global.checkpointDoor = old_checkDoor
    targetDoor = old_checkDoor
    global.checkpointroom = old_checkroom
    global.collect = old_points
    global.collectN = old_pointsN
    global.checkpointCollect = old_points
    global.checkpointCollectN = old_pointsN
    global.pizzadelivery = old_pizzadelivery
    global.pizzasdelivered = old_pizzasdelivered
    global.failcutscene = old_failcutscene
    global.checkpoint_pizzasdelivered = old_pizzasdelivered
    global.shroomfollow = old_shroomfollow
    global.cheesefollow = old_cheesefollow
    global.tomatofollow = old_tomatofollow
    global.sausagefollow = old_sausagefollow
    global.pineapplefollow = old_pineaplefollow
    global.checkpoint_shroomfollow = old_shroomfollow
    global.checkpoint_cheesefollow = old_cheesefollow
    global.checkpoint_tomatofollow = old_tomatofollow
    global.checkpoint_sausagefollow = old_sausagefollow
    global.checkpoint_pineapplefollow = old_pineaplefollow
    global.key_inv = old_key_inv
    global.checkpoint_key_inv = old_key_inv
	global.pizzacoin = old_pizzacoin
	
    global.checkpoint_gnomecheck0 = old_gnomecheck0
    global.checkpoint_gnomecheck1 = old_gnomecheck1
    global.checkpoint_gnomecheck2 = old_gnomecheck2
    global.checkpoint_gnomecheck3 = old_gnomecheck3
    global.checkpoint_gnomecheck4 = old_gnomecheck4
    if instance_exists(obj_gnome_checklist)
    {
        with obj_gnome_checklist
        {
            gnome_check[0] = old_gnomecheck0
            gnome_check[1] = old_gnomecheck1
            gnome_check[2] = old_gnomecheck2
            gnome_check[3] = old_gnomecheck3
            gnome_check[4] = old_gnomecheck4
        }
    }
    if !ds_list_empty(older_baddieroom)
    {
        ds_list_copy(global.old_baddieroom, older_baddieroom)
        ds_list_destroy(older_baddieroom)
    }
    if !ds_list_empty(older_saveroom)
    {
        ds_list_copy(global.old_saveroom, older_saveroom)
        ds_list_destroy(older_saveroom)
    }
    if !ds_list_empty(global.old_baddieroom)
    {
        ds_list_clear(global.baddieroom)
        ds_list_copy(global.baddieroom, global.old_baddieroom)
    }
    if !ds_list_empty(global.old_saveroom)
    {
        ds_list_clear(global.saveroom)
        ds_list_copy(global.saveroom, global.old_saveroom)
    }
}


//Out of grab
if (baddiegrabbedID == obj_null or !instance_exists(baddiegrabbedID) or baddiegrabbedID == 0 or baddiegrabbedID == -1) && (state == states.grab or state == states.superslam or state == states.tacklecharge)
	state = states.normal

if !(state == states.grab or state == states.superslam or state == states.mach2 or state == states.finishingblow or state == states.tacklecharge or state == states.backbreaker or state == states.hitlag)
{
	baddiegrabbedID = obj_null
	heavy = false
}

//Grind
if grinding
	state = states.grind

//Angry
if anger > 0
{
	angry = true
	anger -= 1
}
else
	angry = false

// Stop winding up
if sprite_index == spr_winding && state != states.normal 
	windingAnim = 0

if state != states.grab && state != states.grabbed
	swingdingbuffer = 0

// vomit anim
if sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43
	instance_create(x + random_range(-5, 5), y + 46, obj_vomit)

if sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43
{
	with instance_create(x + random_range(-5, 5), y + 46, obj_vomit)
		sprite_index = spr_vomit2
}

// Sweat
if global.playerhealth <= 30 && state == states.normal
{
	if !instance_exists(obj_sweat)
		instance_create(x, y, obj_sweat);
}
else
	instance_destroy(obj_sweat);

//Angry cloud
if (angry or global.stylethreshold >= 2) && !instance_exists(angryeffectid)
&& state == states.normal && character != "V"
{
	with instance_create(x,y,obj_angrycloud)
	{
		playerid = other.object_index
		other.angryeffectid = id	 
	}
}

//Input buffer jumping
if input_buffer_jump < 8
	input_buffer_jump++

//Input buffer second jumping
if input_buffer_secondjump < 8
	input_buffer_secondjump++

//Input buffer high jumping
if input_buffer_highjump < 8
	input_buffer_highjump++

if shoot_buffer > 0
    shoot_buffer--;

//Key effect
if key_particles
	instance_create(random_range(x+25, x -25),random_range(y+35, y -25),obj_keyeffect)

if inv_frames = false && hurted = false && state != states.ghost
image_alpha = 1

//Attack
if (state == states.crouchslide) or (state == states.punch) or (state = states.mach2) or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state == states.tacklecharge) or (state == states.skateboard) or (state == states.knightpep) or (state == states.boxxedpep) or (state == states.cheesepep) or  (state = states.knightpepslopes) or  (state = states.knightpepattack) or   (state = states.bombpep) or  (state = states.facestomp) or (state == states.machfreefall) or (state == states.facestomp) or (state == states.machroll)  or (state == states.mach3) or (state == states.freefall) or (state == states.Sjump) 
	attacking = true
else
	attacking = false

//Grab Moves
if (state == states._throw) or (state == states.punch) or (state == states.backkick) or (state == states.shoulder) or (state == states.uppunch)
	grabbing = true
else
	grabbing = false

//Instant-Kill Attack
if (state == states.barrel) or (state == states.crouchslide) or (state == states.faceplant) or (state == states.rideweenie) or (state == states.mach3) or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state == states.slipnslide) or (state == states.hurt && thrown = true) or (state == states.mach2) or (state == states.climbwall) or (state == states.freefall) or (state == states.tumble) or (state == states.fireass) or (state == states.firemouth) or (state == states.hookshot) or (state == states.skateboard) or  (state = states.mach4) or (state == states.Sjump) or (state == states.machroll) or (state == states.machfreefall) or (state == states.tacklecharge)  or (state == states.superslam && sprite_index = spr_piledriver) or (state == states.knightpep) or (state == states.knightpepattack) or (state == states.knightpepslopes)  or (state == states.boxxedpep) or (state == states.cheesepep) or (state == states.cheeseball) or (state == states.slipbanan) or (state == states.spindash)
	instakillmove = true
else
	instakillmove = false

//Flash
if (flash == true && alarm[0] <= 0 ) {
   alarm[0] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

//Reset Variables
if state != states.Sjump
	sjumpvsp = -12;

if state != states.freefall
	freefallvsp = 15;

if state != states.mach3 && state != states.machslide
	autodash = false

if (state != states.jump && state != states.crouchjump && state != states.slap) or vsp < 0
	fallinganimation = 0

if state != states.freefallland && state != states.normal && state != states.machslide
	facehurt = false

if state != states.normal && state != states.machslide
	machslideAnim = false

if state != states.normal
{
	idle = 0
	dashdust = false
}

// reset momentum
if state != states.mach1 && state != states.jump && state != states.hookshot && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes && state != states.faceplant
	momentum = false

// reset super side jump speed?
if state != states.Sjump && state != states.Sjumpprep
	a = 0

// reset face stomp anim
if state != states.facestomp
	facestompAnim = false

// reset super slam time
if state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland
	superslam = 0

// reset mach punch anim
if state != states.mach2
	machpunchAnim = false

// ladder buffer
if state != states.jump && state != states.ladder
	ladderbuffer = 0
else if ladderbuffer > 0
	ladderbuffer--

// reset stomp
if state != states.jump
	stompAnim = false

// reset gravity
if state != states.grabbing && state != states.barrel && state != states.tumble && state != states.ghost && sprite_index != spr_pmortjump && state != states.cotton
    grav = basegrav;
else if state == states.barrel or (state == states.tumble && global.gameplay != 0)
    grav = 0.6;

// reset shot variable
if state != states.pistol && state != states.normal
	shot = false

// reset mort
if mort
{
    if state != states.normal && state != states.jump && state != states.handstandjump && state != states.pistol
        mort = false;
}

// reset black fade
if state != states.comingoutdoor && c < 255
{
	c = 255;
	image_blend = c_white;
}

// colorful afterimages
if state == states.mach3 or pizzapepper > 0 or sprite_index == spr_barrelroll
or state == states.parry or state == states.rideweenie 
or (state == states.punch && scr_stylecheck(0, 2))
or state == states.climbwall or (state == states.jump && sprite_index == spr_playerN_noisebombspinjump)
or pogochargeactive or state == states.hookshot or state == states.mach2
or state == states.tacklecharge or state == states.machslide
or (state == states.machroll && scr_stylecheck(0, 2))
or (state == states.handstandjump && scr_stylecheck(0, 2))
or (state == states.Sjump && scr_stylecheck(0, 2))
or (state == states.chainsaw && mach2 >= 100)
or (state == states.faceplant && !scr_stylecheck(0))
or (state == states.cotton && (sprite_index == spr_cotton_run or sprite_index == spr_cotton_maxrun))
{
	if !macheffect
	{
		macheffect = true;
		toomuchalarm1 = 6;
	}
	
	toomuchalarm1 -= 1;
    if toomuchalarm1 <= 0
	{
		with instance_create(x, y, obj_mach3effect)
		{
			playerid = other.object_index
			image_index = other.image_index
			if scr_checkskin(checkskin.n_nose)
				image_index = 0;
			image_xscale = other.xscale
			sprite_index = other.drawspr
			image_angle = other.img_angle
		}
		toomuchalarm1 = 6
    }
}
else
{
	macheffect = false;
	with obj_mach3effect
	{
		if !check_bysync() && !sync && !keep
			instance_destroy();
	}
}

// suplex trail
if !scr_stylecheck(0, 2) && !scr_checkskin(checkskin.n_nose)
{
	if state == states.handstandjump or state == states.tumble or state == states.machroll
	{
		suplextrail -= 1;
		if suplextrail <= 0
		{
			suplextrail = 3;
			with instance_create(x, y, obj_suplextrail)
			{
				sprite_index = other.drawspr;
				image_index = other.image_index;
				image_xscale = other.xscale;
				image_yscale = other.yscale;
				image_angle = other.img_angle;
				depth = other.depth + 1;
			}
		}
	}
}

// Bottomless pits
if y > room_height + 200 && !cutscene
&& room != custom_lvl_room && room != rank_room && canfall
&& state != states.gameover && state != states.comingoutdoor && visible
{
	grav = basegrav;
	
	x = roomstartx;
	y = roomstarty;
	
	if !skateboarding
		state = states.freefall;
	vsp = 10;
	hsp = 0;
}

//Mask
if character == "S"
{
	if state == states.crouchjump or state == states.crouch
		state = states.normal;
	
	if state == states.bombpep or state == states.firemouth or state == states.hurt or state == states.cheeseball
		mask_index = spr_player_mask
	else
		mask_index = spr_crouchmask
}
else
{
	if !scr_solid_player(x, y)
	{
		if state != states.bump && state != states.ghost && sprite_index != spr_player_barrelslipnslide && sprite_index != spr_barrelroll  && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != states.tumble && state != states.stunned   && state != states.crouch && state != states.boxxedpep && (state != states.pistol or sprite_index != spr_player_crouchshoot) && state != states.Sjumpprep && state != states.crouchslide && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchjump && sprite_index != spr_player_breakdancesuper
		{
			mask_index = spr_player_mask;
			if scr_solid_player(x, y)
				mask_index = spr_crouchmask;
		}
		else
			mask_index = spr_crouchmask
	}
	else
	{
		// push out of block
		if state == states.jump or state == states.ladder
			y++;
		else
			mask_index = spr_crouchmask;
	}
}

// cutscene
cutscene = (
	state == states.gottreasure or sprite_index == spr_knightpepstart or sprite_index == spr_knightpepthunder
	or state == states.keyget or state == states.door or state == states.ejected
	or state == states.victory or state == states.comingoutdoor or state == states.gameover
)

//SAGE2019
//Up arrow
if ((place_meeting(x, y, obj_door) && !place_meeting(x,y,obj_doorblocked)) or place_meeting(x,y,obj_dresser) or place_meeting(x,y,obj_menuphone) or place_meeting(x,y,obj_filedoor) or place_meeting(x, y, obj_devdoor) or place_meeting(x,y,obj_snick) or place_meeting(x,y,obj_keydoor) or place_meeting(x, y, obj_door_editor) or place_meeting(x, y, obj_keydoor_editor) or place_meeting(x, y, obj_baddiemenu) or place_meeting(x, y, obj_npcparent) or place_meeting(x, y, obj_eatery_cashreg) or place_meeting(x, y, obj_taxi) or (place_meeting(x, y, obj_hubelevator) && instance_place(x, y, obj_hubelevator).state == 0) or (place_meeting(x, y, obj_geromedoor) && global.gerome) or (place_meeting(x,y,obj_exitgate) && (global.panic or global.snickchallenge) && character != "S"))
&& scr_solid(x, y + 1) && state == states.normal
{
	if !instance_exists(obj_uparrow)
	{
		with instance_create(x,y,obj_uparrow)
			 playerid = other.object_index
	}
}
else if instance_exists(obj_uparrow)
	instance_destroy(obj_uparrow);
 
// speed lines
if !instance_exists(speedlineseffectid)
&& (state == states.mach2 or sprite_index == spr_cotton_maxrun)
{
	with instance_create(x, y, obj_speedlines)
	{
		playerid = other.object_index
		other.speedlineseffectid = id
	}
}
else if instance_exists(speedlineseffectid)
	instance_destroy(speedlineseffectid);

// collision
scr_collide_destructibles();
if state != states.titlescreen && state != states.grabbed && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.rotate && state != states.gameover && (((state != states.backbreaker or taunttimer <= 0)) or global.gameplay == 0)
	scr_collide_player();

// correct depth
depth = (state == states.grabbed ? -5 : -7);
if state == states.rotate
	depth = obj_camera.depth - 1;

if shake > 0
	shake = max(shake - 0.5, 0);

if petfollow > -1
{
	if !instance_exists(obj_petfollow)
		instance_create(x, y, obj_petfollow);
}
else if instance_exists(obj_petfollow)
	instance_destroy(obj_petfollow);
