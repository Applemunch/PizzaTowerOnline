function scr_player_titlescreen()
{
	//COLORS
	//if key_right2 && sprite_index = spr_pepcooter 
	//{
	//if paletteselect < 9
	//{
	//paletteselect += 1
	//scr_sound(sound_points)
	//}
	//}

	//if -key_left2 && sprite_index = spr_pepcooter
	//{
	//if paletteselect > 0
	//{
	//paletteselect -= 1
	//scr_sound(sound_points)
	//}
	//}
	
	if object_index = obj_player1
		targetDoor = "A"
	if sprite_index = spr_pepcooter && !instance_exists(obj_superdashcloud)
		instance_create(x- 100,y,obj_superdashcloud)

	sprite_index = spr_file2
	image_speed = 0.35
}
