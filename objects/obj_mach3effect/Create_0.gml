if obj_pause.pause
{
	instance_destroy();
	exit;
}

playerid = obj_player1
image_speed = 0

randomize()
if !check_bysync() && scr_checkskin(checkskin.p_sage) or playerid.character == "S"
	image_blend = choose(make_color_rgb(255, 0, 0), make_color_rgb(0, 255, 0));
else
	image_blend = choose(make_colour_rgb(96, 208, 72), make_colour_rgb(248, 0, 0))
sync = check_bysync();

if instance_exists(playerid)
{
	spr_palette = playerid.spr_palette
	paletteselect = playerid.paletteselect
}
else
{
	spr_palette = spr_peppalette
	paletteselect = 0
}

//color = 0

//switch global.stylethreshold
//{
//case 1:
//color = 1
//break

//case 2:
//color = 2
//break

//case 3:
//color = 3
//break

//}


//if color = 0
//instance_destroy()

//switch global.stylethreshold
//{
//case 1:
//image_blend = make_colour_rgb(248, 224, 128)
//break

//case 2:
//image_blend = make_colour_rgb(224, 144, 0)
//break

//case 3:
//image_blend = make_colour_rgb(248, 0, 0)
//break
//}


alarm[1] = 3
alarm[0] = 15

if check_bysync() == false
	alarm[10] = 5;

sprite_index = playerid.sprite_index;
if global.surfacemach
	surf = surface_create(room_width, room_height);