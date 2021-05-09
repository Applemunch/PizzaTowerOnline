//Throw Collision
if instance_exists(other.baddieID)
{
with (other)
{

             if (baddieID.state = states.stun && baddieID.hsp != 0 && baddieID.thrown = true) && other.state != states.stun  or (baddieID.state = states.grabbed && obj_player.state = states.superslam) 
{
   other.state = states.stun
    instance_create(other.x,other.y,obj_slapstar)
instance_create(other.x,other.y,obj_baddiegibs)
other.flash = true

        global.hit += 1
//    scr_sound(sound_tackleenemy)
    instance_create(x,y,obj_bumpeffect)
     other.stunned = 200
         other.vsp = -5
    other.hsp = -other.image_xscale * 3

}
 }
 }
 

