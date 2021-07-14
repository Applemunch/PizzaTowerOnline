dialogue = [
	"Hey,^1 uhhhhhh...",
	"Do you know when the food will be ready?",
	"My 'friend' is getting tired of waiting."
];

if obj_player1.character == "V" && obj_player1.paletteselect == 12 // vigileche
	dialogue = ["You look funny."];
else if obj_player1.character == "G" && obj_player1.paletteselect == 9 // leith
{
	dialogue = [
		"...",
		"I'll pretend this is another one of those parallel universe things."
	]
}
else donefunc = function()
{
	// when dialogue is done
	dialogue = [
		"So?"
	];
}