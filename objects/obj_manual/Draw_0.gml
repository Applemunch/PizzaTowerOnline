draw_sprite(spr_manual, i, 0, 0);

draw_set_font(fnt_manual);
draw_set_colour(c_red);

if i == 2
{
	draw_set_halign(fa_left);
	draw_text(216, 238, "/list - Lists all players that are currently in-game\n/t - Toggles a mini-chat in the bottom left corner of the screen\n/ping - Pongs you back\n/dance - Dance");
}
if i == 4
{
	draw_set_halign(fa_center);
	if global.streamer
		draw_text(960 / 2, 132, "You can't see the credits\nin streamer mode. For safety.");
	else
	{
		draw_text(280, 132, "- Pizza Tower -\nPizzaTowerGuy\n\n- Antonball -\nSummitsphere\n\n- Peppino's Leaning Nightmare -\nDrexyl\nMarcus Does Miscellaneous\nPLN Contributors\n\n- Sugary Spire -\nSlim\nPinPan, Ching, etc - Assets\nRodMod, Red - Music");
		draw_text(680, 132, "- Other -\nSnick Escape - [c]ness\nSmart Debris - MrUnown\nExtra rooms - bepmaster\nLadders - Blugar23\nSugary Blocks - Randy\n\n- NPC -\nPlaceholder\n\n- Characters and Palettes -\nPalettes - Planet Pizza Discord\nGlade, Noik & Peic - Sanssul\nNoah - lightninghawk, Sanssul\nGerald - Random\nCaptions - Croatian Commander, Potato");
	}
}