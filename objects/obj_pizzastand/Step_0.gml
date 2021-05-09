if place_meeting(x,y-1,obj_player) && (obj_player.x>=(x-10) && obj_player.x<=(x+10)) 
&& (global.shroomfollow = true or
global.cheesefollow = true or
global.tomatofollow = true or
global.sausagefollow = true or
global.pineapplefollow = true)
{
obj_player.state = states.pizzathrow
}

