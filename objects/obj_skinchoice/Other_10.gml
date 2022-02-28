/// @description palettes & reset choice
switch sel[1]
{
	default:
		spr_palette = spr_peppalette;
		spr_idle = spr_player_idle;
		selarray = [
			["YELLOW", "Palette zero.\nLegends say he was pissed on..."],
			["PEPPINO", "A somewhat overweight Italian chef."],
			["BLUE", "He's rocking a blue outfit."],
			["RED", "That's right, he's rocking a red outfit."],
			["GREEN", "Woah, he's rocking a green outfit."],
			["GRAY", "A Leaning Nightmare."],
			["GBC", "What a ripoff."],
			["GRAYSCALE", "Depresso spaghetto."],
			["XMAS", "Give me a break."],
			["THE NOISE", "...woag?"],
			["SKETCH", "He crashed into somebody."],
			["GRINCH", "It's Claus!!!!"],
			["PURPLE", "No, he wasn't involved in slaughter."],
			["ANTON", "I hate him."],
			["UNFINISHED", "i found a hole in this sprite"],
			["LIGHT", "Shiny!"],
			["AETHER", "Where's a coder when you need one?"],
			["PETER", "Griffin"],
			["SAGE", "PTSD. \"Pizza Tower Stress Disorder\"."],
			["BLACK", "Not the clothes."],
			["MASSACRE", "Forgot his chainsaw at home, but still unstable."],
			["BURNT PIZZA", "Oh, god damn it."],
			["DREXYL", "D'AW HELL NAH"],
			["GB", "One of his greatest achievements."],
			["HYPOTHERMIA", "Don't bathe inside a freezer."],
		];
		if global.streamer
		{
			selarray[0][1] = "Palette zero.\nDon't make comparisons.";
			selarray[22] = ["BLACK N RED", "That's a cool one."];
		}
		break;
	
	case "N":
		spr_palette = spr_noisepalette;
		spr_idle = spr_playerN_idle;
		selarray = [
			["THE NOISE", "The mischievous gremlin."],
			["HALLOWEEN", "Scary."],
			["PEPPINO", "...The classic?"],
			["SNICK", "Legends say he was involved in slaughter..."],
			["XMAS", "Merry!!!"],
			["INVERTED", ".yracS"],
			["NAKED", "Hell yeah! Public indecency!"],
			["CONCEPT", "The original."],
			["THE DOISE", "Do not steal."],
			["NOISETTE", "It takes a noiser noise than\nThe Noise's noise to annoy The Noise."],
			["RAINBOW", "What country is that?"],
			["SKETCH", "He's closing his eyes...!"],
			["THE NOID", "Avoid him."],
			["GALAXY", "Stunning."],
			["CHUNGUS", "A fine chungus, of the big variety."],
			["MR ORANGE", "I'm seeing double! Four Noise!"],
			["DR.B.B.", "Snoo-ping( )as usual, I see."],
			["NOSE", "It is rumored that this skin allows you to moon jump.\nWe've yet to prove that theory."],
			["SALAD", "You fat bald bastard you piece of subhuman trash\n2000 years of constant human evolution to create a hairless fucking coconut"],
		];
		break;
	
	case "V":
		spr_palette = spr_vigipalette;
		spr_idle = spr_playerV_idle;
		selarray = [
			["THE VIGILANTE", "AKA Vigert Ebenezer Lantte."],
			["HALLOWEEN", "Trick or treat.\nThis is a threat."],
			["MM8BDM", "A very exciting night."],
			["CHOCOLANTE", "It's still cheese. Just... with, uh, chocolate flavor."],
			["JOHN", "A hungry slime."],
			["GOLDEN", "Something, something, carrots."],
			["CHEDDAR", "Cheddar cheese is a relatively hard, off-white (or orange if colourings such as annatto are added),\nsometimes sharp-tasting, natural cheese. Originating in the English village of Cheddar in Somerset,\ncheeses of this style are now produced beyond the region and in several countries around the world."],
			["SEPIA", "Undertale intro sequence."],
			["SNICK", "It's not him. Never trust purple cheese."],
			["EMERALD", "Hmm."],
			["HOLIDAY", "Merry Cheesemas."],
			["CHEESE MAN", "A gag of the Johnson subject."],
			["VIGILECHE", "Chocolate milk."],
			["BLOODSAUCE", "Who dipped the cheese in ketchup?!"],
			["VIGILATEX", "What the fuck"],
			["THE BARTENDER", "Give me a drink, Bartender."],
			["MORSHU", "It's yours, my friend."],
		];
		if global.streamer
			selarray[14][1] = "What";
		break;
	
	case "S":
		spr_palette = spr_snickpalette;
		spr_idle = spr_snick_idle;
		selarray = [
			["SNICK", "It's him."],
			["TAIL", "A single tail."],
			["SHADER", "im the greatest living thing my duderino"],
			["BOOTS", "Unlike Snick..."],
			["SNICKETTE", "Not to be confused with Satan."],
			["MASTER SYSTEM", "Brought to you by Snicksoft."],
			["SHADOW", "Obligatory edgy palette."],
			["CYAN", "RGB 0 255 255"],
			["TRANSPARENT", "(cough sound)"],
			["MANUAL", "This is Snick the porcupine.\nHe hosts his own event."],
			["SKETCH", "Let's just say he likes burgers."],
			["SHITK", "Acting sus!"],
			["HALLOWEEN", "Don't worry, he's not dead yet."],
			["SOCK", "Sock is without description."],
			["ELMO", "Homosexual, the sixty-ninth."],
			["GB", "Wait, what?"],
			["HELLSNICK", "Si."],
			["MAJIN", "Fun is infinite."],
			["NEON", "I've seen OC's brighter than this."],
		];
		if global.streamer
		{
			selarray[4][1] = "No, not that one."; // snickette
			selarray[14][1] = "Hilarious."; // elmo
		}
		break;
	
	case "SP":
		spr_palette = spr_pizzpalette;
		spr_idle = spr_playerSP_idle;
		selarray = [
			["YELLOW", "Take the first 4 letters of Pizzelle."],
			["PIZZELLE", "It's the Candy-making patisje!"],
			["WILD STRAWBERRY", "Also known as \"pink\"."],
			["CHERRY", "Lucky!"],
			["LIME", "Make margaritas, I guess?"],
			["VIOLET", "Now in grape flavor."],
			["ORANGE", "The color or the fruit?"],
			["GUM", "Don't actually chew it please."],
			["CANDY CANE", "It's the Candy"],
			["PUMPKIN", "Uh, a sugary one. Yeah."],
			["FAMILIAR GREMLIN", "Something's wrong."],
			["SAGE", "If it ever happens I will shit bricks."],
			["DOOM", "It's the rip and tearing patisje!"],
			["ANNIE", "Ball-busting time."],
			["SCOOTER", "I- ..wh- what?"],
			["BLURPLE", "Also known as \"test\"."],
			["PAINTLAD", "Very original name there, Jacko."],
			["ENA", "Cheese and rice, Moony!"],
			["COTTON CANDY", "Not to say something else."],
			["GREEN APPLE", "Why is this the least favorite candy flavor?"],
			["SECRET", "Lookie! You've found a pretty sweet surprise."],
			["STUPID RAT", "Their beloved, I suppose."],
			["PASTEL", "Soft on the eyes!"],
			["BURNT", "You fucking DONKEY."],
			["CRAZY FROG", "Ding ding."],
			["FACTORY", "DOOR STUCK"],
			["PINK", "Bismuth subsalicylate."],
			["SUGAR", "Obviously sugar is green."],
			["MASSACRE", "SUGARY SPIRE 2: The Quest for Diabetes"],
			["RIVALS", "Did we find a coder yet?"],
			["OLD SCHOOL", "Also known as \"grayscale\"."],
			["ZOMBIFIED", "Ricochet, eh? I sense some inspiration-ception."],
			["FORESTATION", "Made of sugarcane plants."],
			["LAMDA", "I have nothing to say about this."],
			["GOLDEN", "Unlocks the ability to SHINE, which is bound to no key."],
			["GNOME WIZARD", "Despite being a wizard, he has no redeeming qualities."],
		]
		if global.streamer
		{
			selarray[16][1] = "Very original name there.";
			selarray[23][1] = "You effing DONKEY.";
		}
		
		//["PAINTLAD", "Did you know Jacko suggested the name Paintlad\nand is probably never going to be credited for it?"],
		break;
	
	case "SN":
		spr_palette = spr_creampalette;
		spr_idle = spr_playerSN_idle;
		selarray = [
			["YELLOW", "Piss ano"],
			["PIZZANO", "YAH-HAH!"],
			["FAMILIAR GREMLIN", "Close enough, but not quite."],
			["FAMILIAR CHEF", "A somewhat overweight Italian nuisance."],
			["LASAGNA", "Mondays."],
			["SPICE", "When you want just a little spiciness on your candy."],
			["PLUMBER", "Holy shit it's Super Fucking Mario"],
			["GREEN APPLE", "Now I know why this is the least favorite candy flavor."],
			["GRAPE SODA", "There's more purple than actual soda in this."],
			["ANTIPATHIC", "Isn't it antipathetic?"],
			["GUMMY BEAR", "Tastes like blood."],
			["LIME", "Unfortunate palette placement."],
			["CRYSTALIZED", "Missed opportunity to make it transparent."],
		];
	break;
	
	#region joke
	
	case "PP":
		spr_palette = spr_peppalette;
		spr_idle = spr_playerPP_idle;
		selarray = [
			["PISSINO", "God is dead and we killed him."],
			["GO BACK", "reatrd"],
		]
		break;
	
	case "CHEESESLIME":
		spr_palette = palette_cheeseslime;
		spr_idle = spr_slimemove;
		selarray = [
			["CHEESESLIME", "Totally useless. Cannon fodder."],
			["HALLOWEEN", "Don't worry, he'll be dead soon."],
		]
		break;
	case "FORKNIGHT":
		spr_palette = palette_forknight;
		spr_idle = spr_forknight_walk;
		selarray = [
			["FORKNIGHT", "His variant is Battle Royale."],
			["HALLOWEEN", "Slightly darker, ooga booga."],
		]
		break;
	case "PEPGOBLIN":
		spr_palette = palette_pepgoblin;
		spr_idle = spr_pepgoblin;
		selarray = [
			["PEPPERONI GOBLIN", "He will take any opportunity to practice kicks."],
			["HALLOWEEN", "A nice purple tint, somehow meant to be scary."],
		]
		break;
	case "PIZZARD":
		spr_palette = palette_pizzard;
		spr_idle = spr_pizzard_walk;
		selarray = [
			["PIZZARD", "The pizzard circle studies pizzamancy."],
			["HALLOWEEN", "Inverted colors! Did you shit yourself yet?"],
			["DOUGIE", "Bowtie."],
		]
		break;
	
	#endregion
	#region scrapped (for now)
	
	case "M":
		spr_palette = spr_manpalette;
		spr_idle = spr_playerM_idle;
		selarray = [
			["PEPPERMAN", "A giant red pepper with limbs."],
			["2 HP", "Peppers are a good pumpkin replacement."],
			["1 HP", "568% vitamin C!"],
			["BANANA", "Potassium."],
		];
		break;
	
	case "W":
		spr_palette = spr_peppalette;
		spr_idle = spr_playerW_idle;
		selarray = [
			["PETER", "Wieners don't use drugs!"]
		];
		break;
	
	#endregion
}
pal_swap_index_palette(spr_palette);

/*
custompal_update(palcolors);
if instance_exists(obj_gms) && gms_info_isloggedin()
	gms_self_set("palcolors", dsread);
*/

switch sel[1]
{
	default:
		if instance_exists(obj_gms) && gms_info_isloggedin()
			locked = gms_ini_player_read("saveData", "customlock") == sel[1];
		else
			locked = false;
		break;
	
	case "M":
		locked = true;
		break;
	
	case "SP":
		/*
		if instance_exists(obj_gms) && gms_info_isloggedin()
			locked = !(gms_ini_player_read("saveData", "pizzelle") == true);
		else
			locked = !debug;
		*/
		locked = false;
		break;
}
var basepal = (sel[1] == "P" or sel[1] == "SP" or sel[1] == "SN");

if sel[1] != obj_player1.character
	sel[0] = basepal;
else
	sel[0] = obj_player1.paletteselect;

selmin = 0;
selmax = pal_swap_get_pal_count(spr_palette) - 1;

if !check_shaders()
{
	sel[0] = 0;
	if basepal
		selarray[0] = selarray[1];
}