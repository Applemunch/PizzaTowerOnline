if state != states.golf
	scr_collide();

if ds_list_find_index(global.baddieroom, id) == -1  
{
	// thrown camera
	if state == states.tumble or thrown
	{
		with obj_camera
		{
			targetoverride = other.id;
			targetgoingback = false;
		}
		alarm[4] = 5;
	}

	// reset thrown camera when grabbed
	if state == states.golf
	{
		with obj_camera
		{
			if targetoverride == other.id
			{
				targetoverride = noone;
				targetgoingback = false;
			}
		}
		alarm[4] = -1;
	}

	// focus back to player if hurt
	if obj_player1.state == states.hurt && obj_camera.targetoverride == id
	{
		with obj_camera
		{
			targetoverride = noone;
			targetgoingback = true;
		}
	}
}