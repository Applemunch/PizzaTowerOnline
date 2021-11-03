function scr_playerreset()
{
	if ds_exists(global.baddietomb, ds_type_list)
		ds_list_clear(global.baddietomb);
	
	with obj_followcharacter
		if object_index != obj_petfollow instance_destroy();
	
	// modifiers
	global.toppings = 0;
	
	// other shit
	global.bullet = 3;
	global.mort = false;
	global.stylethreshold = 0;
	global.heattime = 0;
	global.style = 0;
	global.gerome = false;
	global.stylelock = false;
	global.baddiespeed = 1;
	global.baddiepowerup = false;
	
	global.showgnomelist = false;
    global.failcutscene = false;
    global.pizzadelivery = false;
	
	global.checkpointDoor = "A"
	global.checkpointroom = hub_room1
	global.checkpointCollect = 0
	global.checkpointCollectN = 0
	global.hp = 8
	global.checkpoint_hp = 0
	global.checkpoint_shroomfollow = false
	global.checkpoint_cheesefollow = false
	global.checkpoint_tomatofollow = false
	global.checkpoint_pineapplefollow = false
	global.checkpoint_sausagefollow = false
	global.checkpoint_key_inv = false
	global.checkpoint_pizzasdelivered = 0
	global.checkpoint_gnomecheck0 = false
	global.checkpoint_gnomecheck1 = false
	global.checkpoint_gnomecheck2 = false
	global.checkpoint_gnomecheck3 = false
	global.checkpoint_gnomecheck4 = false
	global.checkpoint_pizzacoin = global.pizzacoinstart
	
	global.raceid = 0;
	global.golfhit = 0;
	global.funmode = false;
	
	global.minutes = 2;
	global.seconds = 59;
	
	if ds_exists(global.old_baddieroom, ds_type_list)
		ds_list_clear(global.old_baddieroom)
	if ds_exists(global.old_saveroom, ds_type_list)
		ds_list_clear(global.old_saveroom)
	
	global.timeractive = false
	global.wave = 0
	global.maxwave = 0
	global.secretfound = 0
	global.hurtcounter = 0
	global.snickchallenge = false
	global.snickrematch = false
	global.timeattack = false
	global.giantkey = false
	
	with obj_timeattack
		stop = false
		
	global.timedgate = false
	global.taseconds = 0
	global.taminutes = 0
	
	global.miniboss = false
	
	instance_destroy(obj_coopflag, false)
	instance_destroy(obj_cooppointer, false)
	
	instance_destroy(obj_endlevelfade, false)
	instance_destroy(obj_pizzaball_slices, false);
	instance_destroy(obj_pizzaface, false)
	instance_destroy(obj_pizzashield, false)
	instance_destroy(obj_toppinwarrior, false)
	instance_destroy(obj_gnome_checklist, false);
	
	instance_destroy(obj_snickexe, false)
	instance_destroy(obj_snickexf, false)
	instance_destroy(obj_snickexg, false)
	instance_destroy(obj_snickexh, false)
	
	with obj_tv
	{
		shownranks = false
		shownranka = false
		shownrankb = false
		shownrankc = false
		global.srank = 0
		global.arank = 0
		global.brank = 0
		global.crank = 0
		
		ds_list_clear(tvprompts_list);
		state = states.normal
		promptxstart = 641
		promptx = promptxstart
		prompt = ""
		promptspd = 1
		prompt_buffer = 0
		prompt_max = 150
		special_prompts = noone
		hud_posx = 0
		hud_posY = 0
		bubbleindex = 0
		bubblespr = noone
		idleanim = 180
		collect_shake = 0
	}

	// SAGE2019
	global.SAGEshotgunsnicknumber = 0
	obj_music.fadeoff = 0
	//audio_stop_all()

	if instance_exists(obj_timesup)
		instance_destroy(obj_timesup, false)
	global.seconds = 59
	global.minutes = 1

	with obj_camera
	{
		chargecamera = 0
		crouchcamera = 0
	}
	
	if ds_exists(global.saveroom, ds_type_list)
		ds_list_clear(global.saveroom)
	if ds_exists(global.baddieroom, ds_type_list)
		ds_list_clear(global.baddieroom)
	
	with obj_player
	{
		state = states.comingoutdoor
		visible = true
		spotlight = true
		image_blend = c_white;
		canfall = true;
		
		supercharged = false
		pizzapepper = 0
		pizzashield = false
		c = 0
		heavy = false
		image_index = 0
		sprite_index = spr_walkfront
		alarm[0] = -1
		alarm[1] = -1
		alarm[3] = -1
		alarm[4] = -1
		alarm[5] = -1
		alarm[6] = -1
		alarm[7] = -1
		alarm[8] = -1
		alarm[9] = -1
		alarm[10] = -1
		grav = 0.5;
		gravmult = 1;
		hsp = 0;
		vsp = 0;
		global.playerhealth = 100
		xscale = 1;
		yscale = 1;



		pogospeed = 6
		pogochargeactive = false
		pogocharge = 100

		x = backtohubstartx
		y = backtohubstarty

		backupweapon = false
		shotgunAnim = false

		box = false
		steppy = false

		movespeedmax = 5
		jumpstop = false
		start_running = true

		obj_camera.ded = false

		visible = true
		global.panic = false
		turn = false
		jumpAnim = true
		dashAnim = true
		landAnim = false
		machslideAnim = false
		moveAnim = true
		stopAnim = true
		crouchslideAnim = true
		crouchAnim = true
		machhitAnim = false
		stompAnim = false

		inv_frames = false

		turning = false

		hurtbounce = 0
		hurted = false
		autodash = false
		mach2 = 0

		parry = false
		parry_inst = noone
		taunt_to_parry_max = 10
		parry_count = 0
		parry_max = 8

		input_buffer_jump = 8
		input_buffer_secondjump = 8
		input_buffer_highjump = 8

		flash = false
		global.key_inv = false
		global.shroomfollow = false
		global.cheesefollow = false
		global.tomatofollow = false
		global.sausagefollow = false
		global.pineapplefollow = false
		global.keyget = false
		global.collect = 0
		global.collectN = 0
		global.ammo = 0
		global.treasure = false
		global.combo = 0
		global.combotime = 0
		global.pizzacoin = global.pizzacoinstart
		global.toppintotal = 1
		global.hit = 0


		ini_open("saveData.ini");
		// SAGE2019 achievements
		global.SAGEshotgunsnick = ini_read_string("SAGE2019","shotgunsnick",false);
		global.SAGEshotgunsnicknumber = 0

		global.SAGEdungeonbackup = ini_read_string("SAGE2019","dungeonbackup",false);
		global.SAGEsrank = ini_read_string("SAGE2019","srank",false);
		global.SAGEsnicksrank = ini_read_string("SAGE2019","snicksrank",false);
		global.SAGEcombo10 = ini_read_string("SAGE2019","combo10",false);
		global.SAGEsecret = ini_read_string("SAGE2019","secret",false);

		global.SAGEknight = ini_read_string("SAGE2019","knight",false);
		global.SAGEknighttaken = false
 
		global.SAGEtoppin = ini_read_string("SAGE2019","toppin",false);
		global.SAGEtreasure = ini_read_string("SAGE2019","treasure",false);
		ini_close()



		in_water = false
		key_particles = false
		barrel = false
		bounce = false
		a = 0
		idle = 0
		attacking = false
		slamming = false
		superslam = 0

		machpunchAnim = false
		punch = false
		machfreefall = 0
		shoot = true
		instakillmove = false
		windingAnim = 0
		facestompAnim = false
		ladderbuffer = 0
		chainsaw = 50
		toomuchalarm1 = 0
		toomuchalarm2 = 0
		dashdust = false
		throwforce = 0
		hurtsound = false

		idleanim = 0
		momemtum = false
		cutscene = false
		grabbing = false
		dir = xscale



		goingdownslope = false
		goingupslope = false
		fallinganimation = 0
		bombpeptimer = 100
		slapbuffer = 0
		slaphand= 1

		suplexmove = false
		suplexhavetomash = 0

		timeuntilhpback = 300

		anger = 0
		angry = false

		springsjump = false;
		keydoor = false;
		sprgot = -1;
		storedstate = states.normal;
		
		mort = false;
		shot = false;
		endtumble = false
	}
}
