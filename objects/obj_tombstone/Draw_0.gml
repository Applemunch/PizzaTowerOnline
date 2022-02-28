draw_self();

var draw = true;
with obj_player if character == "V" or character == "S"
	draw = false;

if !unpickable && grounded && !place_meeting(x, y, obj_solid) && draw
{
	grabiconimg += 0.35;
    draw_sprite_ext(spr_grabicon, grabiconimg, x - (image_xscale < 0 ? 12 : 2), y - 30, 1, 1, image_angle, image_blend, image_alpha);
}
