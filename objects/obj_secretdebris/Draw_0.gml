if global.secretdebris && room != custom_lvl_room && tile_dataid != -1
{
	if !surface_exists(s)
	    s = surface_create(sprite_width, sprite_height);
	surface_set_target(s);

	gpu_set_blendmode(bm_normal);
	draw_sprite_ext(sprite_index, image_index, sprite_xoffset, sprite_yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	
	gpu_set_blendmode_ext(bm_dest_colour, bm_inv_src_alpha);
	draw_tile(tile_dataset, tile_dataid, 0, 0, 0);
	draw_tile(tile_dataset, tile_dataid, 0, 32, 0);
	draw_tile(tile_dataset, tile_dataid, 0, 0, 32);
	draw_tile(tile_dataset, tile_dataid, 0, 32, 32);
	draw_tile(tile_dataset, tile_dataid, 0, -32, 0);
	draw_tile(tile_dataset, tile_dataid, 0, 0, -32);
	draw_tile(tile_dataset, tile_dataid, 0, -32, -32);
	draw_tile(tile_dataset, tile_dataid, 0, 32, -32);
	draw_tile(tile_dataset, tile_dataid, 0, -32, 32);
	gpu_set_blendmode(bm_normal);

	surface_reset_target();
	draw_surface(s, x - sprite_xoffset, y - sprite_yoffset);
}
else
{
	var spr = spr_debris;
	if sprite_index == spr_secretbigdebris
		spr = spr_bigdebris;
	
	draw_sprite_ext(spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}