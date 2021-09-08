function cutscene_gustavofail_end(time)
{
	timer++;
	with obj_gustavo
	    visible = false;
	with obj_player
	{
	    xscale = -1;
	    sprite_index = spr_gustavo_pummel;
		
	    if !instance_exists(obj_slapstar)
	    {
	        instance_create(x - 20, y - 20, obj_slapstar);
	        scr_soundeffect(sfx_pephurt);
			
	        with instance_create(x - 20, y - 20, obj_smallnumber)
	        {
	            negative = true;
	            number = "-50";
	        }
			
	        if character != "SP"
				repeat (min(global.collect, 10)) instance_create(x, y, obj_pizzaloss);
			global.collect = max(global.collect - 50, 0);
	    }
	}
	if timer >= time
	{
	    with obj_gustavo
	    {
	        visible = true;
	        sprite_index = spr_gustavo_idle;
	    }
		
	    scr_hurtplayer(obj_player1);
	    obj_player.hsp = 0;
	    obj_player.movespeed = 0;
	    obj_player.xscale = 1;
	    cutscene_end_action();
	}
}