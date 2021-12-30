event_inherited();
yoffset = 0;

if abs(x - xprevious) > 2
{
    xscale = -sign(xprevious - x);
	sprite_index = spr_gerome_keymove;
}
else
	sprite_index = spr_gerome_keyidle;
