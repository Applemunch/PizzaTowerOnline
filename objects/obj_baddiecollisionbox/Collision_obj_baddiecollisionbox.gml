//Throw Collision
if instance_exists(baddieID) && instance_exists(other.baddieID)
&& baddieID.state != states.grabbed && baddieID.object_index != obj_pizzaballOLD
{
	with (other)
	{
		if baddieID != other.baddieID && id != other.id && other.baddieID.killbyenemy
		{
		    if baddieID.state == states.stun && baddieID.thrown
			{
				increase_combo();
				instance_destroy(other.baddieID);
			}
		}
	}
}