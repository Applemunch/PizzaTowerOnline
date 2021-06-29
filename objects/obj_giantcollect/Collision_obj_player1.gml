if other.state == states.gameover exit;

if obj_player1.character = "V" 
	global.playerhealth = clamp(global.playerhealth + 100, 0, 100)

scr_soundeffect(sfx_collectgiantpizza)

global.collect += 1000
global.heattime = 60

with instance_create(x+16,y,obj_smallnumber)
	number = string(1000)

if global.bullet < 3
    global.bullet += 1;

if global.gameplay != 0
{
	var _x = x - 48;
    var _y = y - 48;
    var _xstart = _x;
	
    for (var yy = 0; yy < 4; yy++)
    {
        for (var xx = 0; xx < 4; xx++)
        {
			var spr;
			if other.character == "N"
				spr = choose(spr_halloweencollectibles1,spr_halloweencollectibles2,spr_halloweencollectibles3,spr_halloweencollectibles4,spr_halloweencollectibles5)
			else if other.character == "S"
				spr = spr_snickcollectible1
			else if other.character == "SP"
				spr = choose(spr_sugarycollectibles1, spr_sugarycollectibles2, spr_sugarycollectibles3, spr_sugarycollectibles4, spr_sugarycollectibles5, spr_sugarycollectibles6, spr_sugarycollectibles7, spr_sugarycollectibles8, spr_sugarycollectibles9, spr_sugarycollectibles10);
			else
				spr = choose(spr_sausagecollect, spr_shroomcollect, spr_shrimpcollect, spr_tomatocollect);
			
            create_collect(_x, _y, spr);
            _x += 16;
        }
        _x = _xstart;
        _y += 16;
    }
}

instance_destroy()