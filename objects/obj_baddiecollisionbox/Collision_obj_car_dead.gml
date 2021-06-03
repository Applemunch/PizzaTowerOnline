if instance_exists(other.baddieID) && other.thrown
{
	if other.baddieID.object_index != obj_pizzaballOLD
	{
		instance_destroy();
		instance_destroy(other.baddieID);
	}
}