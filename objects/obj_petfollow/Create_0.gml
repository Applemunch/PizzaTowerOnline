if instance_number(obj_petfollow) > 1
{
	instance_destroy(id, false);
	exit;
}

event_inherited();
image_speed = 0.35;

petind = obj_player1.petfollow;
scr_petspr(petind);
yoffset = 0;
xoffsetmax = 35;

siner = 0;
