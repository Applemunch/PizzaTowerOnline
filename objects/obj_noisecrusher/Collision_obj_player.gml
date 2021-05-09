
if invframes = false
{
if state != states.grabbed && obj_player.state != states.boxxedpep && obj_player.state != states.bump
{
with (obj_player)
{



//if  ((state = states._throw) or (state = states.slam) or (state = states.punch) or (state = states.backkick) or (state = states.uppunch) or (state = states.backbreaker)) && other.flying = false
//{ 
   // instance_create(other.x,other.y,obj_bangeffect)
   // if x != other.x
  //  {
  //  other.image_xscale = -sign(other.x - x)
  //  }
  //  other.state = states.rolling
  //  other.stunned = 200
    
    
//}

//Stomp player
if y > other.y && other.vsp > 1 && other.grounded = false && other.state = states.bounce
{
other.caughtplayer = true
}


    //Stomp

if y < other.y  && (attacking = false) && (state = states.jump) && vsp > 0 && sprite_index != spr_player_stompprep
{

if other.helmet = false
{
other.stunned = 200
other.vsp = -5
other.hsp = -other.image_xscale * 3

 other.state = states.stun

other.image_index = 0

}
else
instance_create(x,y+ 50, obj_bumpeffect)

//scr_sound(sound_stomp)
instance_create(x,y+ 50, obj_stompeffect)
image_index = 0
stompAnim = true
sprite_index = spr_player_stompprep
if key_jump2 
vsp = -14
else
vsp = -9
}
//Mach2 Bump
if (state = states.mach2 or state = states.mach3 or state = states.grab) && other.grounded = true && other.state = states.stun
{
global.hit += 1
instance_create(other.x,other.y,obj_slapstar)
instance_create(other.x,other.y,obj_baddiegibs)
other.flash = true
other.hp -= 1

if other.hp <=0
thrown = true

//scr_sound(sound_tackleenemy)

instance_create(x,y,obj_bumpeffect)
other.vsp = -10
other.hsp = xscale
other.image_index = 0
other.stunned = 200
other.state = states.stun
machpunchAnim = true

if !grounded && state != states.freefall && key_jump2
{
sprite_index = spr_player_mach2jump
vsp = -11
}

}

//Bump
if !(y < other.y)  && state != states.bump && state != states.hurt && other.state != states.stun
{
instance_create(x,y,obj_bumpeffect)
            if x != other.x
        {
        xscale = -sign(x - other.x)
        }
            hsp = -xscale * 10
            
    vsp = -4
    image_index = 0
    state = states.bump

    }


}
}


}


