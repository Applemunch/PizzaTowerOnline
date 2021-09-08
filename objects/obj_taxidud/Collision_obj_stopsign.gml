if !instance_exists(playerid)
	exit

if playerid.state == states.taxi
{
	with playerid
	{
		instance_create(x, y, obj_genericpoofeffect)
		scr_soundeffect(sfx_taxi1)
		state = states.normal
		
		cutscene = false
		visible = true
	}
}