/// @description pal_swap_set(palette_sprite_index, palette_index,palette is surface);
/// @param palette_sprite_index
/// @param  palette_index
/// @param palette is surface
function pal_swap_set() {
	if !check_shaders()
		exit;
	
	shader_set(Pal_Shader);
	var _pal_sprite=argument[0];
	var _pal_index=argument[1];

	if !sprite_exists(_pal_sprite)
		exit;

	if(!argument[2])
	{   //Using a sprite based palette

	    var tex = sprite_get_texture(_pal_sprite, 0);
	    var UVs = sprite_get_uvs(_pal_sprite, 0);
    
	    texture_set_stage(Pal_Texture, tex);
	    texture_set_interpolation_ext(Pal_Texture, 1)
    
	    var texel_x = texture_get_texel_width(tex);
	    var texel_y = texture_get_texel_height(tex);
	    var texel_hx = texel_x * 0.5;
	    var texel_hy = texel_y * 0.5;
    
	    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
	    shader_set_uniform_f(Pal_UVs, UVs[0] + texel_hx, UVs[1] + texel_hy, UVs[2] + texel_hx, UVs[3] + texel_hy);
	    shader_set_uniform_f(Pal_Index, _pal_index);
	}
	else
	{   //Using a surface based palette
	    var tex = surface_get_texture(_pal_sprite);
    
	    texture_set_stage(Pal_Texture, tex);
	    texture_set_interpolation_ext(Pal_Texture, 1)
    
	    var texel_x = texture_get_texel_width(tex);
	    var texel_y = texture_get_texel_height(tex);
	    var texel_hx = texel_x * 0.5;
	    var texel_hy = texel_y * 0.5;
    
	    shader_set_uniform_f(Pal_Texel_Size, texel_x, texel_y);
	    shader_set_uniform_f(Pal_UVs, texel_hx, texel_hy, 1.0+texel_hx, 1.0+texel_hy);
	    shader_set_uniform_f(Pal_Index, _pal_index);
	}
}

function custompal_update(color)
{
	palcolors = color;
	if surface_exists(palsurf)
		surface_free(palsurf);
		
	var colorcount = pal_swap_get_color_count(spr_palette);
	palsurf = surface_create(2, max(colorcount, ds_list_size(palcolors)));
	
	surface_set_target(palsurf);
	for(var i = 0; i < colorcount; i++)
	{
		var col = pal_swap_get_pal_color(spr_palette, 0, i);
		draw_point_color(0, i, col);
	}
	for(var i = 0; i < surface_get_height(palsurf); i++)
	{
		if i < array_length(palcolors)
			draw_point_color(1, i, palcolors[| i]);
		else
			draw_point_color(1, i, c_black);
	}
	surface_reset_target();
	
	dsread = ds_list_write(palcolors);
}