

if obj_player1.spotlight = true
playerid = obj_player1
else
playerid = obj_player2

visible = playerid.visible


if set = false
switch (toppinwarrior)
{
	case 1:
depth =10
	followid = playerid
spr_idle = spr_twarrior1_idle
spr_pose = spr_twarrior1_pose
spr_run =  spr_twarrior1_run
spr_attack = spr_twarrior1_attack
spr_hurt = spr_twarrior1_hurt
global.toppinwarriorid1 = id


set = true
break

	case 2:
	depth =11
if variable_global_exists("toppinwarriorid1")
	followid = global.toppinwarriorid1
	else 
	followid = playerid
spr_idle = spr_twarrior2_idle
spr_pose = spr_twarrior2_pose
spr_run =  spr_twarrior2_run
spr_attack  = spr_twarrior2_attack
spr_hurt  = spr_twarrior2_hurt
global.toppinwarriorid2 = id
set = true
break

	case 3:
		depth =12
if variable_global_exists("toppinwarriorid2")
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1")
	followid = global.toppinwarriorid1
	else 
	followid = playerid
	
spr_idle = spr_twarrior3_idle
spr_pose = spr_twarrior3_pose
spr_run =  spr_twarrior3_run
spr_attack  = spr_twarrior3_attack
spr_hurt  = spr_twarrior3_hurt
global.toppinwarriorid3 = id
set = true
break

	case 4:
		depth =13
if variable_global_exists("toppinwarriorid3")
	followid = global.toppinwarriorid3
	else if variable_global_exists("toppinwarriorid2")
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1")
	followid = global.toppinwarriorid1
	else 
	followid = playerid

spr_idle = spr_twarrior4_idle
spr_pose = spr_twarrior4_pose
spr_run =  spr_twarrior4_run
spr_attack  = spr_twarrior4_attack
spr_hurt  = spr_twarrior4_hurt
global.toppinwarriorid4 = id
set = true
break

	case 5:
	depth =14
if variable_global_exists("toppinwarriorid4")
	followid = global.toppinwarriorid4
	else if variable_global_exists("toppinwarriorid3")
	followid = global.toppinwarriorid3
	else if variable_global_exists("toppinwarriorid2")
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1")
	followid = global.toppinwarriorid1
	else 
	followid = playerid
spr_idle = spr_twarrior5_idle
spr_pose = spr_twarrior5_pose
spr_run =  spr_twarrior5_run
spr_attack  = spr_twarrior5_attack
spr_hurt  = spr_twarrior5_hurt
global.toppinwarriorid5 = id
set = true
break

}




if playerid.grounded = true
{
if space < 30 && dir = -1
space ++

if space > -30 && dir = 1
space --
}
else if space > 0
space --
else if space < 0
space ++


		//Follow Player
if instance_exists(followid)
{
	ds_queue_enqueue(followQueue, followid.x + space) ;

	ds_queue_enqueue(followQueue, followid.y);
	LAG_STEPS = 10;
	if (ds_queue_size(followQueue) > LAG_STEPS*2) {

	  x=ds_queue_dequeue(followQueue);
	  y=ds_queue_dequeue(followQueue);
	}
}



if xprevious - x != 0 
image_xscale = -sign(xprevious - x)
else if playerid.hsp = 0 
image_xscale = playerid.xscale

if dir != playerid.xscale
{

dir = playerid.xscale
}



//Who can attack?
//if !instance_exists(obj_toppinwarriorattack)
//switch global.toppinwarriorturn 
//{
//	case 1:
	
//	global.toppinwarriorid1.canattack = true
	//Attack countdown
//if global.toppinwarriorattackcountdown < 200
//global.toppinwarriorattackcountdown ++
	
//if global.toppinwarriorattackcountdown = 200
//{
//global.toppinwarriorid1.canattack = true
//global.toppinwarriorattackcountdown = 0
//}
//break

//	case 2:
	
//global.toppinwarriorid2.canattack = true

//break

//	case 3:
	
//global.toppinwarriorid3.canattack = true
//break

//	case 4:
	
	
//global.toppinwarriorid4.canattack = true
//break

//	case 5:
//	
//global.toppinwarriorid5.canattack = true

//break

//}

//Attack a random enemy on screen
//if visible = true && canattack = true && (playerid.key_slap2)
//{
//var target = instance_nearest(x,y,obj_baddie)

		
	//	if instance_exists(target) && (target.y < y +20 && target.y > y -20) && (point_in_rectangle(target.x, target.y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) 
	//	{

//			with instance_create(playerid.x, playerid.y, obj_toppinwarriorattack)
	//	{
			
		//image_xscale = sign(target.x - x)
//			image_xscale = other.playerid.xscale
//		sprite_index = other.spr_attack
//		attackerID = other.id
		
//				other.canattack = false
//		other.visible = false
		
//		if global.toppinwarriorturn < 5
//		global.toppinwarriorturn += 1
//		else
//		global.toppinwarriorturn = 1
		
//		}
		
	
//}


if playerid.state != states.backbreaker
{
if x != xprevious or y != yprevious
sprite_index = spr_run
else
sprite_index = spr_idle
}
else
sprite_index = spr_pose


//Effect
if sprite_index = spr_run  && scr_solid(x,y+1) && visible = true
steppy --
if steppy = 0
{
instance_create(x,y+43,obj_cloudeffect)
steppy = 20
}
