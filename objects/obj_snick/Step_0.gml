// deactivate temporarily
if !active
{
	visible = true;
	active = true;
}

with obj_player1
{
	if character == "S" && other.character == 0
	{
		visible = false;
		active = false;
		exit;
	}
	
	// turn to face player
	if x != other.x
	&& y <= other.y + 64 && y >= other.y - 100
		other.image_xscale = -sign(other.x - x);
}

// switch sprite based on character
if character == 0
{
	if room == halloween_entrance
		sprite_index = spr_snicknpc_idle
	else
		sprite_index = spr_snick_idle
}
if character == 1
	sprite_index = spr_snacknpc
if character == 2
	sprite_index = spr_snecknpc

// dialogue
var p = instance_place(x, y, obj_player1);
if p
{
	with p
	{
		if key_up2
			other.dialogue += 1
	}

	with obj_tv
	{
		#region snick
		
		if room == halloween_entrance //global.chateaurank = "none"
		{
			if other.dialogue = 0
				message = ""
			if other.dialogue = 1
				message = "BOO!"
			if other.dialogue = 2
				message = "HAHA DONT WORRY IM NOT DEAD YET"
			if other.dialogue = 3
				message = "HERE IS AN HARDER VERSION OF PIZZASCAPE"
			if other.dialogue = 4
				message = "THIS VERSION INCLUDES DECORATIONS"
			if other.dialogue = 5
				message = "ALL MADE BY THE PIZZA TOWER DISCORD"
			if other.dialogue = 6
				message = "I HOPE YOU ENJOY THIS SHORT LEVEL"
			if other.dialogue = 7
				message = "AND HAPPY HALLOWEEN!"
			if other.dialogue = 8
				message = " "
			showtext = true
			alarm[0] = 2
		}
		/*
		else  if global.chateaurank != "s"
		{
			if other.dialogue = 0
				message = ""

			if other.dialogue = 1
			message = "CONGRATS!"
				if other.dialogue = 2
			message = "THIS DEMO DOESNT HAVE MUCH MORE"
					if other.dialogue = 3
			message = "BUT YOU CAN TRY GETTING AN S RANK!"
						if other.dialogue = 4
			message = " "
			showtext = true
			alarm[0] = 2
		}
		else  if global.chateaurank = "s"
		{
			if other.dialogue = 0
			message = ""

			if other.dialogue = 1
			message = "ALL DONE!"
				if other.dialogue = 2
			message = "SEE YOU NEXT DEMO!"
					if other.dialogue = 3
			message = " "
			showtext = true
			alarm[0] = 2
		}
		*/
		
		#endregion
		
		if other.character == 1
		{
			if other.dialogue = 0
			{
				message = ""
				other.randommessage = choose("YOUR HAIR SMELLS NICE");
			}
			if other.dialogue = 1
				message = other.randommessage
			if other.dialogue = 2
				message = ""
		}
		if other.character == 2
		{
			if other.dialogue = 0
			{
				message = ""
				other.randommessage = choose("PLACEHOLDER");
			}
			if other.dialogue = 1
				message = other.randommessage
			if other.dialogue = 2
				message = ""
		}
		
		showtext = true;
		alarm[0] = 2;
	}
}
else
	dialogue = 0