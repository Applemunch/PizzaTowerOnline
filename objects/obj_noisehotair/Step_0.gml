//Drop match
if ((obj_player1.x > x - 800) && (obj_player1.x < x + 800)) && sprite_index != spr_noisehotairthrow && goingup = false
{
	sprite_index = spr_noisehotairthrow
	image_index = 0
}
	
	
if sprite_index = spr_noisehotairthrow && floor(image_index) = 4 && !instance_exists(obj_noisematch)
instance_create(x- image_xscale * 10,y,obj_noisematch)
	
if  sprite_index = spr_noisehotairthrow && floor(image_index) = image_number -1
{
		sprite_index = spr_noisehotair
		goingup = true
}
	
//Go uo
if goingup = true
y -= 5
	
if room == custom_lvl_room
{
	if instance_exists(obj_player1.cam) && y < obj_player1.cam.y - 100
		instance_destroy();
}