depth = 10
index = -1;

if instance_number(obj_stopsign_editor) > 4 {
	instance_destroy();
}

if room == rm_editor {
	if place_meeting(x, y + 32, obj_solid) {
		while(!place_meeting(x, y + 1, obj_solid)) {
			y += 1;
		}
	}
}