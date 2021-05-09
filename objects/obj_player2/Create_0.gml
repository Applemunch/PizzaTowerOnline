scr_initinput2();

grav = 0.5;
hsp = 0;
vsp = 0;

xscale = 1;
yscale = 1;
facehurt = false
steppy = false
depth = -7
movespeed = 19
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

input_buffer_jump = 8
input_buffer_secondjump = 8
input_buffer_highjump = 8
player_x = x
player_y = y
targetRoom = 0
targetDoor = "A"

flash = false
/*
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
global.pizzacoin = 0
global.toppintotal = 1
global.hit = 0
global.baddieroom = ds_list_create()
global.gotshotgun = false
*/


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
momemtum = false
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
character = "N"
scr_characterspr()

paletteselect = 0
//global.panic = false
//global.snickchallenge = false
colorchange = false

//Second lap
treasure_x = 0
treasure_y = 0
treasure_room = 0

wallspeed = 0


tauntstoredstate = states.normal
tauntstoredmovespeed = 6
tauntstoredsprite = spr_player_idle
taunttimer = 20

//Golf
//global.golfhit = 0





backtohubstartx = x
backtohubstarty = y
backtohubroom = 0

//global.style = 0

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


roomstartx = 0
roomstarty = 0

//global.secretfound = 0

//global.shotgunammo = 0

swingdingbuffer = 0
lastmove = 0
backupweapon = false



stickpressed = false

macheffect = false
chargeeffectid = obj_null
dashcloudid = obj_null

crazyruneffectid = obj_null
fightball = false
superslameffectid = obj_null
speedlineseffectid = obj_null
angryeffectid = obj_null

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

c = 0
nickname = ""