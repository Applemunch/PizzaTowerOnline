event_inherited();

selarray = [
	[spr_nohat, "NOBODY", "All alone..."],
	[spr_petrat_idle, "CHEESED NOISE", "Father, those are wretches."],
];
spr_idle = selarray[0][0];

with obj_player1
	other.sel[0] = petfollow + 1;
selvert = false;

event_user(0);
