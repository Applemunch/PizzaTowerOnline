/// @description Time uniform
bg = bg_desert
bg2 = bg_null
bg3 = bg_null

bgscrollx = 0;
bgscrolly = 0;

bgscroll2x = 0;
bgscroll2y = 0;

bgscroll3x = 0;
bgscroll3y = 0;

bgscroll4x = 0;
bgscroll4y = 0;

bgscroll5x = 0;
bgscroll5y = 0;

ground1x = 0;
ground1y = 0;
ground2x = 0;
ground2y = 0;

scroll = 0;

if instance_number(obj_parrallax) > 1
{
	show_debug_message("Extra obj_parrallax in " + room_get_name(room));
	instance_destroy();
}