event_inherited();
noisetype = 0;
sel = [1, "P"];

palcolors = ds_list_create();
palsurf = -1;

with obj_player1
{
	other.noisetype = noisetype;
	other.sel = [paletteselect, character];
}
selvert = true;

event_user(0);