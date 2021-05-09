global.timeattack = false;
with obj_timeattack
	alarm[1] = -1;

if menu == menutypes.levelbrowser
{
	obj_player1.state = states.titlescreen;
	if records != undefined
	{
		// scrolling
		if mouse_wheel_up()
			yview += 50;
		if mouse_wheel_down()
			yview -= 50;
		if mouse_check_button_pressed(mb_middle)
			yview = 0;
		
		// grab scrollbar
		if mouse_x >= 620 && mouse_y >= 25
		&& mouse_x <= 620 + 8 && mouse_y <= 25 + 500
		&& mouse_check_button_pressed(mb_left)
			scrolling = true;
		
		if !mouse_check_button(mb_left)
			scrolling = false;
		
		if scrolling
			yview = (clamp(mouse_y - 25, 0, 500) / 500) * yviewmax;
		
		// clamp
		yviewmax = -(ds_list_size(records) * 52) + 464;
		yview = clamp(yview, yviewmax, 0);
	}

	var move = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left));
	
	if (keyboard_check_pressed(ord("R"))
	or ((move == 1 && page < pagelast) or (move == -1 && page > 1)))
	&& !loading && !selectedsearch
	&& menu == menutypes.levelbrowser
	{
		records = undefined;
		page += move;
		if paging_type == 3
			scr_requestpage_alt(page);
		else
			scr_requestpage(page);
	}
	
	if keyboard_check(vk_f1) && !loading && debug
	{
		var map = ds_map_create();
		ds_map_add(map, "name", "test" + string(ds_list_size(records)));
		ds_list_add(records, map);
	}
}

with obj_player2
{
	visible = false
    x = -100000
    y = -100000
}