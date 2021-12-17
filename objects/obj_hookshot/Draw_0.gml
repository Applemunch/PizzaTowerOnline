 xDist = obj_player.x - obj_hookshot.x; //Get X distance between both objects 
 yDist = (obj_player.y + 10) - obj_hookshot.y; //Get Y distance between both objects

chainWidth = sprite_get_width(spr_chain); //Your chain sprite here
chainLength = abs(sqrt( sqr(xDist) + sqr(yDist))); //Get the length of the entire chain.
chainAngle = degtorad(point_direction(obj_player.x, (obj_player.y + 10), obj_hookshot.x, obj_hookshot.y)); //get the angle of the chain and convert it from degrees to radians

for(var i = 0; i < chainLength; i += chainWidth) //Run a loop so we draw every chain-segment
{
     // This is the big one. We draw the chain segment at the proper rotated angle, with an x-coordinate multiplied by cos(chainAngle), and a y-coordinate multiplied by sin(chainAngle).
     // They're both multiplied by cos/sin so the chain-segments each appear at the correct x/y coordinates, given by the angle of the chain.
     draw_sprite_ext(spr_chain, 0, obj_player.x + ( cos(chainAngle) * i ) + ( cos(chainAngle) * (chainWidth/2)), ((obj_player.y + 10) - ( sin( chainAngle ) * i )) + (sin( chainAngle ) * (chainWidth/2)), 1, 1, radtodeg(chainAngle), c_white, 1);
}

draw_self()

