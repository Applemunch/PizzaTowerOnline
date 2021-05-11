/// @description world control create
WC_consoleopen = false;
if debug
{
	// world console
	WC_creatingobj = false;
	
	WC_dragobj = noone;
	WC_fakedragobj = noone;
	WC_moffsetx = 0;
	WC_moffsety = 0;
	WC_candrag = true;
	WC_draggrid = 1;

	WC_selectobj = false;

	WC_frozenobj[0] = noone;
	WC_frozenvar[0] = undefined;
	WC_frozenval[0] = undefined;

	WC_showinvisible = false;

	WC_debuginfo = false;
	WC_debugselected = noone;
	WC_debugvarstart = 0;

	WC_varobj = undefined;
	WC_varmonitor = undefined;

	// console
	WC_modkp = -1;
	WC_consoleopen = false;

	WC_consolelist = ds_list_create();

	WC_consoletext = "";
	WC_consoleenter = "%startup";
	WC_lastconsoleenter = "";
	WC_consolesilence = true;

	WC_bindkey = ds_list_create();
	WC_bindmap = ds_list_create();

	WC_lastconsoleenter = ds_list_create();
	WC_lastconsoleenterind = 0;

	WC_swapconsolefont = false;
	WC_consolecolor = c_black;

	WC_consolebottom = 0;
	WC_maxconsolebottom = 260;

	WC_drawline = true;
	WC_drawlinetimer = 30;

	WC_saveversion = 0;
	WC_togglekey = ord("º");

	WC_consolescroll = 0;

	// pt exclusive
	WC_oobcam = false;
	WC_prioritizebaddies = true;
	WC_pausebinds = true;
	WC_livestep = undefined;
}
else
	instance_destroy();