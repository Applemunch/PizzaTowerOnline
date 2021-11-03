var char = instance_exists(obj_player1) ? obj_player1.character : "P";
switch char
{
	default:
	case "P":
	case "SP":
		image_index = 0;
		break;
	case "N":
		image_index = 1;
		break;
	case "V":
		image_index = 2;
		break;
	case "S":
		image_index = 3;
		break;
	case "M":
		image_index = 4;
		break;
}