sprite_index = spr_knightpepthunder
scr_soundeffect(sfx_becomeknight)
instance_destroy(other)
image_index = 0
with obj_camera
{
    shake_mag = 10;
    shake_mag_acc= 30 / room_speed;
}