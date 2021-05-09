


if floor(image_index) = image_number - 1 && sprite_index = spr_grabbiehand_hifive
{
sprite_index =spr_grabbiehand_idle
thumbingup = false
image_xscale = 1
}

//Fall
    if (x <= xstarte + 6 && x >= xstarte - 6) && (y <= ystarte + 6 && y >= ystarte - 6) && (obj_player.x >(x-50) && obj_player.x <(x+50)) && (obj_player.y > y && obj_player.y < (y + 400)) && thumbingup = false
{
delay --
if delay <= 0
{
//scr_sound(sound_enemythrow)
grav = 0.35
vsp = 10
sprite_index =spr_grabbiehand_fall
delay =5
}
}



//Land and go back up
if grounded && sprite_index = spr_grabbiehand_fall && grabbing = false
{

grav = 0
sprite_index =spr_grabbiehand_idle
vsp = -3
}

//Ready to fall again
if (y <= ystarte + 6 && y >= ystarte - 6) && vsp = -3 && grabbing = false
{
vsp = 0

}






//Move toward drop spot
if sprite_index = spr_grabbiehand_catch && released = false && grabbing = true
{
if dropspotx > x
x += 4

if dropspotx < x
x -= 4

if dropspoty > y
y += 4

if dropspoty < y
y -= 4



}


//Release
if (x <= dropspotx + 5 && x >= dropspotx - 5) && (y <= dropspoty + 5 && y >= dropspoty - 5) && released = false && grabbing = true
{
obj_player.state = states.freefall
image_index = 0
sprite_index =spr_grabbiehand_release
released = true
}





//Come back from release
if sprite_index =spr_grabbiehand_release && floor(image_index) == image_number-1 && released = true && grabbing = true
{
sprite_index = spr_grabbiehand_idle

}


if sprite_index = spr_grabbiehand_idle && released = true && grabbing = true
{
if xstarte > x
x += 4

if xstarte < x
x -= 4

if ystarte > y
y += 4

if ystarte < y
y -= 4

}


//Back to start
if (x <= xstarte + 6 && x >= xstarte - 6) && (y <= ystarte + 6 && y >= ystarte - 6) && grabbing = true && sprite_index = spr_grabbiehand_idle
{
grabbing = false
released = false

}



scr_collide()

