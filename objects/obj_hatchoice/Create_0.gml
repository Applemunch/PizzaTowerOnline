event_inherited();

selarray = [
	[spr_nohat, "NO HAT", "Don't you already have a hat?"],
	[spr_cowboyhat1, "COWBOY HAT", "Yeehaw."],
	[spr_hat_snickcrown, "SNICK CROWN", "For the king of the 4 Snicks."],
	[spr_hat_cowboy2, "SHERIFF HAT", "Weirdly western."]
];
spr_idle = selarray[0][0];

with obj_player1
{
	if character == "G"
		other.selarray[0][2] = "Go Bald";
	
	// auto select current hat
	if hatsprite != -1
	{
		for(var i = 0; i < array_length(other.selarray); i++)
		{
			if other.selarray[i][0] == hatsprite
			{
				other.sel[0] = i;
				break;
			}
		}
	}
}

selvert = false;
event_user(0);