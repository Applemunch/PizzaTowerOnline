x = obj_player1.x
y = obj_player1.y


    with (obj_camera) {

    shake_mag=0;
    shake_mag_acc=0
}

//DDP Set the panic shader on the backgrounds
//if (global.panic = true or global.snickchallenge = true) && global.panicbg {
//	scr_panicbg_init()
//}

//DDP Disable any kind of motion blur
//application_surface_draw_enable(true)

// ADD THIS
//global.wave = global.maxwave - (global.minutes * 60 + global.seconds) * 60
