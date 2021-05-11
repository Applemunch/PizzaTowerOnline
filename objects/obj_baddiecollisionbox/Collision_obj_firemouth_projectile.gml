if instance_exists(baddieID) && baddieID.object_index != obj_pizzaballOLD
{
	increase_combo();
	instance_destroy()
	instance_destroy(baddieID)
}