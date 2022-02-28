if !global.pastdisclaimer && !debug
{
	room_goto(room_of_dog);
	exit;
}

if !variable_global_exists("saveroom")
{
	global.saveroom = ds_list_create();
	global.baddieroom = ds_list_create();
	global.followerlist = ds_list_create();
	global.baddietomb = ds_list_create();
}

basegrav = 0.5;
grav = basegrav;

gravmult = 1;
hsp = 0;
vsp = 0;
global.playerhealth = 100
xscale = 1;
yscale = 1;
facehurt = false
steppy = false
depth = -7
movespeed = 0
jumpstop = false

visible = true
state = states.titlescreen

jumpAnim = true
landAnim = false
machslideAnim = false
moveAnim = true
stopAnim = true
crouchslideAnim = true
crouchAnim = true
machhitAnim = false
stompAnim = false

inv_frames = false

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
player_x = x
player_y = y
targetRoom = 0
targetDoor = "A"

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
global.treasure = false
global.combo = 0
global.combotime = 0
scr_setcoin(0)
global.toppintotal = 1
global.hit = 0

if !variable_global_exists("old_saveroom")
{
	global.old_baddieroom = ds_list_create()
	global.old_saveroom = ds_list_create()
}
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
global.checkpoint_pizzacoin = -1

global.gotshotgun = false
global.showgnomelist = true

key_particles = false
barrel = false
bounce = false
a = 0
idle = 0
attacking = false
slamming = false
superslam = 0
grounded = true
grinding = false

machpunchAnim = false
punch = false
machfreefall = 0
shoot = true
instakillmove = false
windingAnim = 0
facestompAnim = false
ladderbuffer = 0
toomuchalarm1 = 0
toomuchalarm2 = 0

idleanim = 0
momentum = false
cutscene = false
grabbing = false
dir = xscale
shotgunAnim = false


goingdownslope = false
goingupslope = false
fallinganimation = 0
bombpeptimer = 100

suplexmove = false
suplexhavetomash = 0


anger = 0
angry = false
baddiegrabbedID = 0
spr_palette = spr_peppalette
character = "P"

scr_characterspr()
paletteselect = check_shaders()
if repaintjokebuild
	paletteselect = 0

global.panic = false
global.snickchallenge = false
global.snickrematch = false
colorchange = false

palcolors = ds_list_create();
dsread = "";
palsurf = -1;

//Second lap
treasure_x = 0
treasure_y = 0
treasure_room = 0

wallspeed = 0


tauntstoredstate = states.normal
tauntstoredmovespeed = 6
tauntstoredsprite = spr_player_idle
taunttimer = 0

//Golf
global.golfhit = 0
global.funmode = false


//Option
ini_open("saveData.ini");
global.option_fullscreen = ini_read_real("Option","fullscreen",1)  
global.option_resolution = ini_read_real("Option","resolution",1)  
ini_close();

window_set_fullscreen(!global.option_fullscreen);

if global.option_resolution == 0
	window_set_size( 480, 270 );
if global.option_resolution == 1
	window_set_size( 960, 540 );
if global.option_resolution == 2
	window_set_size( 1920, 1080 );


backtohubstartx = x
backtohubstarty = y
backtohubroom = 0

slapcharge = 0
slaphand = 1
slapbuffer = 8
slapflash = 0


freefallsmash = 0
costumercutscenetimer = 0

heavy = false

lastroom_x = 0
lastroom_y = 0
lastroom = 0


hallway = false
hallwaydirection = 0

box = false

oldhallway = false


roomstartx = 0
roomstarty = 0

global.secretfound = 0

//global.shotgunammo = 0

swingdingbuffer = 0
lastmove = 0
backupweapon = false


ini_open("saveData.ini");


// SAGE2019 achievements
if !ini_section_exists("SAGE2019")
{
	ini_write_string("SAGE2019","shotgunsnick",false);


	ini_write_string("SAGE2019","dungeonbackup",false);
	ini_write_string("SAGE2019","srank",false);
	ini_write_string("SAGE2019","snicksrank",false);
	ini_write_string("SAGE2019","combo10",false);
	ini_write_string("SAGE2019","secret",false);

	ini_write_string("SAGE2019","knight",false);

 
	ini_write_string("SAGE2019","toppin",false);
	ini_write_string("SAGE2019","treasure",false);
}


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

stickpressed = false

spotlight = true
macheffect = false
chargeeffectid = obj_null
dashcloudid = obj_null

crazyruneffectid = obj_null
fightball = false
superslameffectid = obj_null
speedlineseffectid = obj_null
angryeffectid = obj_null

global.coop = false
thrown = false

mach1snd = -1
mach2snd = -1
mach3snd = -1
knightslide = -1
bombpep1snd = -1
mach4snd = -1
tumble2snd = -1
tumble1snd = -1
tumble3snd = -1

superjumpholdsnd = -1
superjumpprepsnd = -1
suplexdashsnd = -1

pogospeed = 2
pogocharge = 100
pogochargeactive = false
wallclingcooldown = 10

bombcharge = 0

flashflicker = false
flashflickertime = 0
kickbomb = false
doublejump = false

pogospeedprev = false
 fightballadvantage = false
coopdelay = 0

supercharge = 0
supercharged = false
superchargedeffectid = obj_null

pizzashield = false
pizzashieldid = obj_null

pizzapepper = 0

transformation[0] = states.bombpep
transformation[1] = states.knightpep
transformation[2] = states.knightpepslopes
transformation[3] = states.boxxedpep
transformation[4] = states.cheeseball
transformation[5] = states.cheesepep
transformation[6] = states.cheesepepstick
transformation[7] = states.firemouth
transformation[8] = states.fireass
transformation[9] = states.tumble
transformation[10] = states.stunned
transformation[11] = states.rideweenie
transformation[12] = states.gameover
transformation[13] = states.door
transformation[14] = states.ghost
transformation[15] = states.mort
transformation[16] = states.hitlag
transformation[17] = states.knightpepattack


global.giantkey =false

c = 0

global.baddiespeed = 1
global.baddiepowerup = false
global.baddierage = false
global.style = 0
global.stylethreshold = 0
global.pizzadelivery = false
global.failcutscene = 0
global.pizzasdelivered = 0
revolverbuffer = 0
breakdance = 50;

hooked = false;
sprgot = -1;
nickname = "";
noisetype = (global.gameplay == 0 ? 0 : 1);
noisebombcooldown = 0;
springsjump = false;
keydoor = false;
storedstate = states.normal;
grabbedby = -1;
shake = 0;
drawspr = sprite_index;
online_busy = false;

// hat
hatsprite = -1;
hatimg = 0;

global.pizzacoinstart = global.pizzacoin;

// pet
petfollow = -1;

// new shit
skateboarding = false;

hurt_buffer = -1;
hurt_max = 120;
invhurt_buffer = 0;
invhurt_max = 30;

global.heattime = 0;
global.style = 0;

global.spaceblockswitch = true

shot = false;
shoot_buffer = 0;
shoot_max = 20;
global.bullet = 3;

mort = false;
sjumpvsp = -12;
freefallvsp = 15;

hitX = x;
hitY = y;
hithsp = 0;
hitvsp = 0;
hitstunned = false;
hitxscale = 1;
stunned = false;
hitLag = 25;

doorx = x;

verticalhallway = false;
vhallwaydirection = 0;

global.mort = false;
global.gerome = false;

global.stylelock = false;
suplextrail = 0;

endtumble = false
hascollision = true

img_angle = 0
canfall = true
godmode = false