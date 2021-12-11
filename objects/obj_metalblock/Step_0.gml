with obj_player1
{
	if character != "V"
	if (place_meeting(x+hsp,y,other) or place_meeting(x+xscale,y,other)) && ( obj_player1.state = states.mach3 or obj_player1.state = states.knightpepslopes) 
		instance_destroy(other);
}

if place_meeting(x,y+1,obj_player1) or place_meeting(x,y-1,obj_player1) or place_meeting(x-1,y,obj_player1) or place_meeting(x+1,y,obj_player1)
{
	if place_meeting(x,y-1,obj_player1) && (obj_player1.state = states.freefall && obj_player1.freefallsmash >= 10) && room != etb_7
		instance_destroy();
	
	if place_meeting(x,y-1,obj_player1) && (obj_player1.state = states.knightpep or obj_player1.state = states.hookshot)
	{
		instance_destroy();
		tile_layer_delete_at(1, x, y);
	}
}