image_speed = 0.35
depth = 104
createdpizza = false
content = obj_pizzakinshroom

if obj_player.character = "S"
	instance_destroy()

spr_closed = spr_pizzaboxunopen;
spr_open = spr_pizzaboxopen;
if string_startswith(room_get_name(room), "steamcc_")
{
	spr_closed = spr_pizzaboxunopen_ss;
	spr_open = spr_pizzaboxopen_ss;
}
sprite_index = spr_closed;