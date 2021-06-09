if other.object_index == obj_spitcheesespike or other.object_index == obj_banditochicken_projectile or other.object_index == obj_robotknife
{
    with other.id
    {
        var current_hspd = abs(hsp) * 1.5;
        var _dir = sign(hsp);
        if x != other.x
            _dir = sign(x - other.x);
        hsp = _dir * current_hspd;
		
		if object_index == obj_robotknife
		{
			image_xscale *= -1;
			parry = true;
		}
    }
}
else if other.object_index == obj_noisegoblin_arrow
{
    with other.id
    {
        current_hspd = abs(speed);
        _dir = sign(speed);
		
        if (direction < 90 or direction > 270) && x < other.x
		or (direction > 90 or direction < 270) && x > other.x
            _dir = -1;
		
        speed = _dir * speed * 1.5;
		parry = true;
		
		image_angle += 180;
    }
}
else if other.object_index == obj_pizzacutter2
{
	with other.ID
		dir = -dir;
}
else if other.object_index == obj_movingoutlet
{
	with other.id
	{
		hsp = 4 * obj_player1.xscale
		
		if y > other.y
			vsp = 4
		else
			vsp = -4;
	}
}
else if other.object_index == obj_forkhitbox
{
	with other.id
	{
		if instance_exists(ID) && ID.object_index == obj_weeniesquire
		{
			instance_destroy(ID);
			instance_destroy();
		}
	}
}

if !collisioned
    event_user(0);