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
	draw_set_halign(fa_middle);
	draw_text(280, 132, "- Pizza Tower -\nPizzaTowerGuy\n\n- Antonball -\nSummitsphere\n\n- Peppino's Leaning Nightmare -\nDrexyl\nMarcus Does Miscellaneous\nPLN Contributors\n\n- Sugary Spire -\nSugarySpireGuy\nPinPanPaint - Assets\nRodMod - Music");
	draw_text(680, 132, "- Other -\n\nSnick Escape - [c]ness\nSmart Debris - MrUnown\nExtra rooms - bepmaster\n\n- NPC -\nChester - Chester Doggo\nThe Silence - SlushX, 175HayStacks\n\n- Characters and Palettes -\nGlade, Noik - peic\nAlmost every other palette - bepmaster");
}