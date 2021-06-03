image_speed = 0.1
chose = false
//Text & TV
message = ""
showtext = false
tvsprite = spr_tvdefault
noisesprite = spr_noiseHUD_idle
xi = 500
yi = 600
imageindexstore = 0
once = false
global.hurtcounter = 0
global.hurtmilestone = 10
alpha = 1
shownranks = false
shownranka = false
shownrankb = false
shownrankc = false

global.srank = 0
global.arank = 0
global.brank = 0
global.crank = 0

character = "PEPPINO"
display_set_gui_size(960, 540)

pizzacoinframe = 0
manualhide = false
surf = -1
panicy = 0

depth = -9998;

jumpscare = -1;
jumpscareimage = irandom(sprite_get_number(spr_scares) - 1);
jumpscaretext = 0;

// new shit
tvprompts_list = ds_list_create()
state = states.transitioncutscene
promptxstart = 641
promptx = promptxstart
prompt = ""
promptspd = 1
prompt_buffer = 0
prompt_max = 150
promptsurface = -1
special_prompts = noone
hud_posx = 0
hud_posY = 0
bubbleindex = 0
bubblespr = noone
idleanim = 180
collect_shake = 0

if global.gameplay != 0
{
	promptsurface = surface_create(290, 102)
	tvsprite = spr_tv_idle;
	sprite_index = spr_tv_off;
}
animset = sprite_index;

mask_index = spr_null;