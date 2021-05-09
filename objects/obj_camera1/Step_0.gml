
if obj_player1.spotlight = true
player = obj_player1
else
player = obj_player2

if global.coop = true
{
	if obj_player1.spotlight = true
	{
p2pdistance = point_distance(obj_player1.x, 0, obj_player2.x, 0)
if obj_player1.x >= obj_player2.x
p2pdistancex = -p2pdistance/2
else
p2pdistancex = p2pdistance/2
	}
else
{
p2pdistance = point_distance(obj_player2.x, 0, obj_player1.x, 0)

if obj_player2.x >= obj_player1.x
p2pdistancex = -p2pdistance/2
else
p2pdistancex = p2pdistance/2
}

}
else p2pdistancex = 0

if floor(image_index) = 10
 shoving = false




if room == strongcold_endscreen or room == rank_room or room == timesuproom or room == Realtitlescreen or room == characterselect
visible = false
else 
visible = true




if global.combo >= 10
{
global.SAGEcombo10 = true
	ini_open("saveData.ini")
	ini_write_string("SAGE2019","combo10",true);
	ini_close()
	
}

if shoving = true &&  image_index >= 3 && bang = false
{
	with instance_create(x,y,obj_fallingHUDface)
	{
	if (obj_player1.spotlight = false && obj_player1.character = "P") or (obj_player1.spotlight = true && obj_player2.character = "P")
	{
	sprite = spr_pepinoHUDscream
	hsp = random_range(-1,-5)
	}
		else
		{
		sprite = spr_noiseHUD_panic
		hsp = random_range(1,5)
		}
	}
	bang = true
}
if shoving = false
bang = false

if (room == timesuproom)
timestop = true


if global.seconds <= 0 && global.minutes <= 0  && ded = false
{
	alarm[1] = -1
alarm[2] = 3

ded = true



}

if global.seconds < 0 
{
global.seconds = 59
global.minutes -= 1

}

if global.seconds > 59
{
global.minutes += 1
global.seconds -= 59
}

if ((global.panic = true) && global.minutes < 1) or player.sprite_index = spr_player_timesup
{
    shake_mag=2;
    shake_mag_acc=3/room_speed;
    }
    else if (global.panic = true)  && basement = false
    {
    shake_mag=2;
    shake_mag_acc=3/room_speed;
    }
    
///snap view to the section of the room that the player's in

//calculate the shake magnitude here
if (shake_mag > 0) {
    shake_mag-=shake_mag_acc;
    if (shake_mag<0) {
        shake_mag=0;
    }
}

if(instance_exists(player)) && player.state != states.timesup && player.state != states.gameover 
{

var target = player;
var coopdistance = distance_to_object(obj_player2)/2

if (player.state = states.mach3 or player.state = states.rideweenie or player.state = states.machroll)
{
if chargecamera > player.xscale * 100
chargecamera -= 2
if chargecamera < player.xscale * 100
chargecamera += 2

__view_set( e__VW.XView, 0, target.x  - (__view_get( e__VW.WView, 0 )/2) + (chargecamera) + p2pdistancex )
}
else
{
if chargecamera > 0
chargecamera -= 2
if chargecamera < 0
chargecamera += 2

__view_set( e__VW.XView, 0, target.x - (__view_get( e__VW.WView, 0 )/2)  + (chargecamera) + p2pdistancex)

}
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0, room_width - __view_get( e__VW.WView, 0 )) ) 
__view_set( e__VW.YView, 0, target.y - (__view_get( e__VW.HView, 0 )/2) )
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0, room_height - __view_get( e__VW.HView, 0 )) ) 




if shake_mag != 0
{

    
    __view_set( e__VW.XView, 0, target.x - (__view_get( e__VW.WView, 0 )/2) + (chargecamera)+ p2pdistancex )
    __view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0, room_width - __view_get( e__VW.WView, 0 )) ) 
    __view_set( e__VW.YView, 0, (target.y - (__view_get( e__VW.HView, 0 )/2) + irandom_range(-shake_mag,shake_mag)) )
    __view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0+ irandom_range(-shake_mag,shake_mag), (room_height) - __view_get( e__VW.HView, 0 )+ irandom_range(-shake_mag,shake_mag)) )  
}
}


