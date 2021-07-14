draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_font(global.bigfont);

switch loadwhat
{
	default:
		draw_text(960 / 2, 540 / 2, lang_string("load.loading"));
		break;
	
	case 0:
		draw_text(960 / 2, 540 / 2, lang_string("load.txgrp"));
		if prog < 0
			prog++;
		else
		{
			var _tex_array = texturegroup_get_textures("tg_player");
			for (var i = 0; i < array_length(_tex_array); ++i)
				texture_prefetch(_tex_array[i]);
			
			_tex_array = texturegroup_get_textures("tg_background");
			for (var i = 0; i < array_length(_tex_array); ++i)
				texture_prefetch(_tex_array[i]);
			
			_tex_array = texturegroup_get_textures("tg_baddie");
			for (var i = 0; i < array_length(_tex_array); ++i)
				texture_prefetch(_tex_array[i]);
			
			loadwhat = -1;
			alarm[1] = 2;
		}
		break;
}

/*
if loadwhat == 1
{
	draw_set_font(global.font_small);
	
	draw_text((960 / 2) + random_range(-1, 1), (540 / 2) + 35, audio_group_name(agload) + " " + string(audio_group_load_progress(agload)) + "%");
	
	draw_set_halign(fa_left);
	draw_text(0, 0, log);
}
*/