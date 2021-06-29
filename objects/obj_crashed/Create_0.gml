if !variable_global_exists("crashed")
{
	instance_destroy();
	exit;
}

scr_soundeffect(sfx_pephurt);
crashtext = "The game crashed last time.";

fading = false;
image_alpha = 0;