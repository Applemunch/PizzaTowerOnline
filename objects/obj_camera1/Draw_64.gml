//Draw


draw_text(900,500, fps)
//if global.hp = 6
//draw_sprite(spr_pizzahealthbar, 0, 190, 70)
//else if global.hp = 5
//draw_sprite(spr_pizzahealthbar, 1, 190, 70)
//else if global.hp = 4
//draw_sprite(spr_pizzahealthbar, 2, 190, 70)
//else if global.hp = 3
//draw_sprite(spr_pizzahealthbar, 3, 190, 70)
//else if global.hp = 2
//draw_sprite(spr_pizzahealthbar, 4, 190, 70)
//else if global.hp = 1
//draw_sprite(spr_pizzahealthbar, 5, 190, 70)
//else if global.hp = 0
//draw_sprite(spr_pizzahealthbar, 6, 190, 70)
if obj_player1.spotlight = true
{
pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)

}
else
pal_swap_set(obj_player2.spr_palette, obj_player2.paletteselect, false)

//if global.playerhealth = 8
//draw_sprite_ext(spr_pizzahealthbar,0,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 7
//draw_sprite_ext(spr_pizzahealthbar,1,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 6
//draw_sprite_ext(spr_pizzahealthbar,2,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 5
///draw_sprite_ext(spr_pizzahealthbar,3,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 4
//draw_sprite_ext(spr_pizzahealthbar,4,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 3
//draw_sprite_ext(spr_pizzahealthbar,5,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 2
//draw_sprite_ext(spr_pizzahealthbar,6,100,80, 1, 1, 1, c_white, alpha)
//else if  global.playerhealth = 1
//draw_sprite_ext(spr_pizzahealthbar,7,100,80, 1, 1, 1, c_white, alpha)
//else
//{
//}


//Backup Weapon
if obj_player.backupweapon = true
draw_sprite_ext(spr_shotgunbackup,-1,50, 100, 1, 1, 1, c_white, alpha)


if obj_player.state != states.gameover
{

if obj_player1.character = "P" && obj_player1.spotlight = true
{
	if shoving = true
{
	if image_index < 3
draw_sprite_ext(spr_noiseHUD_idle,image_index,125,100, 1, 1, 1, c_white, alpha)
		draw_sprite_ext(spr_pepinoHUD_shove,image_index,125,100, 1, 1, 1, c_white, alpha)

}
	
else if obj_player1.sprite_index = spr_knightpep_thunder
draw_sprite_ext(spr_pepinoHUDthunder,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index != spr_knightpep_start && (obj_player1.state = states.knightpep or obj_player1.state = states.knightpepslopes)
draw_sprite_ext(spr_pepinoHUDknight,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_bombpep_end
draw_sprite_ext(spr_pepinoHUDbombend,-1,125,100, 1, 1, 1, c_white, alpha) 
else if instance_exists(obj_itspizzatime)  or obj_player1.sprite_index = spr_bombpep_intro or obj_player1.sprite_index = spr_bombpep_runabouttoexplode or obj_player1.sprite_index = spr_bombpep_run or obj_player1.sprite_index = spr_player_fireass
draw_sprite_ext(spr_pepinoHUDscream,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.Sjumpland or (obj_player1.state = states.freefallland && shake_mag > 0)  
draw_sprite_ext(spr_pepinoHUDstun,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_player_victory or obj_player1.state = states.keyget or obj_player1.state = states.smirk or obj_player1.state = states.gottreasure or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_levelcomplete)
draw_sprite_ext(spr_pepinoHUDhappy,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_player_machroll or obj_player1.sprite_index = spr_player_tumble
draw_sprite_ext(spr_pepinoHUDrolling,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.combo >= 3
draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.mach1  or obj_player1.state = states.chainsaw or obj_player1.state = states.freefallprep or obj_player1.state = states.freefall or  obj_player1.state = states.tackle or obj_player1.state = states.Sjump or obj_player1.state = states.slam or  obj_player1.state = states.Sjumpprep or obj_player1.state = states.grab or obj_player1.state = states.punch or obj_player1.state = states.backbreaker or obj_player1.state = states.backkick or obj_player1.state = states.uppunch or obj_player1.state = states.shoulder
draw_sprite_ext(spr_pepinoHUDmach1,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.mach2 or obj_player1.sprite_index = spr_player_dive or obj_player1.sprite_index = spr_player_machslideboost or obj_player1.state = states.climbwall or obj_player1.state = states.handstandjump or obj_player1.state = states.superslam 
draw_sprite_ext(spr_pepinoHUDmach2,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player1.state = states.mach3 && obj_player1.sprite_index = spr_player_crazyrun 
draw_sprite_ext(spr_pepinoHUDmach4,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player1.state = states.mach3 or obj_player1.sprite_index = spr_player_machslideboost3
draw_sprite_ext(spr_pepinoHUDmach3,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.hurt or obj_player1.sprite_index = spr_bombpep_end or obj_player1.sprite_index = spr_player_fireassend or obj_player1.state = states.timesup or obj_player1.state = states.bombpep or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_bossintro) or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_idle)
draw_sprite_ext(spr_pepinoHUDhurt,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.angry = true 
draw_sprite_ext(spr_pepinoHUD3hp,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_player_hurtidle or obj_player1.sprite_index = spr_player_hurtwalk
draw_sprite_ext(spr_pepinoHUD1hp,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.panic = true or global.snickchallenge = true or global.miniboss = true
draw_sprite_ext(spr_pepinoHUDpanic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_shotgun_pullout
draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 1, c_white, alpha)
else
draw_sprite_ext(spr_pepinoHUD,-1,125,100, 1, 1, 1, c_white, alpha)
}

if obj_player2.character = "P" && obj_player1.spotlight = false
{
	if shoving = true
{
	if image_index < 3
draw_sprite_ext(spr_noiseHUD_idle,image_index,125,100, 1, 1, 1, c_white, alpha)
		draw_sprite_ext(spr_pepinoHUD_shove,image_index,125,100, 1, 1, 1, c_white, alpha)

}
	
else if obj_player2.sprite_index = spr_knightpep_thunder
draw_sprite_ext(spr_pepinoHUDthunder,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index != spr_knightpep_start && (obj_player2.state = states.knightpep or obj_player2.state = states.knightpepslopes)
draw_sprite_ext(spr_pepinoHUDknight,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_bombpep_end
draw_sprite_ext(spr_pepinoHUDbombend,-1,125,100, 1, 1, 1, c_white, alpha) 
else if instance_exists(obj_itspizzatime)  or obj_player2.sprite_index = spr_bombpep_intro or obj_player2.sprite_index = spr_bombpep_runabouttoexplode or obj_player2.sprite_index = spr_bombpep_run or obj_player2.sprite_index = spr_player_fireass
draw_sprite_ext(spr_pepinoHUDscream,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.Sjumpland or (obj_player2.state = states.freefallland && shake_mag > 0)  
draw_sprite_ext(spr_pepinoHUDstun,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_player_victory or obj_player2.state = states.keyget or obj_player2.state = states.smirk or obj_player2.state = states.gottreasure or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = spr_player_levelcomplete)
draw_sprite_ext(spr_pepinoHUDhappy,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_player_machroll or obj_player2.sprite_index = spr_player_tumble
draw_sprite_ext(spr_pepinoHUDrolling,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.combo >= 3
draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.mach1  or obj_player2.state = states.chainsaw or obj_player2.state = states.freefallprep or obj_player2.state = states.freefall or  obj_player2.state = states.tackle or obj_player2.state = states.Sjump or obj_player2.state = states.slam or  obj_player2.state = states.Sjumpprep or obj_player2.state = states.grab or obj_player2.state = states.punch or obj_player2.state = states.backbreaker or obj_player2.state = states.backkick or obj_player2.state = states.uppunch or obj_player2.state = states.shoulder
draw_sprite_ext(spr_pepinoHUDmach1,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.mach2 or obj_player2.sprite_index = spr_player_dive or obj_player2.sprite_index = spr_player_machslideboost or obj_player2.state = states.climbwall or obj_player2.state = states.handstandjump or obj_player2.state = states.superslam 
draw_sprite_ext(spr_pepinoHUDmach2,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player2.state = states.mach3 && obj_player2.sprite_index = spr_player_crazyrun 
draw_sprite_ext(spr_pepinoHUDmach4,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player2.state = states.mach3 or obj_player2.sprite_index = spr_player_machslideboost3
draw_sprite_ext(spr_pepinoHUDmach3,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.hurt or obj_player2.sprite_index = spr_bombpep_end or obj_player2.sprite_index = spr_player_fireassend or obj_player2.state = states.timesup or obj_player2.state = states.bombpep or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = spr_player_bossintro) or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = spr_player_idle)
draw_sprite_ext(spr_pepinoHUDhurt,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.angry = true 
draw_sprite_ext(spr_pepinoHUD3hp,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_player_hurtidle or obj_player2.sprite_index = spr_player_hurtwalk
draw_sprite_ext(spr_pepinoHUD1hp,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.panic = true or global.snickchallenge = true or global.miniboss = true
draw_sprite_ext(spr_pepinoHUDpanic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_shotgun_pullout
draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 1, c_white, alpha)
else
draw_sprite_ext(spr_pepinoHUD,-1,125,100, 1, 1, 1, c_white, alpha)
}



if obj_player.character = "S"
{
draw_sprite_ext(spr_snickHUD,-1,125,60, 1, 1, 1, c_white, alpha)	
}

if obj_player2.character = "N" && obj_player1.spotlight = false
{
	if shoving = true
		{
				if image_index < 3
draw_sprite_ext(spr_pepinoHUD,image_index,125,100, 1, 1, 1, c_white, alpha)
		draw_sprite_ext(spr_noiseHUD_shove,image_index,125,100, 1, 1, 1, c_white, alpha)

}
else if obj_player2.sprite_index = obj_player2.spr_knightpepthunder
draw_sprite_ext(spr_noiseHUD_thunder,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index != obj_player2.spr_knightpepstart && (obj_player2.state = states.knightpep or obj_player2.state = states.knightpepslopes)
draw_sprite_ext(spr_noiseHUD_knight,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = obj_player2.spr_bombpepend
draw_sprite_ext(spr_noiseHUD_bomb,-1,125,100, 1, 1, 1, c_white, alpha) 
else if instance_exists(obj_itspizzatime)  or obj_player2.sprite_index = obj_player2.spr_bombpepintro or obj_player2.sprite_index = obj_player2.spr_bombpeprunabouttoexplode or obj_player2.sprite_index = obj_player2.spr_bombpeprun or obj_player2.sprite_index = obj_player2.spr_fireass
draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.Sjumpland or (obj_player2.state = states.freefallland && shake_mag > 0)  
draw_sprite_ext(spr_noiseHUD_groundpound,-1,125,100, 1, 1, 1, c_white, alpha)
//else if obj_player2.sprite_index = obj_player2.spr_victory or obj_player2.state = states.keyget or obj_player2.state = states.smirk or obj_player2.state = states.gottreasure or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_player_levelcomplete)
//draw_sprite_ext(spr_noiseHUD_happy,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.combo >= 3
draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.mach1  or obj_player2.state = states.chainsaw or obj_player2.state = states.freefallprep or obj_player2.state = states.freefall or  obj_player2.state = states.tackle or obj_player2.state = states.Sjump or obj_player2.state = states.slam or  obj_player2.state = states.Sjumpprep or obj_player2.state = states.grab or obj_player2.state = states.punch or obj_player2.state = states.backbreaker or obj_player2.state = states.backkick or obj_player2.state = states.uppunch or obj_player2.state = states.shoulder
draw_sprite_ext(spr_noiseHUD_mach1,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.state = states.pogo or obj_player2.state = states.mach2 or obj_player2.sprite_index = obj_player2.spr_dive or obj_player2.sprite_index = obj_player2.spr_machslideboost or obj_player2.state = states.climbwall or obj_player2.state = states.handstandjump or obj_player2.state = states.superslam 
draw_sprite_ext(spr_noiseHUD_mach2,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player2.state = states.mach3 && obj_player2.sprite_index = obj_player2.spr_crazyrun 
draw_sprite_ext(spr_noiseHUD_crazyrun,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player2.state = states.mach3 or obj_player2.sprite_index = obj_player2.spr_mach3boost
draw_sprite_ext(spr_noiseHUD_mach3,-1,125,100, 1, 1, 1, c_white, alpha)
//else if obj_player2.state = states.hurt or obj_player2.sprite_index = obj_player2.spr_bombpepend or obj_player2.sprite_index = obj_player2.spr_fireassend or obj_player2.state = states.timesup or obj_player2.state = states.bombpep or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_player_bossintro) or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_idle)
//draw_sprite_ext(spr_noiseHUD_hurt,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.angry = true 
draw_sprite_ext(spr_noiseHUD_angry,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = obj_player2.spr_hurtidle or obj_player2.sprite_index = obj_player2.spr_hurtwalk
draw_sprite_ext(spr_noiseHUD_lowhealth,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.panic = true or global.snickchallenge = true or global.miniboss = true 
draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player2.sprite_index = spr_shotgun_pullout
draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 1, c_white, alpha)
else
draw_sprite_ext(spr_noiseHUD_idle,-1,125,100, 1, 1, 1, c_white, alpha)
}



if obj_player1.character = "N" && obj_player1.spotlight = true
{
	if shoving = true
		{
				if image_index < 3
draw_sprite_ext(spr_pepinoHUD,image_index,125,100, 1, 1, 1, c_white, alpha)
		draw_sprite_ext(spr_noiseHUD_shove,image_index,125,100, 1, 1, 1, c_white, alpha)

}
else if obj_player1.sprite_index = obj_player1.spr_knightpepthunder
draw_sprite_ext(spr_noiseHUD_thunder,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index != obj_player1.spr_knightpepstart && (obj_player1.state = states.knightpep or obj_player1.state = states.knightpepslopes)
draw_sprite_ext(spr_noiseHUD_knight,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = obj_player1.spr_bombpepend
draw_sprite_ext(spr_noiseHUD_bomb,-1,125,100, 1, 1, 1, c_white, alpha) 
else if instance_exists(obj_itspizzatime)  or obj_player1.sprite_index = obj_player1.spr_bombpepintro or obj_player1.sprite_index = obj_player1.spr_bombpeprunabouttoexplode or obj_player1.sprite_index = obj_player1.spr_bombpeprun or obj_player1.sprite_index = obj_player1.spr_fireass
draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.Sjumpland or (obj_player1.state = states.freefallland && shake_mag > 0)  
draw_sprite_ext(spr_noiseHUD_groundpound,-1,125,100, 1, 1, 1, c_white, alpha)
//else if obj_player1.sprite_index = obj_player1.spr_victory or obj_player1.state = states.keyget or obj_player1.state = states.smirk or obj_player1.state = states.gottreasure or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_player_levelcomplete)
//draw_sprite_ext(spr_noiseHUD_happy,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.combo >= 3
draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.mach1  or obj_player1.state = states.chainsaw or obj_player1.state = states.freefallprep or obj_player1.state = states.freefall or  obj_player1.state = states.tackle or obj_player1.state = states.Sjump or obj_player1.state = states.slam or  obj_player1.state = states.Sjumpprep or obj_player1.state = states.grab or obj_player1.state = states.punch or obj_player1.state = states.backbreaker or obj_player1.state = states.backkick or obj_player1.state = states.uppunch or obj_player1.state = states.shoulder
draw_sprite_ext(spr_noiseHUD_mach1,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.state = states.pogo or obj_player1.state = states.mach2 or obj_player1.sprite_index = obj_player1.spr_dive or obj_player1.sprite_index = obj_player1.spr_machslideboost or obj_player1.state = states.climbwall or obj_player1.state = states.handstandjump or obj_player1.state = states.superslam 
draw_sprite_ext(spr_noiseHUD_mach2,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player1.state = states.mach3 && obj_player1.sprite_index = obj_player1.spr_crazyrun 
draw_sprite_ext(spr_noiseHUD_crazyrun,-1,125,100, 1, 1, 1, c_white, alpha) 
else if obj_player1.state = states.mach3 or obj_player1.sprite_index = obj_player1.spr_mach3boost
draw_sprite_ext(spr_noiseHUD_mach3,-1,125,100, 1, 1, 1, c_white, alpha)
//else if obj_player1.state = states.hurt or obj_player1.sprite_index = obj_player1.spr_bombpepend or obj_player1.sprite_index = obj_player1.spr_fireassend or obj_player1.state = states.timesup or obj_player1.state = states.bombpep or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_player_bossintro) or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_idle)
//draw_sprite_ext(spr_noiseHUD_hurt,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.angry = true 
draw_sprite_ext(spr_noiseHUD_angry,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = obj_player1.spr_hurtidle or obj_player1.sprite_index = obj_player1.spr_hurtwalk
draw_sprite_ext(spr_noiseHUD_lowhealth,-1,125,100, 1, 1, 1, c_white, alpha)
else if global.panic = true or global.snickchallenge = true or global.miniboss = true
draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 1, c_white, alpha)
else if obj_player1.sprite_index = spr_shotgun_pullout
draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 1, c_white, alpha)
else
draw_sprite_ext(spr_noiseHUD_idle,-1,125,100, 1, 1, 1, c_white, alpha)
}


shader_reset()



if obj_player1.spotlight = true && obj_player1.character = "P"
 {
if obj_player1.movespeed < 2.4 or !(obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 1, c_white, alpha)

else if obj_player1.movespeed >= 2.4 && obj_player1.movespeed < 4.8 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,1,125,140, 1, 1, 1, c_white, alpha)

else if obj_player1.movespeed >= 4.8 && obj_player1.movespeed < 7.2 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,2,125,140, 1, 1, 1, c_white, alpha)

else if obj_player1.movespeed >= 7.2 && obj_player1.movespeed < 9.6 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 1, c_white, alpha)

else if obj_player1.movespeed >= 9.6 && obj_player1.movespeed < 12 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,4,125,140, 1, 1, 1, c_white, alpha)

else if obj_player1.movespeed >= 12 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 1, c_white, alpha)

 }
 else if obj_player1.spotlight = false && obj_player2.character = "P" 
  {
if obj_player2.movespeed < 2.4 or !(obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 1, c_white, alpha)

else if obj_player2.movespeed >= 2.4 && obj_player2.movespeed < 4.8 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,1,125,140, 1, 1, 1, c_white, alpha)

else if obj_player2.movespeed >= 4.8 && obj_player2.movespeed < 7.2 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,2,125,140, 1, 1, 1, c_white, alpha)

else if obj_player2.movespeed >= 7.2 && obj_player2.movespeed < 9.6 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 1, c_white, alpha)

else if obj_player2.movespeed >= 9.6 && obj_player2.movespeed < 12 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbar,4,125,140, 1, 1, 1, c_white, alpha)

else if obj_player2.movespeed >= 12 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 1, c_white, alpha)

 }
 
 
 with (obj_player1)
 {
if obj_player1.spotlight = true && character = "N" 
{
	with other
{
	
	if obj_player1.pogospeed < 10
	draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 1, c_white, alpha)
else if obj_player1.pogospeed >= 10 && obj_player1.pogospeed < 14 
	draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 1, c_white, alpha)
else if obj_player1.pogospeed >= 14
	draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 1, c_white, alpha)
}

}
}
 

 with (obj_player2)
 {
if obj_player1.spotlight = false && character = "N" 
{
	with other
{
	
	if obj_player2.pogospeed < 10
	draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 1, c_white, alpha)
else if obj_player2.pogospeed >= 10 && obj_player1.pogospeed < 14 
	draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 1, c_white, alpha)
else if obj_player2.pogospeed >= 14
	draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 1, c_white, alpha)
}
}
 }
 
if obj_player.y < 200 && obj_player.x < 200
alpha = 0.5
else
alpha = 1


//Draw Text

font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", true, 0)
draw_set_font(font)
draw_set_halign(fa_center);
draw_set_color(c_white)




//Timer
if global.panic = true  or global.snickchallenge = true or global.miniboss = true 
{
if global.seconds < 10
{
if global.minutes < 1
{
draw_set_color(c_red)
}
else
draw_set_color(c_white)
draw_text(random_range(1,-1) +480, random_range(1,-1) +65, string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)));
}
else if global.seconds >= 10
{
if global.minutes = 0 && global.seconds <= 30
{
draw_set_color(c_red)
}
else
draw_set_color(c_white)
draw_text(random_range(1,-1) +480, random_range(1,-1) +65, string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)));
}
}

//Key 
if global.key_inv == true
{
draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
}
draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)

}

draw_set_blend_mode(bm_normal);