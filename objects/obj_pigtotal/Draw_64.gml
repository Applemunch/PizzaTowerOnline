draw_set_alpha(image_alpha);
draw_sprite(spr_pigtotal, -1, 860, 440 + hud_posY);

draw_set_font(global.bigfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
if image_alpha >= 1
	draw_text(860, 440 + hud_posY, string(global.pigtotal));

draw_set_alpha(1);