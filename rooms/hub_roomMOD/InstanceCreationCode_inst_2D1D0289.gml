dialogue = [
	"Who the Fuck are You",
	"Anyways, welcome to this horrible place.",
	"There's arcade machines you can play on.",
];

switch obj_player1.character
{
	case "P":
	case "N":
		dialogue[0] = "Huh, the average pizzaman. Mustache, hat, ugly face...";
		break;
	case "V":
		dialogue[0] = "Ew, cheese. Western cheese.";
		dialogue[1] = "Just kidding. Welcome to this horrible place.";
		break;
	case "S":
		dialogue[0] = "OMG SNICK DA PORCUPINE FROM THE HIT\nGAME PIZZA TOWER SAGE DEMO 2019!!!!!!!!!!!!!!";
		break;
	case "G":
		dialogue = ["Ew, blue blood. Stay away from me."];
		break;
	case "SP":
		dialogue[0] = "Hey Willy Wonkers.";
		dialogue[1] = "Welcome to this horrible place.";
		break;
}