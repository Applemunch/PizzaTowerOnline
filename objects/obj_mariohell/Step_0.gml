/// @description cutscene progression
if con == 1
{
	con = 2;
	alarm[0] = room_speed * 2;
}
if con == 3
{
	con = 4;
	with instance_create(0, 0, obj_dialoguebox)
	{
		diagsound = [sfx_mariotalk1, sfx_mariotalk2, sfx_mariotalk3, sfx_mariotalk4, sfx_mariotalk5];
		playsound = false;
		canskip = false;
		rate = 2;
		dialogue = [
			"Greetings.",
			"I am^5 Mario."
		]
	}
}
if con == 4
{
	if !instance_exists(obj_dialoguebox)
	{
		con = 5;
		scr_sound(mu_mariologgedin);
		alarm[0] = room_speed * 3;
	}
}
if con == 6
{
	con = 7;
	with instance_create(0, 0, obj_dialoguebox)
	{
		diagsound = [sfx_mariotalk1, sfx_mariotalk2, sfx_mariotalk3, sfx_mariotalk4, sfx_mariotalk5];
		playsound = false;
		canskip = false;
		rate = 2;
		dialogue = [
			"You have proven your worth.",
			"You have the knowledge on how to travel instantly through the universe.",
			"You have the ability to tear the fabric of reality in the mere press of a button.",
			"...",
			"Though,^3 thing is...^5 I have your exact location.\\%%",
		]
	}
}
if con == 7 && !instance_exists(obj_dialoguebox)
{
	con = -1;
	audio_stop_all();
	alarm[1] = 5;
}
