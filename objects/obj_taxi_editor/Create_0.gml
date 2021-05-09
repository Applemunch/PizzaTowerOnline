image_speed = 0.35
playerid = obj_null
hsp = 0
vsp = 0
grav = 0
dust = 0
index = -1;
xx = x;
yy = y;
sign_id = 0;
if room == rm_editor {
	if place_meeting(x, y + 32, obj_solid) {
		while(!place_meeting(x, y + 1, obj_solid)) {
			y += 1;
		}
	}
}