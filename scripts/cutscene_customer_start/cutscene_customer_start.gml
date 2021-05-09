function cutscene_customer_start(argument0) {
	var player = argument0
	with player
	{
	    hsp = 0
	    state = states.actor
	    var customerdoor = instance_nearest(x, y, obj_gnomecustomer)
	    if customerdoor.x != x
	        xscale = -sign(x - customerdoor.x)
	}
	cutscene_end_action()


}
