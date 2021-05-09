//Throw Collision
if instance_exists(baddieID) && instance_exists(other.baddieID)
&& baddieID.state != states.grabbed && baddieID.object_index != obj_pizzaballOLD
{
	with (other)
	{
		if baddieID != other.id && other.baddieID.killbyenemy
		{
		    if baddieID.state == states.stun && baddieID.thrown
				instance_destroy(other.baddieID)
		}
	}
}