image_index = random_range(0,4)
image_speed = 0
vsp = random_range(-4, 0)
hsp = random_range(-4, 4)
grav = 0.4
image_angle = random_range(1, 270)

depth =-1

if global.secretdebris && room != custom_lvl_room
{
	s = surface_create(sprite_width, sprite_height);
	tile_dataset = tileset_secret;
	tile_dataid = 49;
	height = sprite_xoffset;
	width = sprite_yoffset;
}