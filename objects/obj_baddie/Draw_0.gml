//Draw
haspalette = (object_index == obj_cheeseslime or object_index == obj_forknight or object_index == obj_pepgoblin or object_index == obj_pizzard or object_index == obj_thug_blue or object_index == obj_thug_green);

if haspalette
	pal_swap_set(spr_palette, paletteselect, false)

var spr = sprite_index;
if sprite_exists(spr)
	draw_sprite_ext(spr, image_index, x, y, image_xscale, image_yscale, img_angle, image_blend, image_alpha);

if haspalette
	shader_reset()

//Flash
if flash && check_shaders()
{ 
    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
    //Draw
	draw_sprite_ext(spr, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	// Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)
}