depth = -9999;
instance_destroy(obj_pausefadeout);

img = 0;
hatselect = 0;

hatnames = [
	[spr_nohat, "NO HAT", "Don't you already have a hat?"],
	[spr_cowboyhat1, "COWBOY HAT", "Yeehaw."],
	[spr_hat_snickcrown, "SNICK CROWN", "For the king of the 4 Snicks."],
	[spr_hat_cowboy2, "SHERIFF HAT", "Weirdly western."]
];
spr_idle = hatnames[0][0];

if obj_player1.character == "G"
	hatnames[0][2] = "Go Bald";

// auto select current hat
if obj_player1.hatsprite != -1
{
	for(var i = 0; i < array_length(hatnames); i++)
	{
		if hatnames[i][0] == obj_player1.hatsprite
		{
			hatselect = i;
			break;
		}
	}
}

locked = false;
event_user(0);

xoffset = 0;
yoffset = 0;

stickpressed = false;