/// @description hats & reset choice
spr_idle = selarray[sel[0]][0];

selmin = 0;
selmax = array_length(selarray) - 1;

if sel[0] == 2 // SPAMTON
{
	titlefont = fnt_mars;
	descfont = fnt_8bitoperator;
}
else
{
	titlefont = global.bigfont;
	descfont = global.font_small;
}
