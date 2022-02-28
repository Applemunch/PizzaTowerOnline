event_inherited();

selarray = [
	[spr_nohat, "NOBODY", "All alone..."],
	[spr_petrat_idle, "CHEESED NOISE", "Father, those are wretches."],
	[spr_petspamton_idle, "SPAMTON", choose("ENL4RGE Yourself", "TRANSMIT KROMER", "MEET LOCAL SINGLES STRAIGHT FROM [His]", "Get Big and WIN [W1ld Pr1zes!]", "HELP", "DON'T FORGET TO [[Like and Subscribe]] FOR MORE [[Hyperlink Blocked.]]", "HAEAHAEAHAEAHAEAH!!", "DON'T YOU WANNA BE A BIG SHOT?", "WHY BE THE [[Little Sponge]] WHO HATES ITS [[$4.99]] LIFE\nWHEN YOU CAN BE A [[BIG SHOT!!!]]")],
];
spr_idle = selarray[0][0];

with obj_player1
	other.sel[0] = petfollow + 1;
selvert = false;

event_user(0);
