if instance_exists(other.baddieID)
{
	if other.baddieID.object_index != obj_pizzaballOLD
	{
		increase_combo();
		instance_destroy(other.baddieID);
	}
}