if other.state == states.gameover exit;

if picked = false
{
	hsp = 0
	vsp =0
	grav = 0
	
if other.object_index = obj_player1
playerid = obj_player1
else
playerid = obj_player2

alarm[0] = 150

y = playerid.y -50
x = playerid.x


with playerid
{

state = states.gottreasure
scr_soundeffect(sfx_secretfound)
global.giantkey = true

}

obj_tv.showtext = true
obj_tv.message = "GOT THE GIANT KEY!!!"
obj_tv.alarm[0] = 200
global.combotime = 60
picked = true
}

