if !variable_global_exists("crashed")
{
	instance_destroy();
	exit;
}

scr_soundeffect(sfx_pephurt);
crashtext = lang_string("general.crash");

fading = false;
image_alpha = 0;