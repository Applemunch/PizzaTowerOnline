draw_set_alpha(image_alpha);

//Draw Text
draw_set_color(negative ? make_colour_rgb(248, 0, 0) : make_colour_rgb(255, 255, 255))
draw_set_font(global.smallnumber)
draw_set_halign(fa_center);
draw_set_flash(flash);
draw_text(x, y, number);
draw_set_flash(false);

draw_set_alpha(1);

// fade out
if fadeout
	image_alpha -= 0.1;
