if other.state == states.hitlag or other.state == states.parry or place_meeting(x, y, obj_parryhitbox)
	exit;

if !(other.state == states.knightpep or other.state == states.knightpepattack or other.state == states.knightpepslopes)
{
	if other.character == "V"
		scr_hurtplayer(other)
	else
	{
		other.xscale = image_xscale
		other.hsp = hsp
		other.vsp = vsp
		other.x = x
		other.y = y
		other.state = states.cheeseball
		other.image_speed = 0.35
		other.sprite_index = other.spr_cheeseballed
		
		tv_push_prompt_once(tv_create_prompt("This is the cheeseball transformation text", 2, spr_tv_cheeseball, 3), "cheeseball");
	}
}
instance_destroy()