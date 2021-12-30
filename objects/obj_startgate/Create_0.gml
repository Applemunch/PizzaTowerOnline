bgalpha = 1
bgalpha2 = 1
bgalpha3 = 1
bgalpha4 = 1
depth = 50 + floor((room_height - y) / 64); // show higher startgates BEHIND lower ones
level = "none"

drawing = false
targetDoor = "A"

manualhide = false
short = false

msg = ""

if global.gameplay != 0
	sprite_index = spr_entrancegate_NEW;
if check_sugary()
	sprite_index = spr_entrancegate_ss;

readsave = false;

tasec = 0;
tamin = 0;
tachar = "";
toppin1 = false;
toppin2 = false;
toppin3 = false;
toppin4 = false;
toppin5 = false;
highscore = 0;
secret = 0;

myturn = false;