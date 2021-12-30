basespr = spr_snicknpc_re;
sprite_index = basespr;

dialogue = [
	"Thanks for coming.^2 It's quite empty here...",
	"I still have the games here,^1 though some of my friends changed them a bit...",
	"And I should warn you,^1 they aren't as easy as before.",
]
donefunc = function()
{
	dialogue = [
		"Good luck."
	]
}

// playing as snick
with obj_player
{
	if character == "S" other.dialogue = [
		"...",
		"Nice disguise."
	]
	donefunc = function()
	{
		dialogue = [
			"...?"
		]
	}
}
