


if state != states.grabbed
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






//Stomp
if y < other.y  && (attacking = false) && (state = states.jump) && vsp > 0
{
//scr_sound(sound_stomp)
if vsp > 0
{
other.hp = 0
other.stunned = 200
            if x != other.x
        {
        other.image_xscale = -sign(other.x - x)
        }

image_index = 0

if key_jump2 
{

other.vsp = -5
other.hsp = -other.image_xscale * 3
instance_create(x,y+ 50, obj_stompeffect)
 other.state = states.stun

stompAnim = true
other.image_index = 0
vsp = -14
sprite_index = spr_player_stompprep
}
else
{
other.vsp = -5
other.hsp = -other.image_xscale * 3
instance_create(x,y+ 50, obj_stompeffect)
 other.state = states.stun

stompAnim = true
other.image_index = 0
vsp = -9
sprite_index = spr_player_stompprep
}


}
}



//Stun

    if state = states.mach1 
    {
//scr_sound(sound_tackleenemy)
    instance_create(x,y,obj_bumpeffect)
    other.stunned = 40
                if x != other.x
        {
        other.image_xscale = -sign(other.x - x)
        }
    other.vsp = -5
    other.hsp = -other.image_xscale * 3
    hsp = -xscale * 4
    vsp = -4
    machpunchAnim = true
            if x != other.x
        {
        other.image_xscale = -sign(other.x - x)
        }
    other.state = states.stun
    image_index = 0
    state = states.tackle
    }
    
//Mach2 Bump
if state = states.mach2 && other.grounded = true
{
//scr_sound(sound_tackleenemy)
other.hp = 0
instance_create(x,y,obj_bumpeffect)
other.vsp = -10
other.hsp = xscale
other.image_index = 0
other.stunned = 200
other.state = states.stun

machpunchAnim = true
if !scr_solid(x,y+1) && state != states.freefall 
{
vsp = -10
}
}
    
//Instant Death
   if (attacking = true) && state != states.mach2
    {

    if  state = states.mach3 
    {
    other.shot = true
    }
    
    image_index =0
instance_destroy(other)

machpunchAnim = true
if !scr_solid(x,y+1) && state != states.freefall
{
vsp = -10
}
    }
    
    

//Bump

if attacking = false && (state != states.tackle && state != states.hurt) && !((y < other.y)) && grabbing = false && other.state != states.stun
{
            if x != other.x
        {
                other.image_xscale = -sign(other.x - x)
        xscale = -sign(x - other.x)
        }
            hsp = -xscale * 4
    vsp = -4
        other.image_xscale = -xscale
        other.hsp = -other.image_xscale * 4
        other.vsp = -4
        if other.state = states.walk or other.state = states.turn
    other.state = states.idle
    image_index = 0
    state = states.bump
    if other.state = states.land
    other.state = states.idle

}
    


}
}



