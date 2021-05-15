//Draw
if room == Realtitlescreen
	exit;

var showhud = obj_player1.state != states.rotate;
if global.pizzadelivery && global.hp > 0
	draw_sprite(spr_pizzahealthbar, 8 - global.hp, 190, 70)

#region old hud

if global.gameplay == 0
{
	if obj_player1.spotlight = true
		pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, false)

	//if global.playerhealth = 8
	//draw_sprite_ext(spr_pizzahealthbar,0,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 7
	//draw_sprite_ext(spr_pizzahealthbar,1,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 6
	//draw_sprite_ext(spr_pizzahealthbar,2,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 5
	///draw_sprite_ext(spr_pizzahealthbar,3,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 4
	//draw_sprite_ext(spr_pizzahealthbar,4,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 3
	//draw_sprite_ext(spr_pizzahealthbar,5,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 2
	//draw_sprite_ext(spr_pizzahealthbar,6,100,80, 1, 1, 0, c_white, alpha)
	//else if  global.playerhealth = 1
	//draw_sprite_ext(spr_pizzahealthbar,7,100,80, 1, 1, 0, c_white, alpha)
	//else
	//{
	//}


	//Backup Weapon
	if obj_player.backupweapon = true
		draw_sprite_ext(spr_shotgunbackup,-1,50, 100, 1, 1, 0, c_white, alpha)



	if obj_player.state != states.gameover
	{
		if obj_player1.character == "V"
		{
			if (healthshaketime > 0 && playerhealthup) or obj_player1.sprite_index = spr_playerV_keydoor or obj_player1.state = states.keyget or obj_player1.state = states.gottreasure 
				draw_sprite_ext(spr_playerV_happyHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
			else if obj_player1.state == states.mach1 or obj_player1.state = states.mach2 or obj_player1.state == states.mach3 or obj_player1.state == states.machslide or obj_player1.state == states.machroll
				draw_sprite_ext(spr_playerV_machHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
			else if (healthshaketime > 0 && !playerhealthup) or obj_player1.state = states.hurt
				draw_sprite_ext(spr_playerV_hurtHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
			else if global.panic = true
				draw_sprite_ext(spr_playerV_panicHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
			else if obj_player1.angry = true 
				draw_sprite_ext(spr_playerV_angryHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
			else
				draw_sprite_ext(spr_playerV_normalHUD,-1,125,100, 1, 1, 0, c_white, other.alpha)
		}


		if obj_player1.character = "P"
		{
			if obj_player1.sprite_index = spr_knightpep_thunder
			draw_sprite_ext(spr_pepinoHUDthunder,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index != spr_knightpep_start && (obj_player1.state = states.knightpep or obj_player1.state = states.knightpepslopes)
			draw_sprite_ext(spr_pepinoHUDknight,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_bombpep_end
			draw_sprite_ext(spr_pepinoHUDbombend,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if instance_exists(obj_itspizzatime)  or obj_player1.sprite_index = spr_bombpep_intro or obj_player1.sprite_index = spr_bombpep_runabouttoexplode or obj_player1.sprite_index = spr_bombpep_run or obj_player1.sprite_index = spr_player_fireass
			draw_sprite_ext(spr_pepinoHUDscream,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.Sjumpland or (obj_player1.state = states.freefallland && shake_mag > 0)  
			draw_sprite_ext(spr_pepinoHUDstun,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_player_victory or obj_player1.state = states.keyget or obj_player1.state = states.smirk or obj_player1.state = states.gottreasure or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_levelcomplete)
			draw_sprite_ext(spr_pepinoHUDhappy,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_player_machroll or obj_player1.sprite_index = spr_player_tumble
			draw_sprite_ext(spr_pepinoHUDrolling,-1,125,100, 1, 1, 0, c_white, alpha)
			else if global.combo >= 3
			draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.mach1  or obj_player1.state = states.chainsaw or obj_player1.state = states.freefallprep or obj_player1.state = states.freefall or  obj_player1.state = states.tackle or obj_player1.state = states.Sjump or obj_player1.state = states.slam or  obj_player1.state = states.Sjumpprep or obj_player1.state = states.grab or obj_player1.state = states.punch or obj_player1.state = states.backbreaker or obj_player1.state = states.backkick or obj_player1.state = states.uppunch or obj_player1.state = states.shoulder
			draw_sprite_ext(spr_pepinoHUDmach1,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.mach2 or obj_player1.sprite_index = spr_player_dive or obj_player1.sprite_index = spr_player_machslideboost or obj_player1.state = states.climbwall or obj_player1.state = states.handstandjump or obj_player1.state = states.superslam 
			draw_sprite_ext(spr_pepinoHUDmach2,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 && obj_player1.sprite_index = spr_player_crazyrun 
			draw_sprite_ext(spr_pepinoHUDmach4,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 or obj_player1.sprite_index = spr_player_machslideboost3
			draw_sprite_ext(spr_pepinoHUDmach3,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.hurt or obj_player1.sprite_index = spr_bombpep_end or obj_player1.sprite_index = spr_player_fireassend or obj_player1.state = states.timesup or obj_player1.state = states.bombpep or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_bossintro) or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = spr_player_idle)
			draw_sprite_ext(spr_pepinoHUDhurt,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.angry = true 
			draw_sprite_ext(spr_pepinoHUD3hp,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_player_hurtidle or obj_player1.sprite_index = spr_player_hurtwalk
			draw_sprite_ext(spr_pepinoHUD1hp,-1,125,100, 1, 1, 0, c_white, alpha)
			else if global.panic = true or global.snickchallenge = true or global.miniboss = true
			draw_sprite_ext(spr_pepinoHUDpanic,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_shotgun_pullout
			draw_sprite_ext(spr_pepinoHUDmenacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else
			draw_sprite_ext(spr_pepinoHUD,-1,125,100, 1, 1, 0, c_white, alpha)
		}

		if obj_player1.character = "S"
			draw_sprite_ext(spr_snickHUD,-1,125,60, 1, 1, 0, c_white, alpha)	
		if obj_player1.character = "G"
		{
			var spr = spr_gladeHUD;
			if obj_player1.angry
				spr = spr_gladeHUDangry;
			draw_sprite_ext(spr, -1, 125, 100, 1, 1, 0, c_white, alpha)
		}
		
		/*
		if obj_player2.character = "N" && obj_player1.spotlight = false
		{
			if shoving = true
				{
						if image_index < 3
		draw_sprite_ext(spr_pepinoHUD,image_index,125,100, 1, 1, 0, c_white, alpha)
				draw_sprite_ext(spr_noiseHUD_shove,image_index,125,100, 1, 1, 0, c_white, alpha)

		}
		else if obj_player2.sprite_index = obj_player2.spr_knightpepthunder
		draw_sprite_ext(spr_noiseHUD_thunder,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.sprite_index != obj_player2.spr_knightpepstart && (obj_player2.state = states.knightpep or obj_player2.state = states.knightpepslopes)
		draw_sprite_ext(spr_noiseHUD_knight,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.sprite_index = obj_player2.spr_bombpepend
		draw_sprite_ext(spr_noiseHUD_bomb,-1,125,100, 1, 1, 0, c_white, alpha) 
		else if instance_exists(obj_itspizzatime)  or obj_player2.sprite_index = obj_player2.spr_bombpepintro or obj_player2.sprite_index = obj_player2.spr_bombpeprunabouttoexplode or obj_player2.sprite_index = obj_player2.spr_bombpeprun or obj_player2.sprite_index = obj_player2.spr_fireass
		draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.state = states.Sjumpland or (obj_player2.state = states.freefallland && shake_mag > 0)  
		draw_sprite_ext(spr_noiseHUD_groundpound,-1,125,100, 1, 1, 0, c_white, alpha)
		//else if obj_player2.sprite_index = obj_player2.spr_victory or obj_player2.state = states.keyget or obj_player2.state = states.smirk or obj_player2.state = states.gottreasure or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_player_levelcomplete)
		//draw_sprite_ext(spr_noiseHUD_happy,-1,125,100, 1, 1, 0, c_white, alpha)
		else if global.combo >= 3
		draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.state = states.mach1  or obj_player2.state = states.chainsaw or obj_player2.state = states.freefallprep or obj_player2.state = states.freefall or  obj_player2.state = states.tackle or obj_player2.state = states.Sjump or obj_player2.state = states.slam or  obj_player2.state = states.Sjumpprep or obj_player2.state = states.grab or obj_player2.state = states.punch or obj_player2.state = states.backbreaker or obj_player2.state = states.backkick or obj_player2.state = states.uppunch or obj_player2.state = states.shoulder
		draw_sprite_ext(spr_noiseHUD_mach1,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.state = states.pogo or obj_player2.state = states.mach2 or obj_player2.sprite_index = obj_player2.spr_dive or obj_player2.sprite_index = obj_player2.spr_machslideboost or obj_player2.state = states.climbwall or obj_player2.state = states.handstandjump or obj_player2.state = states.superslam 
		draw_sprite_ext(spr_noiseHUD_mach2,-1,125,100, 1, 1, 0, c_white, alpha) 
		else if obj_player2.state = states.mach3 && obj_player2.sprite_index = obj_player2.spr_crazyrun 
		draw_sprite_ext(spr_noiseHUD_crazyrun,-1,125,100, 1, 1, 0, c_white, alpha) 
		else if obj_player2.state = states.mach3 or obj_player2.sprite_index = obj_player2.spr_mach3boost
		draw_sprite_ext(spr_noiseHUD_mach3,-1,125,100, 1, 1, 0, c_white, alpha)
		//else if obj_player2.state = states.hurt or obj_player2.sprite_index = obj_player2.spr_bombpepend or obj_player2.sprite_index = obj_player2.spr_fireassend or obj_player2.state = states.timesup or obj_player2.state = states.bombpep or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_player_bossintro) or (obj_player2.state = states.bossintro &&  obj_player2.sprite_index = obj_player2.spr_idle)
		//draw_sprite_ext(spr_noiseHUD_hurt,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.angry = true 
		draw_sprite_ext(spr_noiseHUD_angry,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.sprite_index = obj_player2.spr_hurtidle or obj_player2.sprite_index = obj_player2.spr_hurtwalk
		draw_sprite_ext(spr_noiseHUD_lowhealth,-1,125,100, 1, 1, 0, c_white, alpha)
		else if global.panic = true or global.snickchallenge = true or global.miniboss = true 
		draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 0, c_white, alpha)
		else if obj_player2.sprite_index = spr_shotgun_pullout
		draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 0, c_white, alpha)
		else
		draw_sprite_ext(spr_noiseHUD_idle,-1,125,100, 1, 1, 0, c_white, alpha)
		}
		*/



		if obj_player1.character = "N"
		{
			if obj_player1.sprite_index = obj_player1.spr_knightpepthunder
			draw_sprite_ext(spr_noiseHUD_thunder,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index != obj_player1.spr_knightpepstart && (obj_player1.state = states.knightpep or obj_player1.state = states.knightpepslopes)
			draw_sprite_ext(spr_noiseHUD_knight,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = obj_player1.spr_bombpepend
			draw_sprite_ext(spr_noiseHUD_bomb,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if instance_exists(obj_itspizzatime)  or obj_player1.sprite_index = obj_player1.spr_bombpepintro or obj_player1.sprite_index = obj_player1.spr_bombpeprunabouttoexplode or obj_player1.sprite_index = obj_player1.spr_bombpeprun or obj_player1.sprite_index = obj_player1.spr_fireass
			draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.Sjumpland or (obj_player1.state = states.freefallland && shake_mag > 0)  
			draw_sprite_ext(spr_noiseHUD_groundpound,-1,125,100, 1, 1, 0, c_white, alpha)
			//else if obj_player1.sprite_index = obj_player1.spr_victory or obj_player1.state = states.keyget or obj_player1.state = states.smirk or obj_player1.state = states.gottreasure or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_player_levelcomplete)
			//draw_sprite_ext(spr_noiseHUD_happy,-1,125,100, 1, 1, 0, c_white, alpha)
			else if global.combo >= 3
			draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.mach1  or obj_player1.state = states.chainsaw or obj_player1.state = states.freefallprep or obj_player1.state = states.freefall or  obj_player1.state = states.tackle or obj_player1.state = states.Sjump or obj_player1.state = states.slam or  obj_player1.state = states.Sjumpprep or obj_player1.state = states.grab or obj_player1.state = states.punch or obj_player1.state = states.backbreaker or obj_player1.state = states.backkick or obj_player1.state = states.uppunch or obj_player1.state = states.shoulder
			draw_sprite_ext(spr_noiseHUD_mach1,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.pogo or obj_player1.state = states.mach2 or obj_player1.sprite_index = obj_player1.spr_dive or obj_player1.sprite_index = obj_player1.spr_machslideboost or obj_player1.state = states.climbwall or obj_player1.state = states.handstandjump or obj_player1.state = states.superslam 
			draw_sprite_ext(spr_noiseHUD_mach2,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 && obj_player1.sprite_index = obj_player1.spr_crazyrun 
			draw_sprite_ext(spr_noiseHUD_crazyrun,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 or obj_player1.sprite_index = obj_player1.spr_mach3boost
			draw_sprite_ext(spr_noiseHUD_mach3,-1,125,100, 1, 1, 0, c_white, alpha)
			//else if obj_player1.state = states.hurt or obj_player1.sprite_index = obj_player1.spr_bombpepend or obj_player1.sprite_index = obj_player1.spr_fireassend or obj_player1.state = states.timesup or obj_player1.state = states.bombpep or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_player_bossintro) or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_idle)
			//draw_sprite_ext(spr_noiseHUD_hurt,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.angry = true 
			draw_sprite_ext(spr_noiseHUD_angry,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = obj_player1.spr_hurtidle or obj_player1.sprite_index = obj_player1.spr_hurtwalk
			draw_sprite_ext(spr_noiseHUD_lowhealth,-1,125,100, 1, 1, 0, c_white, alpha)
			else if global.panic = true or global.snickchallenge = true or global.miniboss = true
			draw_sprite_ext(spr_noiseHUD_panic,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_shotgun_pullout
			draw_sprite_ext(spr_noiseHUD_menacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else
			draw_sprite_ext(spr_noiseHUD_idle,-1,125,100, 1, 1, 0, c_white, alpha)
		}
	
		if obj_player1.character = "SP"
		{
			if obj_player1.sprite_index = obj_player1.spr_knightpepthunder
				draw_sprite_ext(spr_pepinoHUDthunder,-1,125,100, 1, 1, 0, c_white, alpha) // REPLACE
			else if obj_player1.sprite_index != obj_player1.spr_knightpepstart && (obj_player1.state = states.knightpep or obj_player1.state = states.knightpepslopes)
				draw_sprite_ext(spr_pepinoHUDknight,-1,125,100, 1, 1, 0, c_white, alpha) // REPLACE
			else if obj_player1.sprite_index = obj_player1.spr_bombpepend
				draw_sprite_ext(spr_pizzyHUDbombend,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if instance_exists(obj_itspizzatime)  or obj_player1.sprite_index = obj_player1.spr_bombpepintro or obj_player1.sprite_index = obj_player1.spr_bombpeprunabouttoexplode or obj_player1.sprite_index = obj_player1.spr_bombpeprun or obj_player1.sprite_index = obj_player1.spr_fireass // REPLACE
				draw_sprite_ext(spr_pepinoHUDscream,-1,125,100, 1, 1, 0, c_white, alpha) // REPLACE
			else if obj_player1.state = states.Sjumpland or (obj_player1.state = states.freefallland && shake_mag > 0)  
				draw_sprite_ext(spr_pizzyHUDstun,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = obj_player1.spr_victory or obj_player1.state = states.keyget or obj_player1.state = states.smirk or obj_player1.state = states.gottreasure or (obj_player1.state = states.bossintro && obj_player1.sprite_index = spr_player_levelcomplete)
				draw_sprite_ext(spr_pizzyHUDhappy,-1,125,100, 1, 1, 0, c_white, alpha)
			//else if obj_player1.sprite_index = spr_machroll or obj_player1.sprite_index = spr_tumble
			//	draw_sprite_ext(spr_pepinoHUDrolling,-1,125,100, 1, 1, 0, c_white, alpha)
			else if global.combo >= 3
				draw_sprite_ext(spr_pizzyHUDmenacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.mach1 or obj_player1.state = states.tackle or obj_player1.state = states.slam or obj_player1.state = states.grab or obj_player1.state = states.punch or obj_player1.state = states.backkick or obj_player1.state = states.uppunch or obj_player1.state = states.shoulder
				draw_sprite_ext(spr_pizzyHUDmach1,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.mach2/* or obj_player1.sprite_index = obj_player1.spr_dive*/ or obj_player1.state == states.machroll or obj_player1.sprite_index = obj_player1.spr_machslideboost or obj_player1.state = states.climbwall or obj_player1.state = states.handstandjump or obj_player1.state = states.superslam or obj_player1.state == states.freefallprep
				draw_sprite_ext(spr_pizzyHUDmach2,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 && obj_player1.sprite_index = obj_player1.spr_crazyrun
				draw_sprite_ext(spr_pizzyHUDmach4,-1,125,100, 1, 1, 0, c_white, alpha) 
			else if obj_player1.state = states.mach3 or obj_player1.sprite_index = obj_player1.spr_mach3boost
				draw_sprite_ext(spr_pizzyHUDmach3,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state = states.hurt or obj_player1.sprite_index = obj_player1.spr_fireassend or obj_player1.state = states.timesup or obj_player1.state = states.bombpep or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_bossintro) or (obj_player1.state = states.bossintro &&  obj_player1.sprite_index = obj_player1.spr_idle)
				draw_sprite_ext(spr_pizzyHUDhurt,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = obj_player1.spr_bombpepend
				draw_sprite_ext(spr_pizzyHUDbombend,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state == states.Sjumpprep
				draw_sprite_ext(spr_pizzyHUDsuperjumpprep,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state == states.Sjump
				draw_sprite_ext(spr_pizzyHUDsuperjump,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state == states.freefall
				draw_sprite_ext(spr_pizzyHUDbodyslam,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = obj_player1.spr_bombpepend
				draw_sprite_ext(spr_pizzyHUDbombend,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.state == states.bump
				draw_sprite_ext(spr_pizzyHUDbump,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.angry = true
				draw_sprite_ext(spr_pizzyHUD3hp,-1,125,100, 1, 1, 0, c_white, alpha)
			else if obj_player1.sprite_index = spr_player_hurtidle or obj_player1.sprite_index = spr_player_hurtwalk // REPLACE
				draw_sprite_ext(spr_pepinoHUD1hp,-1,125,100, 1, 1, 0, c_white, alpha) // REPLACE
			else if global.panic = true or global.snickchallenge = true or global.miniboss = true
				draw_sprite_ext(spr_pepinoHUDpanic,-1,125,100, 1, 1, 0, c_white, alpha) // REPLACE 
			else if obj_player1.sprite_index = spr_shotgun_pullout // REPLACE
				draw_sprite_ext(spr_pizzyHUDmenacing,-1,125,100, 1, 1, 0, c_white, alpha)
			else
				draw_sprite_ext(spr_pizzyHUD,-1,125,100, 1, 1, 0, c_white, alpha)
		}


		shader_reset()

	

		if (obj_player1.character = "P" or obj_player1.character == "S" or obj_player1.character == "SP" or (obj_player1.character == "N" && obj_player1.noisetype == 1) or obj_player1.character == "G")
		{
			var yy = 140;
			if obj_player1.character == "SP"
				yy = 164;
		
			if obj_player1.movespeed < 2.4 or !(obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbar,0,125,yy, 1, 1, 0, c_white, alpha)

			else if obj_player1.movespeed >= 2.4 && obj_player1.movespeed < 4.8 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbar,1,125,yy, 1, 1, 0, c_white, alpha)

			else if obj_player1.movespeed >= 4.8 && obj_player1.movespeed < 7.2 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbar,2,125,yy, 1, 1, 0, c_white, alpha)

			else if obj_player1.movespeed >= 7.2 && obj_player1.movespeed < 9.6 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbar,3,125,yy, 1, 1, 0, c_white, alpha)

			else if obj_player1.movespeed >= 9.6 && obj_player1.movespeed < 12 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbar,4,125,yy, 1, 1, 0, c_white, alpha)

			else if obj_player1.movespeed >= 12 && (obj_player1.state = states.mach1 or obj_player1.state = states.mach2 or obj_player1.state = states.mach3 or obj_player1.state = states.climbwall or obj_player1.state = states.machslide or obj_player1.state = states.machroll or obj_player1.state = states.handstandjump)
			draw_sprite_ext(spr_speedbarmax,-1,125,yy, 1, 1, 0, c_white, alpha)
		 }
	 
		 /*
		 else if obj_player1.spotlight = false && obj_player2.character = "P"
		  {
		if obj_player2.movespeed < 2.4 or !(obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 0, c_white, alpha)

		else if obj_player2.movespeed >= 2.4 && obj_player2.movespeed < 4.8 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbar,1,125,140, 1, 1, 0, c_white, alpha)

		else if obj_player2.movespeed >= 4.8 && obj_player2.movespeed < 7.2 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbar,2,125,140, 1, 1, 0, c_white, alpha)

		else if obj_player2.movespeed >= 7.2 && obj_player2.movespeed < 9.6 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 0, c_white, alpha)

		else if obj_player2.movespeed >= 9.6 && obj_player2.movespeed < 12 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbar,4,125,140, 1, 1, 0, c_white, alpha)

		else if obj_player2.movespeed >= 12 && (obj_player2.state = states.mach1 or obj_player2.state = states.mach2 or obj_player2.state = states.mach3 or obj_player2.state = states.climbwall or obj_player2.state = states.machslide or obj_player2.state = states.machroll or obj_player2.state = states.handstandjump)
		draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 0, c_white, alpha)

		 }
		 */
 
 
		with (obj_player1)
		{
			if (character = "N" && noisetype == 0)
			{
				with other
				{
					if obj_player1.pogospeed < 10
						draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 0, c_white, alpha)
					else if obj_player1.pogospeed >= 10 && obj_player1.pogospeed < 14 
						draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 0, c_white, alpha)
					else if obj_player1.pogospeed >= 14
						draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 0, c_white, alpha)
				}

			}
		}

		/*
		 with (obj_player2)
		 {
		if obj_player1.spotlight = false && character = "N" 
		{
			with other
		{
	
			if obj_player2.pogospeed < 10
			draw_sprite_ext(spr_speedbar,0,125,140, 1, 1, 0, c_white, alpha)
		else if obj_player2.pogospeed >= 10 && obj_player1.pogospeed < 14 
			draw_sprite_ext(spr_speedbar,3,125,140, 1, 1, 0, c_white, alpha)
		else if obj_player2.pogospeed >= 14
			draw_sprite_ext(spr_speedbarmax,-1,125,140, 1, 1, 0, c_white, alpha)
		}
		}
		 }
		 */
 
		if (obj_player.y < camera_get_view_y(view_camera[0]) + 200 && obj_player.x < camera_get_view_x(view_camera[0]) + 200)
		or (instance_exists(obj_gms) && ds_queue_size(global.__xmessage_queue) > 0 && global.__xms_waittime > 0)
			alpha = 0.5
		else
			alpha = 1
	}
	else
		shader_reset()
}

#endregion
#region new hud

else
{
	if obj_player1.state != states.gameover && showhud
	{
		if (obj_player1.x < camera_get_view_x(view_camera[0]) + 250
		&& obj_player1.y < camera_get_view_y(view_camera[0]) + 169)
		or manualhide
			hud_posY = Approach(hud_posY, -300, 15);
		else
			hud_posY = Approach(hud_posY, 0, 15);
		
		pizzascore_index += 0 + (0.25 * global.stylethreshold);
	    if pizzascore_index > pizzascore_number - 1
	        pizzascore_index = 0 + frac(pizzascore_index);
	    if global.stylethreshold <= 0
	    {
	        if floor(pizzascore_index) != 0
	            pizzascore_index += 0.35;
	        else
	            pizzascore_index = 0;
	    }
		
	    var sw = sprite_get_width(spr_heatmeter_fill);
	    var sh = sprite_get_height(spr_heatmeter_fill);
	    var b = global.style / 55;
	    var hud_xx = 149 + irandom_range(-collect_shake, collect_shake);
	    var hud_yy = 105 + irandom_range(-collect_shake, collect_shake) + hud_posY;
	    draw_sprite_part(spr_heatmeter_fill, pizzascore_index, 0, 0, sw * b, sh, hud_xx - 95, hud_yy + 24);
	   
	    pal_swap_set(spr_heatmeter_palette, global.stylethreshold, 0);
	    draw_sprite_ext(spr_heatmeter, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
	    shader_reset();
		
	    draw_sprite_ext(spr_pizzascore, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
		
	    var _score = global.collect
	    if _score >= global.crank
	        draw_sprite_ext(spr_pizzascore_pepper, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
	    if _score >= global.brank
	        draw_sprite_ext(spr_pizzascore_pepperoni, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
	    if _score >= global.arank
	        draw_sprite_ext(spr_pizzascore_olive, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
	    if _score >= global.srank
	        draw_sprite_ext(spr_pizzascore_shroom, pizzascore_index, hud_xx, hud_yy, 1, 1, 0, c_white, alpha);
		
		draw_set_valign(fa_top)
	    draw_set_halign(fa_left)
	    draw_set_font(global.collectfont)
		
		var text_y = 0;
	    switch floor(pizzascore_index)
	    {
	        case 1:
	        case 2:
	        case 3:
	            text_y = 1;
	            break;
	        case 5:
	        case 10:
	            text_y = -1;
	            break;
	        case 6:
	        case 9:
	            text_y = -2;
	            break;
	        case 7:
	            text_y = -3;
	            break;
	        case 8:
	            text_y = -5;
	            break;
	    }
		
	    var str = string(_score);
	    var num = string_length(str);
	    var w = string_width(str);
	    var xx = hud_xx - w / 2;
	    if lastcollect != _score
	    {
	        color_array = array_create(num, 0);
			for(var i = 0; i < array_length(color_array); i++)
				color_array[i] = choose(irandom(3));
	        lastcollect = _score;
	    }
		
	    draw_set_alpha(alpha);
	    for (i = 0; i < num; i++)
	    {
	        var yy = (((i + 1) % 2) == 0 ? -5 : 0);
	        var c = color_array[i];
	        pal_swap_set(spr_font_palette, c, 0);
	        draw_text(xx, hud_yy - 56 + text_y + yy, string_char_at(str, i + 1));
	        xx += w / num;
	    }
		
		draw_set_alpha(1)
	    shader_reset()
		
		/*
	    var bx = (hud_xx - 63)
	    var by = (hud_yy + 20)
	    var bpad = 25
	    var bspr = spr_peppinobullet_collectible
	    if (!obj_player1.ispeppino)
	    {
	        bx = (hud_xx - 69)
	        by = (hud_yy + 77)
	        bspr = spr_playerN_noisebomb
	    }
	    bx += (bpad * global.bullet)
	    for (i = 0; i < global.bullet; i++)
	    {
	        bx -= bpad
	        draw_sprite_ext(bspr, -1, bx, by, 1, 1, 0, c_white, alpha)
	    }
		*/
	}
}

#endregion

//Draw Text
draw_set_font(global.bigfont)
draw_set_halign(fa_center);
draw_set_color(c_white)

//Timer
if global.panic or global.snickchallenge or global.miniboss or global.timedgate
{
	var _seconds = global.seconds;
	var _minutes = global.minutes;
	
	var _color = c_white;
	if _minutes == 0 && _seconds <= 30
		_color = c_red
	var _middletext = (_seconds < 10 ? ":0" : ":");
	
	draw_text_color(random_range(1, -1) + 480, random_range(1, -1) + (global.gameplay == 0 ? 65 : 480 + ((obj_tv.yi - obj_tv.panicy) / 2)), string(_minutes) + _middletext + string(_seconds), _color, _color, _color, _color, image_alpha);
}

if obj_player1.character = "V"
{
	draw_set_colour(c_white);
	draw_text(200 + healthshake, 100 + healthshake + (global.gameplay == 0 ? 0 : 25), global.playerhealth)
}

//Key
if showhud
{
	if global.key_inv == true
		draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 0, c_white, alpha)
	draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 0, c_white, alpha)
}

draw_set_blend_mode(bm_normal);