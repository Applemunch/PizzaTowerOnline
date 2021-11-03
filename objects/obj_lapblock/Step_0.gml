// break block
if !broken && !global.panic && !global.snickchallenge && global.gameplay == 0
{
	var player = instance_nearest(x + 32, y + 32, obj_player);
	if player && distance_to_object(player) < 64
	{
		if player.state == states.backbreaker && player.sprite_index == player.spr_taunt
		{
			scr_soundeffect(sfx_collectgiantpizza);
			broken = true;
			y = -9999;
			
			ds_list_add(global.saveroom, id);
		}
	}
}

// alpha
if broken && layer_exists(mylayer)
{
	alpha = lerp(alpha, 0, 0.1);
	if alpha < 0.1
	{
		layer_shader(mylayer, -1);
		layer_set_visible(mylayer, false);
		mylayer = -1;
	}
}