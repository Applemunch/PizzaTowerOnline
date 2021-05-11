if instance_exists(baddieID) && other.thrown = true && baddieID.object_index != obj_pizzaballOLD
{
	increase_combo();
	instance_destroy()
	instance_destroy(baddieID)
}