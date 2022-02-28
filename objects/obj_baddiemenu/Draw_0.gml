/// @description
draw_self();

if content != noone && showbaddie
{
	var spr = -1;
	if content == "special1"
	{
		spr = spr_sausageman_idle;
		pal_swap_set(spr_sausageman_palette, 1, false);
	}
	else
		spr = object_get_sprite(content);
	
	if spr == spr_noisey_walk_NEW && global.gameplay == 0
		spr = spr_noisey_walk;
	
	draw_sprite_ext(spr, 0, x, y - 64, image_xscale, image_yscale, image_angle, image_blend, 0.5);
	pal_swap_reset();
}
