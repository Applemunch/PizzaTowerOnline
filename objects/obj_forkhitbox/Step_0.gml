if !instance_exists(ID) && room != custom_lvl_room
	instance_destroy()

if instance_exists(ID)
{
	x = ID.x;
	if ID.object_index == obj_smurfknight
		x += ID.image_xscale * 10;
	y = ID.y;
	image_xscale = ID.image_xscale;
	image_index = ID.image_index;
	
	if object_get_parent(ID.object_index) == obj_baddie && ID.rematchscare
	{
		ID.hitboxcreate = false;
		instance_destroy();
	}
	else
	{
		with (ID)
		{
			if object_index == obj_coolpineapple
			or object_index == obj_forknight
			or object_index == obj_smurfknight
			or object_index == obj_indiancheese
			or object_index == obj_noisey
			or object_index == obj_sausageman
			{
				if object_index == obj_sausageman
					other.y = y - 20
	
				if state != states.walk && state != states.rage
				{
					hitboxcreate = false
					instance_destroy(other)
				}
			}

			if object_index == obj_weeniesquire
			{
				if stun = true
				{
					hitboxcreate = false
					instance_destroy(other)
				}
			}

			if object_index == obj_boulder
			{
				if hitwall = false
					instance_destroy(other)
			}

			//SAGE2019
			if object_index == obj_snickexe or object_index == obj_snickexg
			{
				if obj_player1.instakillmove or obj_player1.state == states.handstandjump or obj_player1.state == states.punch
				{
					instance_destroy(other)
					hitboxcreate = false
				}
			}
			
			if object_index == obj_pickle
			{
				if state != states.pizzagoblinthrow
					instance_destroy(other)
			}
			
			if object_index == obj_noisecrusher
			{
				if state != states.bounce
				{
					hitboxcreate = false
					instance_destroy(other)
				}
			}

			if object_index == obj_peasanto
			or object_index == obj_fencer
			or object_index == obj_ninja
			or object_index == obj_pizzice
			or object_index == obj_ancho
			{
				if (state != states.charge && state != states.rage)
				or (obj_player1.state == states.handstandjump && global.gameplay == 0)
				{
					hitboxcreate = false
					instance_destroy(other)
				}
			}

			if object_index == obj_fencer
			{
				if state != states.walk && state != states.charge
				{
					hitboxcreate = false
					instance_destroy(other)
				}
			}
			
			if object_index == obj_thug_red
			or object_index == obj_thug_blue
			or object_index == obj_thug_green
			{
				if state != states.punch
				{
					instance_destroy(other);
					punchinst = noone;
				}
			}
			
			if object_index == obj_minijohn
			{
				if state != states.rage
					instance_destroy(other);
			}
		}
	}
}

