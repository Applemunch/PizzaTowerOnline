dialogue = [
	"..."
]

/*
dialogue = [
	"... How did I get here?",
	"(... who are you?)",
	"..."
]

switch obj_player1.character
{
	case "P":
		dialogue[1] = "(... a guy who looks just\nlike a maniac I know...)";
		break;
	case "N":
		dialogue[1] = "(... is that... me??)";
		break;
	case "V":
		dialogue[1] = "(... nice hat.)";
		break;
	case "S":
		dialogue[1] = "(... why is there a\nporcupine with a hat.)";
		break;
	case "G":
		dialogue[1] = "(... I wonder if they\nlike burgers...)";
		break;
	case "SP":
		dialogue[1] = "You look cancelled.";
		break;
}

func = function()
{
	if con >= 2 && obj_player1.character == "SP"
		room_goto(room_of_dog);
}

donefunc = function()
{
	dialogue = ["..."];
	donefunc = -1;
}