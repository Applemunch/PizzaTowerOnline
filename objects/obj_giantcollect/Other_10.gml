/// @description create collects
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