var _spr_intro = spr_intro;
var _spr_idle = spr_idle;
var _spr_run = spr_run;

if global.panic or playerid.state == states.frozen
{
	_spr_run = spr_panic;
	_spr_idle = spr_panicidle;
}

if sc_check()
{
	yoffset = 2;
	
	_spr_intro = spr_intro_strongcold;
	_spr_idle = spr_idle_strongcold;
	_spr_run = spr_run_strongcold;
	
	if global.panic
	{
		_spr_idle = spr_panicidle_strongcold;
		_spr_run = spr_panic_strongcold;
	}
}

if sprite_index == _spr_intro && floor(image_index) == image_number - 1 && _spr_intro != _spr_run
	sprite_index = _spr_idle

if sprite_index != _spr_intro or _spr_intro == _spr_run
{
	// Sprites
	if x != xprevious
	{
		sprite_index = _spr_run;
		xscale = sign(x - xprevious);
	}
	else
		sprite_index = _spr_idle;
	depth = -6;
}