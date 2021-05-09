if instance_exists(baddieID) && baddieID.object_index != obj_pizzaballOLD
{
	instance_destroy()
	instance_destroy(baddieID)
}