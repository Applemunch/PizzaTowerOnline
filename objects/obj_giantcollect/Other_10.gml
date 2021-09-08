/// @description collect
audio_stop_sound(sfx_collectgiantpizza);
scr_soundeffect(sfx_collectgiantpizza);

global.collect += 1000;

with instance_create(x,y,obj_smallnumber)
	number = string(1000);

if global.bullet < 3
    global.bullet += 1;

instance_destroy();
scr_failmod(mods.no_toppings);

// burst into toppings
if global.gameplay != 0
{
	var _x = x - 48;
    var _y = y - 48;
    var _xstart = _x;
	
    for (var yy = 0; yy < 4; yy++)
    {
        for (var xx = 0; xx < 4; xx++)
        {
            create_collect(_x, _y, scr_collectsprite());
            _x += 16;
        }
        _x = _xstart;
        _y += 16;
    }
}