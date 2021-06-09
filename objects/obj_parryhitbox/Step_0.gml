var my_player = obj_player1.id

if my_player.state != states.backbreaker && my_player.state != states.parry && my_player.state != states.mach3 && my_player.sprite_index != my_player.spr_swingding
    instance_destroy();
image_xscale = my_player.xscale;
x = my_player.x;
y = my_player.y;