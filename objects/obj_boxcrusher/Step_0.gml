


//Fall
if y = ystart && (obj_player1.x >(x-50) && obj_player1.x <(x+50)) && (obj_player1.y > y && obj_player1.y < (y + 200))
{
scr_soundeffect(sfx_enemyprojectile)
grav = 0.35
vsp = 10
sprite_index =spr_boxcrusher_fall
}
//Land and go back up
if grounded && sprite_index = spr_boxcrusher_fall
{
	scr_soundeffect(sfx_groundpound)
            with (obj_camera) {

    shake_mag=10;
    shake_mag_acc=30/room_speed;
}
vsp = 0
image_index = 0
sprite_index = spr_boxcrusher_land
}


if sprite_index = spr_boxcrusher_land && floor(image_index) = image_number -1
{
grav = 0
sprite_index =spr_boxcrusher_idle
vsp = -1
}

if y == ystart && vsp = -1
{
vsp = 0
}

scr_collide()

