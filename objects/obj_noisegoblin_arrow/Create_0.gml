player = instance_nearest(x,y,obj_player1)
direction = point_direction(x, y - 24, player.x, player.y); // Give the bullet a direction
speed = 6;
image_speed = 0.35;
image_angle = direction;

parry = false;
_id = noone;