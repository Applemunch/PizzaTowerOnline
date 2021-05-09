if room == rm_editor exit;

if place_meeting(x,y,obj_player) {
	opened = true
}

if opened
sprite_index = spr_doorvisited