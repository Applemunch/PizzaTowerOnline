if spr_idle == spr_nohat
	spr_idle = -1;
obj_player1.hatsprite = spr_idle;
scr_soundeffect(sfx_collecttoppin);
instance_destroy();