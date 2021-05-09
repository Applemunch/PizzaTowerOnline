targetRoom = medieval_pizzamart
visible = false;

if global.gameplay != 0 && !global.snickchallenge
{
	var lay_id = layer_get_id("Assets_1");
	var s = layer_sprite_get_id(lay_id, "graphic_67D58040");
	layer_sprite_destroy(s);
	instance_destroy();
}