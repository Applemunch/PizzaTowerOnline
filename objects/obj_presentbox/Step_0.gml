

//Set retreat and out timer
switch (global.boxhp)
{
		
case 20: 

getoutspd =130
outtimespd =130
	
case 19: 

getoutspd =130
outtimespd =130	
	
case 18: 

getoutspd =130
outtimespd =130
	
	
case 17: 

getoutspd =100
outtimespd =100

case 16: 

getoutspd =80
outtimespd =80
	
case 15: 

getoutspd =80
outtimespd =80
	
case 14: 

getoutspd =80
outtimespd =80
	
	
case 13: 

getoutspd =80
outtimespd =80
	
	
case 12: 

getoutspd =80
outtimespd =80
	
	
case 11: 

getoutspd =80
outtimespd =80
	
	
case 10: 

getoutspd =80
outtimespd =80

break
case 9: 

getoutspd =80
outtimespd =80

break
case 8: 

getoutspd =80
outtimespd =80

break
case 7: 

getoutspd =80
outtimespd =80

break
case 6: 

getoutspd =80
outtimespd =80

break
case 5: 

getoutspd =80
outtimespd =80

break
case 4: 

getoutspd =80
outtimespd =80

break
case 3: 

getoutspd =80
outtimespd =80

break
case 2: 

getoutspd =80
outtimespd =80

break
case 1: 

getoutspd =5
outtimespd =5

break
case 0: 

instance_destroy(obj_presentbox)

break
}


//Contact with player
with instance_place(x,y,obj_player)
{
	if (((state = states.handstandjump or state = states.punch) && character != "S")
	or (character == "S" && (state == states.handstandjump or state == states.mach3 or state == states.mach2)))
	&& other.sprite_index != spr_present
	{
		if (state == states.handstandjump or state == states.punch) && character != "S"
		{
			sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
			image_index =0
			state = states.tackle
			movespeed = 3
			vsp = -3
		}

		with other
			event_user(0);
	}
}

if (place_meeting(x, y, obj_shotgunbullet) or place_meeting(x, y, obj_antonball))
&& sprite_index != spr_present
	event_user(0);


//Throw Bad guy

if place_meeting(x,y,obj_baddie) && obj_baddie.thrown = true && sprite_index != spr_present
{
if character = 0
{
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}
global.boxhp -= 1
scr_soundeffect(sfx_killenemy)

if global.gameplay == 0
	scr_sleep(50)
repeat 3
{
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_slapstar)
}

				ds_list_shuffle(global.boxlist)
				with obj_presentbox
				{						
				getout = getoutspd
outtime = outtimespd	
sprite_index = spr_present	
				}

}
else {
	    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}
scr_soundeffect(sfx_killenemy)
if global.gameplay == 0
	scr_sleep(50)
repeat 3
{
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_slapstar)
}
sprite_index = spr_present	
}
with instance_create(x,y,obj_sausageman_dead)
sprite_index = other.deadspr
}

//Shoot

if place_meeting(x,y,obj_shotgunbullet) && sprite_index != spr_present
{
//Hit the Noise
if character = 0
{
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}




global.boxhp -= 1
scr_soundeffect(sfx_killenemy)
if global.gameplay == 0
	scr_sleep(50)
repeat 3
{
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_slapstar)
}


				ds_list_shuffle(global.boxlist)
			

			
				with obj_presentbox
				{						
				getout = getoutspd
outtime = outtimespd	
sprite_index = spr_present	
				}

}
else {
	    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}
scr_soundeffect(sfx_killenemy)
if global.gameplay == 0
	scr_sleep(50)
repeat 3
{
	instance_create(x,y,obj_baddiegibs)
	instance_create(x,y,obj_slapstar)
}

sprite_index = spr_present	

}

with instance_create(x,y,obj_sausageman_dead)
sprite_index = other.deadspr
}
					


//Set character 
switch (character){
	case 0:
upspr = spr_noisepresentup
spr = spr_noisepresent
downspr = spr_noisepresentdown
deadspr = spr_playerN_hurt
		break

	case 1:
upspr = spr_gustavopresentup
spr = spr_gustavopresent
downspr = spr_gustavopresentdown
deadspr = spr_gustavopresentdead
		break

	case 2:
upspr = spr_snickpresentup
spr = spr_snickpresent
downspr = spr_snickpresentdown
deadspr = spr_snickpresentdead
		break

	case 3:
upspr = spr_slimepresentup
spr = spr_slimepresent
downspr = spr_slimepresentdown
deadspr = spr_slimepresentdead
		break
		
	case 4:
upspr = spr_stickpresentup
spr = spr_stickpresent
downspr = spr_stickpresentdown
deadspr = spr_stickpresentdead
		break
}




//Tick down the timer for the character to come out
if sprite_index = spr_present
getout -= 1


//Make present character come out
if getout = 0 && sprite_index = spr_present && ( character = 0 or global.boxhp < 14 or (global.boxhp < 18 && character = 1) or (global.boxhp < 17 && character = 2) 
or (global.boxhp < 16 && character = 3) or (global.boxhp < 15 && character = 4))
{
	image_index = 0
sprite_index = upspr
	
}

//Go idle sprite
if floor(image_index) = image_number-1 && sprite_index = upspr
{
	


	//Noise throwing bombs
if character = 0 &&  global.boxhp < 3 && global.boxhp != 1
		with instance_create(x,y,obj_pizzagoblinbomb)
		{
			var a = 1
		if x != obj_player1.x
	a = -sign(x - obj_player1.x)
			hsp = a * 10
			vsp = -8
		} 


	sprite_index = spr
}

//Timer down when idle
if sprite_index = spr
{
	outtime -= 1
}

//Go back down sprite
if outtime = 0  && sprite_index = spr
{
	
	image_index = 0
	sprite_index = downspr
}

//Go back to present and reset variables
if sprite_index = downspr && floor(image_index) = image_number-1
{
				ds_list_shuffle(global.boxlist)
			

			
				with obj_presentbox
				{						
				getout = getoutspd
outtime = outtimespd	
sprite_index = spr_present	
				}
}


//Noisey spawn
if !instance_exists(obj_baddiespawner) && global.boxhp = 10
with instance_create(480,288,obj_baddiespawner)
{
content = obj_noisey
repeat (6) instance_create(x+(random_range(-25,25)),y+(random_range(-25,25)),obj_cloudeffect)
}

//Set character so it isnt the same as another present
if box = 1
character = ds_list_find_index(global.boxlist, "box1")

if box = 2
character = ds_list_find_index(global.boxlist, "box2")

if box = 3
character = ds_list_find_index(global.boxlist, "box3")

if box = 4
character = ds_list_find_index(global.boxlist, "box4")

if box = 5
character = ds_list_find_index(global.boxlist, "box5")

