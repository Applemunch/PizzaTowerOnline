with other
{
	if instance_exists(baddieID) && baddieID.state != states.grabbed && baddieID.object_index != obj_pizzaballOLD
	{
	if other.playerid = obj_player1
baddieID.grabbedby = 1
if other.playerid = obj_player2
baddieID.grabbedby = 2
instance_destroy()

instance_destroy(baddieID)
}
}