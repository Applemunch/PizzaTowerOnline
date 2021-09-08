if other.state == states.gameover
	exit;

instance_create(x, y, obj_balloonpop);
other.vsp = -14;
other.jumpstop = true;

visible = false;
x = -9999;
y = -9999;
respawn = 100;

if other.state == states.climbwall
	other.state = states.jump;
if other.state == states.jump
	other.sprite_index = other.spr_machfreefall;