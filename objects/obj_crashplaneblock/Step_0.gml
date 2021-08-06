var player = instance_place(x, y + 1, obj_player1);
if player && !instance_exists(obj_crashingplane)
	instance_create(player.x, player.y, obj_crashingplane)