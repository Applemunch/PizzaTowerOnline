n = 0
image_speed = 0.35
alarm[1] = -1
global.seconds = 59
global.minutes = 0
global.miniboss = false
angle = 0
frame = 0
global.pizza = 0
global.pizzameter = 0
global.pillarhunger = 4000 
basement = false
shake_mag = 0;
shake_mag_panic = 0;
shake_mag_acc = 0;
zoom = false

chargecamera = 0
chargeprev = 0
chargesmooth = 0

crouchcamera = 0
crouchcameragoingback = false
alpha = 1
zoomh = 540
zoomw = 960

edge_indicator = ds_queue_create()

//DDP Set this to false to disable background effects to save FPS
// I suggest creating a menu option to set this to false
ini_open("saveData.ini");
global.panicbg = ini_read_real("online", "panicbg", false); // waving background
global.panicmelt = ini_read_real("online", "panicmelt", false) // motion blur
global.panicshake = ini_read_real("online", "panicshake", true) // shaking
global.panicnightmare = ini_read_real("online", "panicnightmare", true) // panic backgrounds
global.panictilt = ini_read_real("online", "panictilt", false) // panic screen tilt
ini_close();

//DDP During runbacks, waveamount slowly increases
global.maxwave = 0
global.wave = 0
ded = false

player = obj_player1
shoving = false
bang = false
image_speed = 0.35
p2pdistance  = 0 
p2pdistancex  = 0 

bound_camera = false;
global.timedgate = false

healthshake = 0
healthold = 100
healthshaketime = 0
playerhealthup = false

targetoverride = noone
targetgoingback = false

lastx = 0
lasty = 0

depth = -9998;
blurpreview = false;

manualhide = false;

// new shit
lastcollect = -1;
color_array = array_create(1, 0);
collect_shake = 0;
hud_posY = 0;
pizzascore_index = 0;
pizzascore_number = sprite_get_number(spr_pizzascore);