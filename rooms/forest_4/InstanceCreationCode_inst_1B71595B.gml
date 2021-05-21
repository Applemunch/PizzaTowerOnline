instance_destroy();
exit;

if !global.pizzadelivery && global.pizzasdelivered < 5 && !global.panic
{
    if !global.failcutscene
    {
        if global.pizzasdelivered <= 0
		{
            scene_info =
			[
				[cutscene_set_sprite, obj_gustavo, spr_gustavo_makepizza, 0.35, -1], 
				[cutscene_gustavo_start], 
				[cutscene_wait, 30], 
				[cutscene_set_sprite, obj_gustavo, spr_gustavo_showpizza, 0.35, -1], 
				[cutscene_wait, 10], 
				[cutscene_move_player, obj_player1, obj_gustavo.x - 48, 6, 16], 
				[cutscene_set_sprite, obj_player1, spr_player_gnomepizza, 0.35, 1], 
				[cutscene_set_sprite, obj_gustavo, spr_gustavo_givepizza, 0.35, -1], 
				[cutscene_gustavo_end]
			]
		}
		else
		{
            scene_info =
			[
				[cutscene_set_sprite, obj_gustavo, spr_gustavo_makepizza, 0.35, -1], 
				[cutscene_gustavo_start], 
				[cutscene_wait, 30], 
				[cutscene_set_sprite, obj_gustavo, spr_gustavo_showpizza, 0.35, -1], 
				[cutscene_wait, 10], 
				[cutscene_move_player, obj_player1, obj_gustavo.x - 48, 6, 16], 
				[cutscene_set_sprite, obj_player1, 1756, 0.35, 1], 
				//[cutscene_image_index, obj_player1, 23], 
				[cutscene_set_sprite, obj_gustavo, 1763, 0.35, -1], 
				[cutscene_gustavo_end]
			]
		}
	}
    else
        scene_info = [[202], [cutscene_wait, 20], [cutscene_set_sprite, obj_gustavo, 1765, 0.35, -1], [203, 500], [cutscene_set_sprite, obj_gustavo, 1766, 0.35, -1], [cutscene_wait, 50], [cutscene_set_sprite, obj_gustavo, 1767, 0.35, -1], [cutscene_set_sprite, 3, 1758, 0.35, 1], [203, 500], [cutscene_set_sprite, obj_gustavo, 1768, 0.35, -1], [204, 500, -12], [cutscene_set_sprite, 3, 1759, 0.35, 1], [203, 3], [cutscene_set_sprite, 3, 1760, 0.35, 1], [205, 500, 3], [204, 500, 0], [206, 100], [208, 500, obj_gustavo.xstart, obj_gustavo.ystart, 0.05], [191], [cutscene_move_player, 3, 522, 6, 16], [cutscene_set_sprite, 3, obj_player1.spr_idle, 0.35, 1], [cutscene_set_sprite, obj_gustavo, 1770, 0.35, -1], [cutscene_wait, 80], [cutscene_wait, 60], [cutscene_set_sprite, obj_gustavo, 1762, 0.35, -1], [cutscene_wait, 10], [cutscene_move_player, 3, (obj_gustavo.x - 48), 6, 16], [cutscene_set_sprite, 3, 1756, 0.35, 1], [cutscene_set_sprite, obj_gustavo, 1763, 0.35, -1], [cutscene_gustavo_end]]
}
else
    scene_info = [[cutscene_wait, 2]]