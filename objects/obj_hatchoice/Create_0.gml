event_inherited();

selarray = [
	[spr_nohat, "NO HAT", "Don't you already have a hat?"],
	[spr_cowboyhat1, "COWBOY HAT", "Yeehaw."],
	[spr_hat_snickcrown, "SNICK CROWN", "For the king of the 4 Snicks."],
	[spr_hat_cowboy2, "SHERIFF HAT", "Weirdly western."]
];
spr_idle = selarray[0][0];

if obj_player1.character == "G"
	selarray[0][2] = "Go Bald";

// auto select current hat
if obj_player1.hatsprite != -1
{
	for(var i = 0; i < array_length(selarray); i++)
	{
		if selarray[i][0] == obj_player1.hatsprite
		{
			sel[0] = i;
			break;
		}
	}
}
selvert = false;

event_user(0);