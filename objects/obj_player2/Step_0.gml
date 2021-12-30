visible = false;
scr_getinput2()

/*
switch (state)
{
    case states.normal: scr_player_normal (); break;
	case states.grabbed: scr_player_grabbed (); break;
	case states.finishingblow: scr_player_finishingblow (); break;
	case states.tumble: scr_player_tumble (); break;
	case states.titlescreen: scr_player_titlescreen (); break;
	case states.ejected: scr_player_ejected (); break;
	case states.firemouth: scr_player_firemouth (); break;
	case states.fireass: scr_player_fireass (); break;
	case states.transitioncutscene: scr_player_transitioncutscene (); break;
    case states.hookshot: scr_playerN_hookshot (); break;
    case states.slap: scr_player_slap (); break;
    case states.tacklecharge: scr_player_tacklecharge (); break;
    case states.cheesepep: scr_player_cheesepep (); break;
    case states.cheeseball: scr_player_cheeseball (); break;
    case states.cheesepepstick: scr_player_cheesepepstick (); break;
    case states.boxxedpep: scr_player_boxxedpep (); break;
    case states.pistolaim: scr_player_pistolaim (); break;
    case states.climbwall: scr_player_climbwall (); break;
    case states.knightpepslopes: scr_player_knightpepslopes (); break;
    case states.portal: scr_player_portal(); break;
    case states.secondjump: scr_player_secondjump (); break;
    case states.chainsawbump: scr_player_chainsawbump (); break;
    case states.handstandjump: scr_player_handstandjump (); break;
    case states.gottreasure: scr_player_gottreasure (); break;
    case states.knightpep: scr_player_knightpep (); break;
    case states.knightpepattack: scr_player_knightpepattack (); break;
    case states.meteorpep: scr_player_meteorpep (); break;
    case states.bombpep: scr_player_bombpep (); break;
    case states.grabbing: scr_player_grabbing (); break;
    case states.chainsawpogo: scr_player_chainsawpogo (); break;
    case states.shotgunjump: scr_player_shotgunjump (); break;
    case states.stunned: scr_player_stunned (); break;
    case states.highjump: scr_player_highjump (); break;
    case states.chainsaw: scr_player_chainsaw (); break;
    case states.facestomp: scr_player_facestomp (); break;
    case states.timesup: scr_player_timesup (); break;
    case states.machroll: scr_player_machroll (); break;
    case states.pistol: scr_player_pistol (); break;
    case states.shotgun: scr_player_shotgun (); break;
    case states.machfreefall: scr_player_machfreefall (); break;
    case states._throw: scr_player_throw (); break;
    case states.superslam: scr_player_superslam (); break;
    case states.slam: scr_player_slam (); break;
    case states.skateboard: scr_player_skateboard (); break;
    case states.grind: scr_player_grind (); break;
    case states.grab: scr_player_grab (); break;
    case states.punch: scr_player_punch (); break;
    case states.backkick: scr_player_backkick (); break;
    case states.uppunch: scr_player_uppunch (); break;
    case states.shoulder: scr_player_shoulder (); break;
    case states.backbreaker: scr_player_backbreaker (); break;
    case states.bossdefeat: scr_player_bossdefeat (); break;
    case states.bossintro: scr_player_bossintro (); break;
    case states.smirk: scr_player_smirk (); break;
    case states.pizzathrow: scr_player_pizzathrow (); break;
    case states.gameover: scr_player_gameover (); break;
    case states.Sjumpland: scr_player_Sjumpland (); break;
    case states.freefallprep: scr_player_freefallprep (); break;
    case states.runonball: scr_player_runonball (); break;
    case states.boulder: scr_player_boulder (); break;
    case states.keyget: scr_player_keyget (); break;
    case states.tackle: scr_player_tackle (); break;
    case states.slipnslide: scr_player_slipnslide (); break;
    case states.ladder: scr_player_ladder (); break;
    case states.jump: scr_player_jump (); break;
    case states.victory: scr_player_victory (); break;
    case states.comingoutdoor: scr_player_comingoutdoor (); break;
    case states.Sjump: scr_player_Sjump (); break;
    case states.Sjumpprep: scr_player_Sjumpprep (); break;
    case states.crouch: scr_player_crouch (); break;
    case states.crouchjump: scr_player_crouchjump (); break;
    case states.crouchslide: scr_player_crouchslide (); break;
    case states.mach1: scr_player_mach1 (); break;
    case states.mach2: scr_player_mach2 (); break;
    case states.mach3: scr_player_mach3 (); break;
    case states.machslide: scr_player_machslide (); break;
    case states.bump: scr_player_bump (); break;
    case states.hurt: scr_player_hurt (); break;
    case states.freefall: scr_player_freefall (); break;
    case states.freefallland: scr_player_freefallland (); break;
    case states.hang: scr_player_hang (); break;
    case states.door: scr_player_door (); break;
    case states.barrel: scr_player_barrel (); break;
    case states.current: scr_player_current (); break;
	case states.taxi: scr_player_taxi (); break;
	case states.pogo: scr_player_pogo (); break;
	case states.rideweenie: scr_player_rideweenie (); break;
	case states.faceplant: scr_player_faceplant (); break;
	case states.ghost: scr_player_ghost (); break;
}

 
 //Pepper Pizza
// if pizzapepper > 0
// {
//angry = true
//anger = 1
// pizzapepper --
// if character = "P"
// paletteselect = 2
// else
// paletteselect = 1
// }
// else
// if pizzapepper = 0 && angry = true
// {
	 
//	  if character = "P"
// paletteselect = 1
// else
// paletteselect = 0
	 
//angry = false
//anger = 0
// }
 
 //Supercharge
 if global.combo >= 3 && state != states.backbreaker && global.coop =true
supercharged = true
 
 //Supercharged effect
if !instance_exists(superchargedeffectid) && supercharged = true
{
	
	with instance_create(x,y,obj_superchargeeffect)
	{
	playerid = other.object_index	
	other.superchargedeffectid = id
	
	}
}


 //Pizzashield
 
 if !instance_exists(pizzashieldid) && pizzashield = true
 {
	 	with instance_create(x,y,obj_pizzashield)
	{
	playerid = other.object_index	
	other.pizzashieldid = id
	}
 }

//Check for fightball adavantages

if global.coop = true
{
if (state == states.punch or state == states.handstandjump)
&& !(obj_player1.state = states.punch or obj_player1.state = states.handstandjump)
{
	fightballadvantage = true
}
else if !(obj_player1.state = states.punch or obj_player1.state = states.handstandjump)
fightballadvantage = false
}

//Thrown at enemy
if state != states.grabbed && state != states.hurt
thrown = false


 //Delay to appear in Coop
 
 if visible = false && state == states.comingoutdoor 
 {
 coopdelay ++
image_index = 0
if coopdelay =50
{
visible = true
coopdelay = 0
}
 }


if wallclingcooldown < 10
 wallclingcooldown ++

//POGO
if state != states.pogo && state != states.pogo 
{
pogospeed = 6
pogospeedprev = false
}

//Player sounds

scr_playersounds()

//Reset doublejump for Noise
if grounded
doublejump = false



//Jetpack flash
if pogochargeactive = true
{
	if flashflicker = false
	{
		if pogochargeactive = true && sprite_index = spr_playerN_pogofall
	sprite_index = spr_playerN_pogofallmach

		if pogochargeactive = true && sprite_index = spr_playerN_pogobounce
	sprite_index = spr_playerN_pogobouncemach
	}
	
flashflicker = true
pogocharge --
}
else
flashflicker = false

if state != states._throw
kickbomb = false


if pogocharge = 0
{
pogochargeactive = false
pogocharge = 100
}

//Flash flicker

if flashflicker = true
{
	flashflickertime ++
	if flashflickertime = 20
	{
		flash = true
	flashflickertime = 0
	}
}

//Fightball off
if global.coop = false
fightball = false
if state != states.mach3 && state != states.grabbed
fightball = false

//Appear
if global.coop = false && key_jump2
&& room != rank_room && room != Realtitlescreen && obj_player1.cutscene = false && !instance_exists(obj_fadeout)
&& !instance_exists(obj_endlevelfade) 
{
		image_blend = make_colour_hsv(0,0,255);
alarm[5] = 2
alarm[7] = 60
hurted = true
	x = obj_player1.x
	y = obj_player1.y
	
	state =states.normal
global.coop = true
instance_create(x,y,obj_cooppointer)
instance_create(x,y,obj_coopflag)

}

//Explode
if key_start && global.coop = true && fightball = false  && obj_player1.state != states.mach3 && obj_player1.state != states.grabbed
{

	with instance_create(x,y,obj_dashcloud)
	sprite_index = spr_bombexplosion
	scr_changetoppings()
	repeat(6) instance_create(x,y,obj_baddiegibs)
global.coop = false
instance_destroy(obj_cooppointer)
instance_destroy(obj_coopflag)
obj_player1.spotlight = true
obj_player1.depth = -7
scr_soundeffect(sfx_explosion)

with obj_player1
if  (state = states.grab or (state == states.superslam) or state == states.tacklecharge)
state = states.normal

scr_changetoppings()


}

//Out of view in coop
if global.coop = false
{
obj_player1.spotlight = true
x = -1000
y = 500
state = states.titlescreen	
if instance_exists(obj_coopflag)
instance_destroy(obj_coopflag)
if instance_exists(obj_cooppointer)
instance_destroy(obj_cooppointer)
}


//Player sounds

scr_playersounds()


//Set Noise or Pep grav
//if character = "P"
//grav = 0.5

//if character = "N"
//grav = 0.4



//Reset suplex
if grounded && state != states.handstandjump
suplexmove = false

if state != states.freefall
freefallsmash = 0

//Die
if global.playerhealth <= 0 && state != states.gameover
{
image_index= 0
sprite_index = spr_deathstart
state = states.gameover
}

if state == states.gameover && y > (room_height * 2)
{
	
scr_playerreset()
targetDoor = "A"
room = hub_room1
if global.coop = true
{
	with obj_player1
	{
targetDoor = "A"
scr_playerreset()
	}
}
}


//Out of grab

if !instance_exists(baddiegrabbedID) && (state == states.grab or (state == states.superslam) or state == states.tacklecharge)
state = states.normal

if !(state = states.grab or (state == states.superslam) or state == states.mach2)
{
baddiegrabbedID = 0
heavy = false
}


//Grind
if grinding
	state = states.grind

//Angry

if anger = 0
angry = false

if anger > 0
{
angry = true
anger -= 1
}






//Stop winding up
if sprite_index =spr_winding && state != states.normal 
windingAnim = 0

if state != states.grab
swingdingbuffer = 0



//vomit anim
if sprite_index = spr_player_idlevomit && image_index > 28 && image_index < 43
{
instance_create(x+random_range(-5,5), y+ 46, obj_vomit)
}

if sprite_index = spr_player_idlevomitblood && image_index > 28 && image_index < 43
{
with instance_create(x+random_range(-5,5), y+ 46, obj_vomit)
sprite_index = spr_vomit2
}


//Sweat
if global.playerhealth = 1 && !instance_exists(obj_sweat) && obj_player.state = states.normal
instance_create(x,y,obj_sweat)
//Angry cloud
if angry = true && !instance_exists(angryeffectid) && state == states.normal
with instance_create(x,y,obj_angrycloud)
 {
	 playerid = other.object_index
other.angryeffectid = id	 
 }




if global.combotime = 0 && global.combo != 0
global.combo = 0

//Input buffer jumping
if (input_buffer_jump < 8)
input_buffer_jump++
//Input buffer second jumping
if (input_buffer_secondjump < 8)
input_buffer_secondjump++
//Input buffer high jumping
if (input_buffer_highjump < 8)
input_buffer_highjump++


//Key effect
if key_particles = true 
{
instance_create(random_range(x+25, x -25),random_range(y+35, y -25),obj_keyeffect)
}



if inv_frames = false && hurted = false  && state != states.ghost
image_alpha = 1

//Attack
if (state == states.mach2) or (state == states.tacklecharge) or (state == states.skateboard) or (state == states.knightpep) or (state == states.boxxedpep) or (state == states.cheesepep) or  (state = states.knightpepslopes) or  (state = states.knightpepattack) or   (state = states.bombpep) or  (state = states.facestomp) or (state == states.machfreefall) or (state == states.facestomp) or (state == states.machroll)  or (state == states.mach3) or (state == states.freefall) or (state == states.Sjump) 
attacking = true
else
attacking = false

//Grab Moves
if (state == states._throw) or (state == states.punch) or (state == states.backkick) or (state == states.shoulder) or (state == states.uppunch)
grabbing = true
else
grabbing = false

//Instant-Kill Attack
if  (sprite_index = spr_player_barrelroll) or (state == states.crouchslide) or (state == states.faceplant) or (state == states.rideweenie) or (state == states.mach3) or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or (state == states.slipnslide) or (state == states.hurt && thrown = true) or (state == states.mach2) or (state == states.climbwall) or (state == states.freefall) or (state == states.tumble) or (state == states.fireass) or (state == states.firemouth) or (state == states.hookshot) or (state == states.skateboard) or  (state = states.mach4) or (state == states.Sjump) or (state == states.machroll) or (state == states.machfreefall) or (state == states.tacklecharge)  or (state == states.superslam && sprite_index = spr_piledriver) or (state == states.knightpep) or (state == states.knightpepattack) or (state == states.knightpepslopes)  or (state == states.boxxedpep) or (state == states.cheesepep) or (state == states.cheeseball) 
instakillmove = true
else
instakillmove = false

//Flash
if (flash == true && alarm[0] <= 0) {
   alarm[0] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}
//Reset Variables

if state != states.mach3 && state != states.machslide
autodash = false

if (state != states.jump && state != states.crouchjump && state != states.slap) or vsp < 0
fallinganimation = 0

if state != states.freefallland && state != states.normal && state != states.machslide
{
facehurt = false
}

if state != states.normal && state != states.machslide
{
machslideAnim = false
}

if state != states.normal
{
idle = 0
dashdust = false
}

if state != states.mach1 && state != states.jump && state != states.hookshot  && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes
momentum = false





if state != states.Sjump && state != states.Sjumpprep
a = 0


if state != states.facestomp
facestompAnim = false




if state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland
superslam = 0

if state != states.mach2
{
machpunchAnim = false
}


if state != states.jump 
ladderbuffer = 0

if state != states.jump
stompAnim = false


if (state == states.mach3 or (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state = states.mach3) 
or (state == states.crouchslide) or pizzapepper > 0   or sprite_index = spr_player_barrelroll or state == states.rideweenie or state == states.punch or state == states.mach2 or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or  pogochargeactive = true or state == states.climbwall or state == states.hookshot or state == states.machroll  or state == states.tacklecharge or state == states.handstandjump or state == states.machslide) && macheffect = false
{
macheffect = true
toomuchalarm1 = 6
with instance_create(x,y,obj_mach3effect)
{
playerid = other.object_index
image_index = other.image_index - 1
image_xscale = other.xscale
sprite_index = other.sprite_index
}
}

if !(state = states.mach3 or (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state = states.mach3) 
or (state == states.crouchslide) or pizzapepper > 0   or sprite_index = spr_player_barrelroll or state == states.rideweenie or state == states.punch or state == states.mach2 or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or pogochargeactive = true or state == states.climbwall or state == states.hookshot or state == states.machroll  or state == states.tacklecharge or state == states.handstandjump or state == states.machslide)
macheffect = false

//Too much alarm 1
if (toomuchalarm1 > 0) {
    toomuchalarm1 -= 1;
    if (toomuchalarm1 <= 0) && (state == states.mach3 or (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state = states.mach3) 
	or (state == states.crouchslide) or pizzapepper > 0  or sprite_index = spr_player_barrelroll or state == states.rideweenie or state == states.punch or state == states.climbwall or (state == states.jump && sprite_index = spr_playerN_noisebombspinjump) or pogochargeactive = true or (state == states.hookshot) or state == states.mach2 or state == states.tacklecharge or state == states.machslide or state == states.machroll or state == states.handstandjump or (state == states.chainsaw && mach2 >= 100)){
        {
		with instance_create(x,y,obj_mach3effect)
{
playerid = other.object_index
image_index = other.image_index - 1
image_xscale = other.xscale
sprite_index = other.sprite_index
}
        toomuchalarm1 = 6
		}
    }
}


//Super Jump too high
if y < -800
{
x = roomstartx
y = -500

state = states.freefall
vsp = 10

}

if character = "S"
if state == states.crouchjump or state == states.crouch
state = states.normal

//Mask
if !place_meeting(x,y,obj_solid)
{
if state != states.bump  && sprite_index != spr_bombpepintro && state != states.stunned && sprite_index != spr_knightpepthunder && state != states.tumble && state != states.crouch && state != states.boxxedpep && (state != states.pistol && sprite_index != spr_player_crouchshoot) && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump
mask_index = spr_player_mask
else
mask_index = spr_crouchmask
}
else if place_meeting(x,y,obj_solid)
mask_index = spr_crouchmask

if character = "S" && state == states.bombpep
mask_index =spr_player_mask
else if character = "S"
mask_index = spr_crouchmask




if state == states.gottreasure or sprite_index = spr_knightpepstart
or sprite_index = spr_knightpepthunder or state == states.keyget 
or state == states.door or state == states.ejected or state == states.victory or state == states.comingoutdoor or state == states.gameover
{
cutscene = true
}
else
cutscene = false

//SAGE2019
//Up arrow
if (place_meeting(x,y,obj_door) or place_meeting(x,y,obj_dresser) or place_meeting(x,y,obj_snick) or (place_meeting(x,y,obj_keydoor)) or (place_meeting(x,y,obj_exitgate) && global.panic = true))
&& !instance_exists(obj_uparrow) && scr_solid(x,y+1) && state == states.normal && obj_player1.spotlight = false
with instance_create(x,y,obj_uparrow)
 {
	 playerid = other.object_index
 }
 

if (state =states.mach2) && !instance_exists(speedlineseffectid) 
with instance_create(x,y,obj_speedlines)
 {
	 playerid = other.object_index
other.speedlineseffectid = id	 
 }






scr_collide_destructibles();
if state != states.titlescreen   && state != states.grabbed && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover{
	scr_collide_player();
}
if state == states.boulder {
	scr_collide_player();
}
*/