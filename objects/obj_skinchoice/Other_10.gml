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
			["RED", "Shocking, he's rocking a red outfit."],
			["GREEN", "That's right, he's rocking a green outfit."],
			["GRAY", "A Leaning Nightmare."],
			["GBC", "What a ripoff."],
			["GB", "Grayscale."],
			["XMAS", "Give me a break."],
			["THE NOISE", "...woag?"],
			["SKETCH", "He crashed into somebody."],
			["GRINCH", "It's Claus!!!!"],
			["PURPLE", "No, he wasn't involved in slaughter."],
			["ANTON", "I hate him."],
			["UNFINISHED", "i found a hole in this sprite"],
			["LIGHT", "Ooo, shiny!"],
			["AETHER", "Where's a coder when you need one?"],
			["PETER", "Griffin"],
			["SAGE", "Reminds him of bad memories..."],
			["BLACK", "Not the clothes."],
			["MASSACRE", "Forgot his chainsaw at home, but still unstable."],
		];
		break;
	
	case "N":
		spr_palette = spr_noisepalette;
		spr_idle = spr_playerN_idle;
		selarray = [
			["THE NOISE", "The mischievous gremlin."],
			["HALLOWEEN", "Scary."],
			["PEPPINO", "...The classic?"],
			["SNICK", "Legends say he was involved in slaughter..."],
			["XMAS", "Merry."],
			["INVERTED", ".yracS"],
			["NAKED", "Yikes."],
			["NOIK", "He's canon."],
			["CONCEPT", "The original."],
			["THE DOISE", "Do not steal."],
			["NOISETTE", "It takes a noiser noise than\nThe Noise's noise to annoy The Noise."],
			["RAINBOW", "My eyes."],
			["SKETCH", "He's closing his eyes...!"],
			["THE NOID", "Avoid him."],
			["GALAXY", "Stunning."],
			["CHUNGUS", "Big."],
			["MR ORANGE", "I'm seeing double! Four Noise!"],
			["NEO", "Neo is the new!"],
			["DR.B.B.", "Snooping as usual, I see!"],
			["NOSE", "Repeat after me! N. I. G-"],
		];
		break;
	
	case "V":
		spr_palette = spr_vigipalette;
		spr_idle = spr_playerV_idle;
		selarray = [
			["THE VIGILANTE", "AKA Vigert Ebenezer Lantte."],
			["HALLOWEEN", "Trick or treat.\nThis is a threat."],
			["MM8BDM", "What an exciting night."],
			["CHOCOLANTE", "It's still cheese."],
			["JOHN", "A hungry slime."],
			["GOLDEN", "Expensive cheese. Still cheese."],
			["CHEDDAR", "Cheddar cheese is a relatively hard, off-white (or orange if colourings such as annatto are added),\nsometimes sharp-tasting, natural cheese. Originating in the English village of Cheddar in Somerset,\ncheeses of this style are now produced beyond the region and in several countries around the world."],
			["SEPIA", "Filters."],
			["SNICK", "It's him...?"],
			["EMERALD", "Hard cheese. Still cheese."],
			["HOLIDAY", "Merry Cheesemas."],
			["CHEESE MAN", "Cock joke."],
			["VIGILECHE", "Chocolate milk... still cheese."],
			["BLOODSAUCE", "Smells like ketchup."],
			["VIGILATEX", "What the fuck"],
			["THE BARTENDER", "Give me a drink, Bartender."],
		];
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
			["SONIC", "YEAH FAST"],
			["SHADOW", "Can you even see his eyes?"],
			["CYAN", "RGB 0 255 255"],
			["TRANSPARENT", "(cough sound)"],
			["MANUAL", "This is Snick the porcupine.\nHe hosts his own event."],
			["SKETCH", "Let's just say he likes burgers."],
			["SHITK", "Acting sus!"],
			["HALLOWEEN", "Don't worry, he's not dead yet."],
			["SOCK", "Sock is without description."],
			["ELMO", "Homosexual, the sixty-ninth."],
		];
		break;
	
	case "G":
		spr_palette = spr_gladepalette;
		spr_idle = spr_playerG_idle;
		selarray = [
			["???", "If you see this, I messed up."],
			["GLADE", "She's a blue wolf."],
			["BRAZ", "Glade's brother."],
			["RANDOM", "Effortlessly bright."],
			["EDGY", "Literally just edgy I have nothing else to say."],
			["LOONA", "Shut up, dear furry!"],
			["PEPPINO", "Italian cosplay, let's go!"],
			["THE NOISE", "Fortunately not as noisy."],
			["NOIK", "... I'm beginning to see a pattern here."],
			["LEITH", "Speaks with living dirt for some reason."],
			["BLUGAR", "\"Funny\" clown."],
			["PUMP", "It's spooky month!!!"],
			["PURO", "Why?"],
			["ISABELLE", "You wouldn't get it."],
			["KAPI", "Hi, PaperKitty."],
			["MONSTER", "And then I'm gonna eat your girlfriend~"],
			["DARK WORLD", "Only eyes blinded by darkness can see the way..."],
			["MINEKEN", "You don't deserve a choice."],
			["CORRUPTION", "At least they're smiling."],
			["BLUEBERRY", "But it's not a berry!"],
			["WII DOG", "HEHA"],
			["CHRIS", "Furry."],
			["BLUE MARIO", "loypoll's OC...??"],
		];
		break;
	
	case "SP":
		spr_palette = spr_pizzpalette;
		spr_idle = spr_playerSP_idle;
		selarray = [
			["YELLOW", "Read the first 4 letters of Pizzelle,\nbut replace Pizz with fuck you."],
			["PIZZELLE", "It's the Candy-making pizzano!"],
			["WILD STRAWBERRY", "Also known as \"pink\"."],
			["CHERRY", "Lucky!"],
			["LIME", "Make margaritas."],
			["VIOLET", "Now in grape flavor."],
			["ORANGE", "The color or the fruit?"],
			["GUM", "Don't actually chew it please."],
			["CANDY CANE", "It's the Candy-"],
			["PUMPKIN", "Have you ever eaten one?"],
			["THE NOISE", "Nearly identical..."],
			["SAGE", "For the SAGE-... oh wait."],
			["DOOM", "Gibs is an anagram of candy."],
			["ANNIE", "It's ball-busting time."],
			["SCOOTER", "I- ..wh- what?"],
			["BLURPLE", "Also known as \"test\"."],
			["PAINTLAD", "Very original, Jacko."],
			["ENA", "Cheese and rice, Moony!"],
			["TRANS", "Laugh."],
			["GREEN APPLE", "Why is this the least favorite candy flavor?"],
		];
		if irandom_range(0, 1000) == 1 && !global.streamer // 0.01% chance
			selarray[1] = ["TRANNY", "It's the Candy-making tranny!"];
		break;
		
		//["PAINTLAD", "Did you know Jacko suggested the name Paintlad\nand is probably never going to be credited for it?"],
	
	#region roleplay
	
	case "CHEESESLIME":
		spr_palette = palette_cheeseslime;
		spr_idle = spr_slimemove;
		selarray = [
			["CHEESESLIME", "Totally useless. Cannon fodder."],
			["HALLOWEEN", "Don't worry, he'll be dead soon.\nIs that too grim?"],
		]
		break;
	case "FORKNIGHT":
		spr_palette = palette_forknight;
		spr_idle = spr_forknight_walk;
		selarray = [
			["FORKNIGHT", "His variant is Battle Royale."],
			["HALLOWEEN", "Slightly darker, I pissed my pants."],
		]
		break;
	case "PEPGOBLIN":
		spr_palette = palette_pepgoblin;
		spr_idle = spr_pepgoblin;
		selarray = [
			["PEPPERONI GOBLIN", "He will take any opportunity to practice kicks."],
			["HALLOWEEN", "A nice purple tint."],
		]
		break;
	case "PIZZARD":
		spr_palette = palette_pizzard;
		spr_idle = spr_pizzard_walk;
		selarray = [
			["PIZZARD", "The pizzard circle studies pizzamancy."],
			["HALLOWEEN", "Inverting colors is spooky."],
			["DOUGIE", "Bowtie."],
		]
		break;
	
	#endregion
	
	#region scrapped
	
	case "M":
		spr_palette = spr_manpalette;
		spr_idle = spr_playerM_idle;
		selarray = [
			["PEPPERMAN", "A giant red pepper with limbs."],
			["2 HP", "Spooky?"],
			["1 HP", "568 percent vitamin C!"],
			["BANANA", "It's still pepper."],
		];
		break;
	/*
	case "W":
		spr_palette = spr_peppalette;
		spr_idle = spr_playerW_idle;
		selarray = [
			["WEENIE", "Wieners don't use drugs!"]
		];
		break;
	*/
	
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

if sel[1] != obj_player1.character
	sel[0] = ((sel[1] == "P" or sel[1] == "SP" or sel[1] == "G") ? 1 : 0);
else
	sel[0] = obj_player1.paletteselect;

selmin = (sel[1] == "SP" or sel[1] == "G" ? 1 : 0);
selmax = pal_swap_get_pal_count(spr_palette) - 1;

if !check_shaders()
{
	sel[0] = 0;
	if character == "P" or character == "SP" or character == "G"
		selarray[0] = selarray[1];
}