draw_rectangle_color(0,0,960,540,c_black,c_black,c_black,c_black,false)

//Draw Text
draw_set_font(global.bigfont)
draw_set_halign(fa_center);
draw_set_color(c_white)

draw_text(960/2, 200, lang_string("options.erase.text"))

draw_text_colour(960/2 - 80, 300, lang_string("options.erase.no"), c_white, c_white, c_white, c_white, optionselected == 0 ? 1 : 0.5)
draw_text_colour(960/2+ 80, 300, lang_string("options.erase.yes"), c_white, c_white, c_white, c_white, optionselected == 1 ? 1 : 0.5)