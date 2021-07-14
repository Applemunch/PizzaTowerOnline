event_inherited();

selarray = [
	[spr_nohat, "NOBODY", "All alone..."],
	[spr_petnoah_idle, "NOAH", "Since when did Noik get a child?"],
	[spr_petrat_idle, "SHREW NOISE", "Father, those are wretches."],
	[spr_petraton_idle, "RATON", "STUPID RAT."],
	[spr_petgerald_idle, "GERALD", "gerald gooo"],
	[spr_petglade_idle, "GLADE", "She has no style, she has no grace.\nThis gal has a chubby face."],
	[spr_petcaptions_idle, "CAPTIONS", "Please don't use this while\nplaying as Glade I beg you -Peic"],
	[spr_petpeic_idle, "PEIC", "MY EHWEHREN THE HEHA HRIDFO SHGJHSJKHDSFJK,,"],
	[spr_petgrunt_idle, "GRUNT", "Do you ever just need some Madness?"],
	[spr_petsneck_idle, "SNECK", "Sneck is here for you."],
	[spr_petmario_idle, "MARIO", "He's 4 parallel universes ahead of you."],
];
spr_idle = selarray[0][0];

with obj_player1
{
	other.sel[0] = petfollow + 1;
	if character == "G"
		other.selarray[6][2] = "No. Stop. Don't.";
}
selvert = false;

event_user(0);