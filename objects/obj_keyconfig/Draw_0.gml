// setup
draw_set_font(global.bigfont);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_colour(c_white);

draw_rectangle_color(0, 0, 960, 540, c_black, c_black, c_black, c_black, false)
draw_text_colour(80, 50, "BACK", c_white, c_white, c_white, c_white, key_select == -1 ? 1 : 0.5)

// keys
draw_text_colour(960/2 - 60, 50, "UP", c_white, c_white, c_white, c_white, key_select == 0 ? 1 : 0.5)
draw_text(960/2 + 100, 50, scr_keyname(global.key_up))

draw_text_colour(960/2- 60, 100, "DOWN", c_white, c_white, c_white, c_white, key_select == 1 ? 1 : 0.5)
draw_text(960/2 + 100, 100, scr_keyname(global.key_down))

draw_text_colour(960/2- 60, 150, "RIGHT", c_white, c_white, c_white, c_white, key_select == 2 ? 1 : 0.5)
draw_text(960/2 + 100, 150, scr_keyname(global.key_right))

draw_text_colour(960/2- 60, 200, "LEFT", c_white, c_white, c_white, c_white, key_select == 3 ? 1 : 0.5)
draw_text(960/2 + 100, 200, scr_keyname(global.key_left))

draw_text_colour(960/2- 60, 250, "JUMP", c_white, c_white, c_white, c_white, key_select == 4 ? 1 : 0.5)
draw_text(960/2 + 100, 250, scr_keyname(global.key_jump))

draw_text_colour(960/2- 60, 300, "GRAB", c_white, c_white, c_white, c_white, key_select == 5 ? 1 : 0.5)
draw_text(960/2 + 100, 300, scr_keyname(global.key_slap))

draw_text_colour(960/2- 60, 350, "DASH", c_white, c_white, c_white, c_white, key_select == 6 ? 1 : 0.5)
draw_text(960/2 + 100, 350, scr_keyname(global.key_attack))

draw_text_colour(960/2- 60, 400, "SHOOT", c_white, c_white, c_white, c_white, key_select == 7 ? 1 : 0.5)
draw_text(960/2 + 100, 400, scr_keyname(global.key_shoot))

draw_text_colour(960/2- 60, 450, "TAUNT", c_white, c_white, c_white, c_white, key_select == 8 ? 1 : 0.5)
draw_text(960/2 + 100, 450, scr_keyname(global.key_taunt))

draw_text_colour(960/2- 60, 500, "PAUSE", c_white, c_white, c_white, c_white, key_select == 9 ? 1 : 0.5)
draw_text(960/2 + 100, 500, scr_keyname(global.key_start))
