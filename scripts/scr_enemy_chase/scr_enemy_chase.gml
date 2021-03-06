function scr_enemy_chase()
{
	if object_index == obj_minijohn or object_index == obj_banditochicken
	{
		//Identify the player
		var targetplayer = obj_player1
	
		//Face the player
		if x != targetplayer.x && !(image_xscale = -sign(x - targetplayer.x))
		{
			movespeed = 4
			if global.gameplay == 0
				movespeed = 7
			
			image_xscale = -sign(x - targetplayer.x)
			momentum = -image_xscale * (movespeed + 4)
		}
		
		hsp = image_xscale * movespeed + momentum
		var railmeet = instance_place(x, y + 1, obj_railparent);
		if railmeet then hsp += railmeet.spdh;
		
		//Slow down
		if momentum > 0
			momentum -= 0.1
		if momentum <= 0
			momentum += 0.1
		
		//Effect
		if scr_solid(x, y + 1)
			steppy--
		if steppy <= 0
		{
			instance_create(x,y+43,obj_cloudeffect)
			steppy = 20
		}
	}
}