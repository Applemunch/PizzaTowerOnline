/// @description pal_swap_draw_palette(palette_sprite,pal_index,x,y);
/// @param palette_sprite
/// @param pal_index
/// @param x
/// @param y
function pal_swap_draw_palette(argument0, argument1, argument2, argument3) {
	//Draws only the specified palette from the given palette sprite.
	draw_sprite_part(argument0,0,argument1,0,1,sprite_get_height(argument0),argument2,argument3);




}
