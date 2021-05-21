playerid = obj_player1



if floor(image_index) = image_number - 1 && (sprite_index = spr_cheesedragon_flames
or sprite_index = spr_cheesedragon_stomp)
{
sprite_index = spr_cheesedragon_idle
attacked = false

attackcycle = choose(0,2)




}

//Attack Cycle 1: Debris Stomp

if attackcycle = 0 && attacked = false && floor(image_index) = 13 && sprite_index = spr_cheesedragon_stomp
{
	    with (obj_baddie)
{
if grounded 
{
vsp = -11
hsp = 0
}
}
scr_soundeffect(sfx_groundpound)
            with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=60/room_speed;
}

//Spawn bowling bowls
instance_create(playerid.x + -250, -10, obj_bowlingball)
instance_create(playerid.x + -(250/2), -10, obj_bowlingball)
instance_create(playerid.x, -10, obj_bowlingball)
instance_create(playerid.x + (250/2), -10, obj_bowlingball)
instance_create(playerid.x + 250, -10, obj_bowlingball)
attacked = true

}

//Attack Cycle 2: Enemy spawn

//if attackcycle = 1 && attacked = false && floor(image_index) = 13 && sprite_index = spr_cheesedragon_stomp
//{
//		    with (obj_baddie)
//{
//if grounded 
//{
//vsp = -11
//hsp = 0
//}
//}
//            with (obj_camera) {

//    shake_mag=10;
//    shake_mag_acc=30/room_speed;
//}
	//Spawn enemies
//	if instance_number(obj_baddie) < 20
//	{
//		var spawnx = playerid.x 
//		var spawny = playerid.y - 200
//		var randompositionx = random_range(-500,500)
//		var spawnxrandom = spawnx + randompositionx
//		while instance_place( spawnxrandom,spawny - 50 ,obj_solid)
//		{
//		spawny += 5
//		if  spawnxrandom > room_width/2
//		spawnxrandom -= 5
//		if  spawnxrandom <= room_width/2
//		spawnxrandom += 5
//		}
//		with instance_create(clamp(spawnxrandom,200 ,room_width - 200 ), spawny, choose(obj_swedishmonkey, obj_pizzard, obj_cheeseslime, obj_forknight, obj_pepgoblin, obj_fencer, obj_pizzagoblin, obj_ancho))
//		{
//			instance_create(x,y,obj_pizzaportalfade)
//		important = true
//		state =states.stun
//		stunned = 50
//		}
//	}
//attacked = true

//}


//Attack Cycle 3: Flame

if attackcycle = 2 &&  floor(image_index) > 13 &&  floor(image_index) < 21 && sprite_index = spr_cheesedragon_flames && alarm[1] = -1
{
alarm[1] = 1
}


//Hurt and go up
if floor(image_index) = image_number - 1 && sprite_index = spr_cheesedragon_hurt
sprite_index = spr_cheesedragon_goingup

if sprite_index = spr_cheesedragon_goingup
y -= 4

if y = -1000
instance_destroy()
