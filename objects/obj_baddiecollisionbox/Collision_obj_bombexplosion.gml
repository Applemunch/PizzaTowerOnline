if instance_exists(baddieID)
{
	if baddieID.state != states.grabbed && baddieID.state != states.stun
	with baddieID
	{
		state = states.stun	
		stunned = 150
		vsp = -5
	}
}