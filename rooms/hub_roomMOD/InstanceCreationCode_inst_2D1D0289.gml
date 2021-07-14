dialogue = [
	"Who^2 the Fuck^2 are You",
	"Anyways,^1 welcome to this horrible place.",
	"There's arcade machines you can play on.",
];

switch obj_player1.character
{
	case "P":
	case "N":
		dialogue[0] = "Huh,^1 the average pizzaman.^2 Mustache, hat, ugly face...";
		break;
	case "V":
		dialogue[0] = "Ew, cheese.^2 Western cheese.";
		dialogue[1] = "Just kidding.^2 Welcome to this horrible place.";
		break;
	case "S":
		dialogue[0] = "OMG SNICK DA PORCUPINE FROM THE HIT GAME PIZZA TOWER SAGE DEMO 2019!!!!!!!!!!!!!!";
		break;
	case "G":
		dialogue = ["Ew, blue blood.^1Stay away from me."];
		break;
	case "SP":
		dialogue[0] = "Hey Willy Wonkers.";
		dialogue[1] = "Welcome to this horrible place.";
		break;
}