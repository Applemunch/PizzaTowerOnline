if obj_player.character = "S" && character == 0
	instance_destroy()

if character == 0
	sprite_index = spr_snick_idle
if character == 1
	sprite_index = spr_snacknpc
if character == 2
	sprite_index = spr_snecknpc

if x != obj_player1.x
&& obj_player1.y <= y + 64 && obj_player1.y >= y - 100
	image_xscale = -sign(x - obj_player1.x)

if place_meeting(x,y,obj_player)
{
	with obj_player
	{
		if key_up2
			other.dialogue += 1
	}

	with obj_tv
	{
		/*
		if global.chateaurank = "none"
		{
			if other.dialogue = 0
				message = ""
			if other.dialogue = 1
				message = "BOO	!"
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
		
		if other.character == 1
		{
			if other.dialogue = 0
			{
				message = ""
				other.randommessage = choose("YOUR HAIR SMELLS NICE", "PLAY WITH ME", "", "");
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
				other.randommessage = choose("");
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