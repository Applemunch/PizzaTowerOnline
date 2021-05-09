if instance_exists(baddieID) && other.thrown = true
{
	instance_destroy(other)
	if baddieID.object_index != obj_pizzaballOLD
	{
		instance_destroy()
		instance_destroy(baddieID)
	}
}