with other
{
	if instance_exists(baddieID) && baddieID.state != states.grabbed && baddieID.object_index != obj_pizzaballOLD
	{
		baddieID.grabbedby = 1
		increase_combo();
		
		instance_destroy()
		instance_destroy(baddieID)
	}
}