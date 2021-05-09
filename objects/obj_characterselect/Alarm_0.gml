with instance_create(x,y,obj_fadeout)
{
obj_player1.targetRoom = hub_room1
obj_player1.state = states.normal
if global.coop = true
obj_player2.state = states.normal
}