draw_self()
if grounded && !scr_solid(x,y)
{
	pickupimg += 0.35;
	draw_sprite(spr_grabicon, pickupimg, x + 20, y - 30)
}