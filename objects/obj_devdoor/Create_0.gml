if !debug
	instance_destroy();

depth = -20000;
open = false;
sel = 0;
actions = [];

function devdoor_addaction(name, meth) {
	array_push(actions, [name, meth]);
}

// actions
devdoor_addaction("goto rm_deltarune", function() {
	goto = rm_deltarune;
});
devdoor_addaction("goto PP_room1_fake", function() 
{
	goto = PP_room1_fake;
	with obj_player
		canfall = false;
});
goto = -1;
targetDoor = "A";
