with other
{
	if shotgunAnim = true
	{
		shotgunAnim = false
		with instance_create(x,y,obj_sausageman_dead)
		{
			if other.character == "N"
				sprite_index = spr_minigunfall
			else
				sprite_index = spr_shotgunback
		}
		
		if sprite_index == spr_shotgunsuplexdash
			sprite_index = spr_suplexdash;
	}
}