if other.state == states.gameover exit;

if obj_player1.character = "V" 
	global.playerhealth = clamp(global.playerhealth+100, 0, 100)


scr_soundeffect(sfx_collectgiantpizza)

global.collect += 1000
global.heattime = 60

with instance_create(x+16,y,obj_smallnumber)
	number = string(1000)

if global.gameplay != 0
{
	var _x = x - 48;
    var _y = y - 48;
    var _xstart = _x;
    for (var yy = 0; yy < 4; yy++)
    {
        for (var xx = 0; xx < 4; xx++)
        {
            create_collect(_x, _y, choose(spr_sausagecollect, spr_shroomcollect, spr_shrimpcollect, spr_tomatocollect));
            _x += 16;
        }
        _x = _xstart;
        _y += 16;
    }
}

instance_destroy()