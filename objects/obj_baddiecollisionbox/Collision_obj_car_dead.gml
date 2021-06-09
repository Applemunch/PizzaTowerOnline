if instance_exists(baddieID) && other.thrown
{
	if baddieID.object_index != obj_pizzaballOLD
		instance_destroy(baddieID);
}