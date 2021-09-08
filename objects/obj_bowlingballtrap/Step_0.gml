if falling
{
    sprite_index = spr_bowlingballfalling;
	
    x += hsp;
    y += floor(vsp);
	
    if vsp < 30
        vsp += grav;
}
else with obj_player
{
	// trigger
	if x > other.x - 8 && x < other.x + 8
	&& y > other.y && y < other.y + 540 / 2
	{
		with other
		{
			scr_soundeffect(sfx_enemyprojectile)
			with instance_create(x, y, obj_bowlingball)
			{
				vsp = 5;
				droprate = 30
			}
		
			ds_list_add(global.saveroom, id);
			instance_destroy();
		}
	}
}