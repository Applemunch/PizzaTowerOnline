if alarm[11] == -1
	alarm[11] = 15;

if room == rm_editor {
	visible = 0;
	exit;
}

if room == custom_lvl_room {
	if place_meeting(x, y, par_camera_editor) {
		cam = instance_place(x, y, par_camera_editor);
		cam_width = instance_place(x, y, par_camera_editor).width;
		cam_height = instance_place(x, y, par_camera_editor).height;
		with obj_camera {
			bound_camera = true;
		}/*
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
	else {
		cam = noone;
		cam_width = 0;
		cam_height = 0;
		instance_activate_all();
		with obj_camera {
			bound_camera = false;
		}
	}
}

scr_getinput();

switch (state)
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
}
global.coop = false;

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
if global.combotime > 0
    global.combotime -= 0.5;
if global.heattime > 0
    global.heattime -= 0.25;
if global.combotime <= 0 && global.combo != 0
{
    global.combotime = 0;
    global.combo = 0;
    supercharge = false;
}
if global.heattime <= 0 && global.style > -1 && !global.stylelock
    global.style -= 0.05;

if cutscene == true
    global.heattime = 60

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
	
	/*
	if character = "P"
		paletteselect = 2
	else
		paletteselect = 1
	*/
}
else if pizzapepper = 0 && angry = true
{
	/*
	if character = "P"
		paletteselect = 1
	else
		paletteselect = 0
	*/
	
	angry = false
	anger = 0
}
 
 
//Supercharge
if global.combo >= 3 && state != states.backbreaker && character != "S"
{
	if character != "V"
		supercharged = true
	else
		anger = 100
}

 
//Supercharged effect
if !instance_exists(superchargedeffectid) && supercharged
{
	with instance_create(x,y,obj_superchargeeffect)
	{
		playerid = other.object_index	
		other.superchargedeffectid = id
	}
}
 
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
if grounded
	doublejump = false

//Jetpack flash
if pogochargeactive = true
{
	if flashflicker = false
	{
		if pogochargeactive = true && sprite_index = spr_playerN_pogofall
			sprite_index = spr_playerN_pogofallmach

		if pogochargeactive = true && sprite_index = spr_playerN_pogobounce
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
if flashflicker = true
{
	flashflickertime ++
	if flashflickertime = 20
	{
		flash = true
		flashflickertime = 0
	}
}

//Fightball off
if !global.coop
	fightball = false
if state != states.mach3 && state != states.grabbed
	fightball = false

//Thrown at enemy
if state != states.grabbed && state != states.hurt
	thrown = false

//Reset suplex
if grounded && state != states.handstandjump
	suplexmove = false

if state != states.freefall
	freefallsmash = 0

//Die
if (global.playerhealth <= 0 && state != states.gameover)
{
	image_index = 0
	sprite_index = spr_playerV_dead
	state = states.gameover
}

if state = states.gameover && y > room_height * 2
{
	room = global.checkpointroom
	
	if global.checkpointroom == editor_entrance
		obj_onlinemenu.menu = menutypes.leveldetails;
	
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
if (baddiegrabbedID == obj_null or !instance_exists(baddiegrabbedID) or baddiegrabbedID == 0 or baddiegrabbedID == -1) && (state = states.grab or state = states.superslam or state = states.tacklecharge)
	state = states.normal

if !(state == states.grab or state = states.superslam or state = states.mach2 or state == states.finishingblow or state == states.tacklecharge or state == states.backbreaker or state == states.hitlag)
{
	baddiegrabbedID = obj_null
	heavy = false
}

//Grind
if grinding
	state = states.grind

//Angry
if anger = 0
angry = false

if anger > 0
{
	angry = true
	anger -= 1
}






//Stop winding up
if sprite_index =spr_winding && state != states.normal 
windingAnim = 0

if state != states.grab && state != states.grabbed
	swingdingbuffer = 0

//vomit anim
if sprite_index = spr_player_idlevomit && image_index > 28 && image_index < 43
{
instance_create(x+random_range(-5,5), y+ 46, obj_vomit)
}

if sprite_index = spr_player_idlevomitblood && image_index > 28 && image_index < 43
{
with instance_create(x+random_range(-5,5), y+ 46, obj_vomit)
sprite_index = spr_vomit2
}


//Sweat
if global.playerhealth <= 30 && !instance_exists(obj_sweat) && obj_player.state = states.normal
instance_create(x,y,obj_sweat)
//Angry cloud
if angry = true && !instance_exists(angryeffectid) && state = states.normal && character != "V"
with instance_create(x,y,obj_angrycloud)
 {
	 playerid = other.object_index
other.angryeffectid = id	 
 }

//Input buffer jumping
if (input_buffer_jump < 8)
input_buffer_jump++
//Input buffer second jumping
if (input_buffer_secondjump < 8)
input_buffer_secondjump++
//Input buffer high jumping
if (input_buffer_highjump < 8)
input_buffer_highjump++


//Key effect
if key_particles
	instance_create(random_range(x+25, x -25),random_range(y+35, y -25),obj_keyeffect)

if inv_frames = false && hurted = false && state != states.ghost
image_alpha = 1

//Attack
if (state = states.crouchslide) or (state = states.punch) or(state = states.mach2) or (state = states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state = states.tacklecharge) or (state = states.skateboard) or (state = states.knightpep) or (state = states.boxxedpep) or (state = states.cheesepep) or  (state = states.knightpepslopes) or  (state = states.knightpepattack) or   (state = states.bombpep) or  (state = states.facestomp) or (state = states.machfreefall) or (state = states.facestomp) or (state = states.machroll)  or (state = states.mach3) or (state = states.freefall) or (state = states.Sjump) 
	attacking = true
else
	attacking = false

//Grab Moves
if (state = states._throw) or (state = states.punch) or (state = states.backkick) or (state = states.shoulder) or (state = states.uppunch)
	grabbing = true
else
	grabbing = false

//Instant-Kill Attack
if (state == states.barrel) or (state = states.crouchslide) or (state = states.faceplant) or (state = states.rideweenie) or (state = states.mach3) or (state = states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state = states.slipnslide) or (state = states.hurt && thrown = true) or (state = states.mach2) or (state = states.climbwall) or (state = states.freefall) or (state = states.tumble) or (state = states.fireass) or (state = states.firemouth) or (state = states.hookshot) or (state = states.skateboard) or  (state = states.mach4) or (state = states.Sjump) or (state = states.machroll) or (state = states.machfreefall) or (state = states.tacklecharge)  or (state = states.superslam && sprite_index = spr_piledriver) or (state = states.knightpep) or (state = states.knightpepattack) or (state = states.knightpepslopes)  or (state = states.boxxedpep) or (state = states.cheesepep) or (state = states.cheeseball) 
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

if state != states.mach1 && state != states.jump && state != states.hookshot  && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes
	momemtum = false

if state != states.Sjump && state != states.Sjumpprep
	a = 0

if state != states.facestomp
	facestompAnim = false

if state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland
	superslam = 0

if state != states.mach2
	machpunchAnim = false


if state != states.jump 
	ladderbuffer = 0

if state != states.jump
	stompAnim = false

//Too much alarm 1
if (state = states.mach3 or (state = states.grabbed && instance_exists(obj_player2) && obj_player2.state = states.mach3) 
or pizzapepper > 0  or sprite_index = spr_barrelroll or state == states.parry or state = states.rideweenie or (state = states.punch && global.gameplay == 0) or state = states.climbwall or (state = states.jump && sprite_index = spr_playerN_noisebombspinjump) or pogochargeactive = true or (state = states.hookshot) or state = states.mach2 or state = states.tacklecharge or state = states.machslide or state = states.machroll or (state = states.handstandjump && global.gameplay == 0) or (state == states.Sjump && global.gameplay != 0) or (state = states.chainsaw && mach2 >= 100))
{
	if !macheffect
	{
		macheffect = true;
		toomuchalarm1 = 6;
	}
	
	toomuchalarm1 -= 1;
    if toomuchalarm1 <= 0
	{
		with instance_create(x,y,obj_mach3effect)
		{
			playerid = other.object_index
			image_index = other.image_index
			image_xscale = other.xscale
			sprite_index = other.sprite_index
		}
		toomuchalarm1 = 6
    }
}
else
	macheffect = false;

// Bottomless pits
if y > room_height + 200 && !cutscene
&& room != custom_lvl_room && room != rank_room
&& state != states.gameover && state != states.door
{
	x = roomstartx;
	y = roomstarty;
	
	if !skateboarding
		state = states.freefall;
	vsp = 10;
}

if character = "S"
if state = states.crouchjump or state = states.crouch
	state = states.normal

//Mask
if character == "S"
{
	if state == states.bombpep or state == states.firemouth or state == states.hurt or state == states.cheeseball
		mask_index = spr_player_mask
	else
		mask_index = spr_crouchmask
}
else
{
	if !scr_solid_player(x, y)
	{
		if state != states.bump && state != states.ghost && sprite_index != spr_player_barrelslipnslide && sprite_index != spr_barrelroll  && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != states.tumble && state != states.stunned   && state != states.crouch && state != states.boxxedpep && (state != states.pistol && sprite_index != spr_player_crouchshoot) && state != states.Sjumpprep && state != states.crouchslide && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchjump && sprite_index != spr_player_breakdancesuper
			mask_index = spr_player_mask
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

if state = states.gottreasure or sprite_index = spr_knightpepstart
or sprite_index = spr_knightpepthunder or state = states.keyget 
or state = states.door or state = states.ejected or state = states.victory or state = states.comingoutdoor or state = states.gameover
	cutscene = true
else
	cutscene = false

//SAGE2019
//Up arrow
if ((place_meeting(x,y,obj_door) && !place_meeting(x,y,obj_doorblocked)) or place_meeting(x,y,obj_dresser) or place_meeting(x,y,obj_menuphone) or place_meeting(x,y,obj_filedoor) or place_meeting(x,y,obj_snick) or place_meeting(x,y,obj_keydoor) or place_meeting(x, y, obj_door_editor) or place_meeting(x, y, obj_keydoor_editor) or place_meeting(x, y, obj_baddiemenu) or place_meeting(x, y, obj_npcparent) or (place_meeting(x, y, obj_hubelevator) && instance_place(x, y, obj_hubelevator).state == 0) or (place_meeting(x, y, obj_geromedoor) && global.gerome) or (place_meeting(x,y,obj_exitgate) && (global.panic or global.snickchallenge) && character != "S"))
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
 
if state == states.mach2 && !instance_exists(speedlineseffectid) 
{
	with instance_create(x,y,obj_speedlines)
	{
		playerid = other.object_index
		other.speedlineseffectid = id
	}
}

scr_collide_destructibles();
if state != states.titlescreen && state != states.grabbed && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.rotate && state != states.gameover && (((state != states.backbreaker or taunttimer <= 0)) or global.gameplay == 0)
	scr_collide_player();

// chat
if instance_exists(obj_gms) && gms_info_isloggedin() && state != states.titlescreen && state != -1
&& !instance_exists(obj_skinchoice) && !instance_exists(obj_hatchoice)
&& !(instance_exists(obj_hubelevator) && obj_hubelevator.state != 0)
&& !(instance_exists(obj_wc) && obj_wc.WC_consoleopen)
&& (room != editor_entrance or debug)
{
	if keyboard_check_pressed(ord("T")) && !global.__chat
	{
		gms_chat_toggle(true);
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_escape) && global.__chat
	{
		gms_chat_toggle(false);
		keyboard_key_release(vk_escape);
		global.__chat_typing = false;
		global.__chat_directclose = true;
		global.__chat_highl = true;
	}
	
	if keyboard_check_pressed(vk_up) && global.__chat && obj_gms.chat_lastmessage != ""
	{
		global.__chat_typing = true;
		keyboard_string = obj_gms.chat_lastmessage;
	}
}
depth = (state == states.grabbed ? -5 : -7);
if state == states.rotate
	depth = obj_camera.depth - 1;

if shake > 0
	shake = max(shake - 0.5, 0);