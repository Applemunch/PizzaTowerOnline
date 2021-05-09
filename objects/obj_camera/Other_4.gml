x = obj_player1.x
y = obj_player1.y


shake_mag=0;
shake_mag_acc=0


targetoverride = noone
targetgoingback = false


//DDP Set the panic shader on the backgrounds
if !check_shaders()
	global.panicbg = false;

if (global.panic or global.snickchallenge) && global.panicbg {
	scr_panicbg_init()
}

//DDP Disable any kind of motion blur
application_surface_draw_enable(true)