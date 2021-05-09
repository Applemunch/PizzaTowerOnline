if check_bysync() == false && sync == false
{
	if (!(playerid.state = states.jump  &&  playerid.sprite_index = spr_playerN_noisebombspinjump) && playerid.pizzapepper = 0 && playerid.sprite_index != playerid.spr_barrelroll && playerid.state != states.punch && playerid.state != states.rideweenie && playerid.state != states.crouchslide && playerid.state != states.grabbed && playerid.pogochargeactive = false  && playerid.state != states.tacklecharge && playerid.state != states.mach3 && playerid.state != states.climbwall && playerid.state != states.hookshot && playerid.state != states.charge && playerid.state != states.mach2 && playerid.state != states.handstandjump && playerid.state != states.machslide &&playerid.state != states.slam && playerid.state != states.mach4 && playerid.state != states.machfreefall && playerid.state != states.superslam && playerid.state != states.machroll && playerid.state != states.chainsaw && playerid.state != states.Sjump && playerid.state != states.parry)
		instance_destroy()

	visible = playerid.visible
	depth = playerid.depth + 1
}