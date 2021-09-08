if global.pizzadelivery && instance_exists(obj_gnomecustomerblock)
{
    other.vsp = 10;
    var xx = x + (customer_x * image_xscale);
    var yy = y + (customer_y * image_yscale);
    var player = other.id;
    var door = id;
    xscale = sign(image_xscale);
	
    if !instance_exists(obj_cutscene_handler)
    {
		global.heattime = 60;
        var _xscale = player.xscale;
        if player.x != x
            _xscale = sign(x - player.x);
		
        with instance_create(0, 0, obj_cutscene_handler)
        {
            var door_xscale = -sign(door.image_xscale * 16);
            depth = other.depth - 1;
            scene_info = 
			[
				[cutscene_customer_start, player],
				[cutscene_set_sprite, player, spr_player_knock, 0.35, _xscale], 
				[cutscene_waitfor_sprite, player], 
				[cutscene_set_sprite, player, spr_player_knock, 0.35, _xscale],
				[cutscene_waitfor_sprite, player],
				[cutscene_move_player, player, door.x + door.player_standx * -door_xscale, 6, 16], 
				[cutscene_set_sprite, player, player.spr_idle, 0.35, door_xscale], 
				[cutscene_wait, 30], 
				[cutscene_image_index, door, 1], 
				[cutscene_customer_create, xx, yy, other.spr_idle, other.spr_happy, -door_xscale], 
				[cutscene_wait, 5], 
				[cutscene_set_sprite, player, spr_player_givepizza, 0.35, door_xscale],
				[cutscene_wait, 45], 
				[cutscene_set_sprite, player, spr_player_throw, 0.35, door_xscale], 
				[cutscene_customer_end, player, door.gnome_id]
			];
        }
    }
}