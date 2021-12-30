audio_stop_all();
global.panic = false;
global.snickchallenge = false;
scr_soundeffect(sfx_pizzatime);
scr_soundeffect(sfx_secretfound);
fade = 0;

depth = -1000;

with obj_player1
{
	vsp = 2;
	image_index = 0;
	image_speed = 0.1;
	state = states.rotate;
}

instance_destroy(obj_followcharacter);
instance_destroy(obj_debris);
endlevel();
