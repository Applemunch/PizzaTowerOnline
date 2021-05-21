image_speed = 0.1
followQueue = ds_queue_create();

playerid = obj_player1


followid = playerid
toppinwarrior = 1




set = false

canattack = false

global.toppinwarriorattackcountdown = 0
global.toppinwarriorturn = 1

space =0

dir = obj_player1.xscale

steppy = 20
mask_index = spr_player_mask
depth = -5

repeat (6)	with instance_create(x + random_range(-50,50),y+ random_range(-50,50),obj_cloudeffect)
{
sprite_index = spr_baddiespawn
}

