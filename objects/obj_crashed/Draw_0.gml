draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_font(global.font_small);

draw_set_halign(fa_center);
draw_text((room_width / 2) + random_range(-1, 1), room_height - 64, lang_string("general.crash.con"));

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed(16, 16, crashtext, 2, 2, 0);

draw_set_alpha(0.75);
draw_set_font(font1);
draw_text_ext(16, 32 + (string_height(crashtext) * 2), string(global.crashed[1]), 16, room_width);

draw_set_alpha(image_alpha);
draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);