if other.sync && !collisioned
{
	with other
	{
		image_xscale *= -1;
		spd += sign(spd);
		spdh += sign(spdh);
		spd *= -1;
		spdh *= -1;
		
		gms_instance_set(id, "rebound", true);
	}
    event_user(0);
}