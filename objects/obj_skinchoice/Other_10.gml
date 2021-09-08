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
			["SAGE", "Pizza Tower Stress Disorder"],
			["BLACK", "Not the clothes."],
			["MASSACRE", "Forgot his chainsaw at home, but still unstable."],
			["BURNT PIZZA", "Oh god damn it."],
			["DREXYL", "D'AW HELL NAH"],
			["GB", "One of his greatest achievements."],
			["HYPOTHERMIA", "Don't bathe inside a freezer."],
			["RON", "He hates women."],
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
			["NOIK", "He's canon."],
			["CONCEPT", "The original."],
			["THE DOISE", "Do not steal."],
			["NOISETTE", "It takes a noiser noise than\nThe Noise's noise to annoy The Noise."],
			["RAINBOW", "What country is that?"],
			["SKETCH", "He's closing his eyes...!"],
			["THE NOID", "Avoid him."],
			["GALAXY", "Stunning."],
			["CHUNGUS", "A fine chungus, of the big variety."],
			["MR ORANGE", "I'm seeing double! Four Noise!"],
			["NEO", "Neo is the new!"],
			["DR.B.B.", "Snooping as usual, I see!"],
			["NOSE", "Repeat after me! N-"],
			["SALAD", "You fat bald bastard you piece of subhuman trash 2000 years of constant human evolution to create a hairless fucking coconut"],
		];
		break;
	
	case "V":
		spr_palette = spr_vigipalette;
		spr_idle = spr_playerV_idle;
		selarray = [
			["THE VIGILANTE", "AKA Vigert Ebenezer Lantte."],
			["HALLOWEEN", "Trick or treat.\nThis is a threat."],
			["MM8BDM", "A very exciting night."],
			["CHOCOLANTE", "It's still cheese."],
			["JOHN", "A hungry slime."],
			["GOLDEN", "Something, something, carrots."],
			["CHEDDAR", "Cheddar cheese is a relatively hard, off-white (or orange if colourings such as annatto are added),\nsometimes sharp-tasting, natural cheese. Originating in the English village of Cheddar in Somerset,\ncheeses of this style are now produced beyond the region and in several countries around the world."],
			["SEPIA", "Undertale intro sequence."],
			["SNICK", "It's not him. Never trust purple cheese."],
			["EMERALD", "Hmm."],
			["HOLIDAY", "Merry Cheesemas."],
			["CHEESE MAN", "A gag of the Johnson subject."],
			["VIGILECHE", "Chocolate milk... cheese?"],
			["BLOODSAUCE", "Who dipped the cheese in ketchup?!"],
			["VIGILATEX", "What the fuck"],
			["THE BARTENDER", "Give me a drink, Bartender."],
			["MORSHU", "It's yours, my friend."],
			["TIMOTHY", "Some shading wouldn't do harm..."],
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
			["SPIRIT", "3rd song transformation."],
			["MAJIN", "Fun is infinite."],
			["NEON", "I've seen OC's brighter than this."],
		];
		if global.streamer
		{
			selarray[4][1] = "No, not that one.";
			selarray[14][1] = "Hilarious.";
		}
		break;
	
	case "G":
		spr_palette = -1;
		spr_idle = -1;
		selarray = [
			["???", "If you see this, I messed up."],
			["GLADE", "She's a blue wolf."],
			["BRAZ", "Glade's brother."],
			["RANDOM", "Effortlessly bright."],
			["EDGY", "Yep."],
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
			["BLUE MARIO", "Not loypoll. This is not loypoll."],
			["RITZ", "E-girl approved."],
			["RED", "Vote him out."],
			["FRITZ", "NO"],
			["PINK", "Bismuth subsalicylate."],
			["VOLCANO", "Bursting at the seams."],
			["GIRLFRIEND", "That's how you do it!"],
			["SANS", "Turn around and shake his hand."],
			["BURNT", "Crispy wolf."],
		];
		if global.streamer
			selarray[17] = ["FELIX", "Definitely not the Mineken palette I swear"];
		
		with obj_player1
		{
			if petfollow == 5 // captions
				other.selarray[1][1] = "No. Stop. Don't.";
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
			["THE NOISE", "Something's wrong."],
			["SAGE", "If it ever happens I will shit bricks."],
			["DOOM", "It's the rip and tearing patisje!"],
			["ANNIE", "Ball-busting time."],
			["SCOOTER", "I- ..wh- what?"],
			["BLURPLE", "Also known as \"test\"."],
			["PAINTLAD", "Very original name there, Jacko."],
			["ENA", "Cheese and rice, Moony!"],
			["COTTON CANDY", "Reference."],
			["GREEN APPLE", "Why is this the least favorite candy flavor?"],
			["GRAPE SODA", "There's more purple than actual soda in this."],
			["NOIK", "The obligatory canon palette."],
			["STUPID RAT", "Their beloved, I suppose."],
			["PASTEL", "Soft on the eyes!"],
			["BURNT", "You fucking DONKEY."],
			["CRAZY FROG", "Ding ding."],
			["FACTORY", "DOOR STUCK"],
			["PINJ", "Bismuth subsalicylate."],
		];
		if global.streamer
		{
			selarray[16][1] = "Very original name there.";
			selarray[24][1] = "You. Effing. DONKEY.";
		}
		
		//["PAINTLAD", "Did you know Jacko suggested the name Paintlad\nand is probably never going to be credited for it?"],
		break;
	
	case "SN":
		spr_palette = spr_creampalette;
		spr_idle = spr_playerSN_idle;
		selarray = [
			["YELLOW", "take pizz out of pizzano and translate from spanish"],
			["PIZZANO", "YAH-HAH!"],
		];
	break;
	
	case "PEIC":
		spr_palette = spr_peicpalette;
		spr_idle = spr_peic_idle;
		selarray = [
			["PEIC", "peic."],
			["PARAPPA", "The cool rap dog."],
			["LOYPOLL", ""],
			["MOXXIE", "Rick and Morty is better."],
			["BF", "swagshit moneymoney"],
			["GROMIT", ""],
			["GARCELLO", "He fucking dies."],
			["KILLER FISH", "From San Diego."],
			["GLADE", "RGB 0 255 255"],
			["DOG", ""],
			["SKETCH", "A witness of vehicular manslaughter."],
			["PINJ", "i was held at gunpoint to add these palettes please help me"],
			["ETELED", ""],
			["FROZEN", ""],
			["MAJIN", ""],
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
			["HALLOWEEN", "Inverting colors is spooky apparently."],
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
			["2 HP", "Spooky?"],
			["1 HP", "568% vitamin C!"],
			["BANANA", "Apparently still pepper."],
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
var basepal = (sel[1] == "P" or sel[1] == "SP" or sel[1] == "SN" or sel[1] == "G");

if sel[1] != obj_player1.character
	sel[0] = basepal;
else
	sel[0] = obj_player1.paletteselect;

selmin = (sel[1] == "G" ? 1 : 0);
selmax = pal_swap_get_pal_count(spr_palette) - 1;

if !check_shaders()
{
	sel[0] = 0;
	if basepal
		selarray[0] = selarray[1];
}