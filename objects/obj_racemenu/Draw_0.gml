draw_set_font(font0);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if menu == 0
	draw_text(0, 0, "1 to create game\n2 to join game");

if menu == 1
{
	draw_text(0, 0, "Players: " + string(gms_session_player_count(gms_session_current_id())) + "/" + string(maxplayer) + "\nJoin ID: " + string(gms_session_current_id()));
	if gms_session_player_count(gms_session_current_id()) >= maxplayer
		draw_text(0, 32, "Press 1 to begin");
}

if menu == 2
	draw_text(0, 0, "Waiting for race to begin");

if menu == 3.1 or menu == 3.2
	draw_text(0, 0, "Joining session");