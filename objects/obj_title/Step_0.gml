/// @description
if vsp < 20
	vsp += grav;
y += vsp;

if y >= ystart
{
	y = ystart;
	if !grounded
	{
		if !(instance_exists(obj_manual) && obj_manual.visible) && !instance_exists(obj_option) && !instance_exists(obj_erasegame)
		{
			scr_soundeffect(sfx_breakblock2)
		
			with obj_camera
			{
			    shake_mag=5;
			    shake_mag_acc=5/room_speed;
			}
		}
		
		grounded = true;
		vsp = -5;
		repeat 8
			instance_create(irandom_range(bbox_left, bbox_right), bbox_bottom, obj_debris);
		
		if object_index == obj_title
		{
			with obj_player1
			{
				state = states.backbreaker;
				sprite_index = spr_bossintro;
				image_index = 0;
				vsp = -4;
			}
		}
	}
	else
	{
		grav = 0;
		vsp = 0;
	}
}

if object_index == obj_title
{
	var lay_id = layer_get_id("Backgrounds_2");
	var back_id = layer_background_get_id(lay_id);

	if obj_player1.x <= 242
		layer_background_index(back_id, 0);

	if obj_player1.x >= 352 && obj_player1.x <= 562
		layer_background_index(back_id, 1);

	if obj_player1.x >= 704
		layer_background_index(back_id, 2);
}