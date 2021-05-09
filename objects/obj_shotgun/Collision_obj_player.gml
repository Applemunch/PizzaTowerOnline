if other.object_index = obj_player1 && other.character != "S" && other.character != "V"
{
	if obj_player1.shotgunAnim = false && obj_player1.backupweapon = false && obj_player1.state = states.handstandjump
	{
		obj_player1.shotgunAnim = true
		obj_player1.state = states.shotgun
		obj_player1.image_index = 0
		obj_player1.sprite_index= obj_player1.spr_shotgunpullout
		global.gotshotgun = true
		scr_soundeffect(sfx_shotgungot)
		instance_destroy()
		
		tv_push_prompt_once(tv_create_prompt("This is the shotgun powerup text", 2, spr_tv_shotgun, 3), "shotgun");
		
		with obj_tv
		{
			image_speed = 0.25
			message = choose( "ITS TIME TO KICK ASS", "...AND IM ALL OUT OF ASS", "KICKING ASS AND CHEWING ASS", "ITS TIME TO ASS", "IM ALL OUT OF BUBBLE GUM",
			"ITS TIME TO CHEW BUBBLE GUM AND KICK ASS", "ITS TIME TO KICK BUBBLE GUM", "ITS TIME FOR AN ASS KICKING", "ITS TIME FOR BUBBLE GUM",  "ITS TIME TO CHEW ASS")
			alarm[0] = 200
			showtext = true
			tvsprite = spr_tvdook
		}

	}

}