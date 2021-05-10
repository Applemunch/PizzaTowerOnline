var _spr_intro = spr_intro;
var _spr_idle = spr_idle;
var _spr_run = spr_run;

if global.panic
{
	if global.gameplay == 0
		_spr_run = spr_panic;
	else
		_spr_idle = spr_panic;
}

if sc_check()
{
	_spr_intro = spr_intro_strongcold;
	_spr_idle = spr_idle_strongcold;
	_spr_run = spr_run_strongcold;
}

if sprite_index = _spr_intro && floor(image_index) = image_number - 1
	sprite_index = _spr_idle

if sprite_index != _spr_intro
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