if room == rm_editor exit;


//Go foward
hsp = image_xscale * movespeed

//Bounce
if grounded && vsp > 0
vsp = -5

//Turn off wall
if scr_solid(x+hsp,y)
{
image_xscale *= -1
movespeed = 2

}

//Flash
if flash && alarm[2] <= 0
    alarm[2] = 0.05 * room_speed;

//Create hitbox
if hitboxcreate = false
with instance_create(x,y,obj_forkhitbox)
{
ID = other.id
image_xscale = other.image_xscale
sprite_index = other.sprite_index
mask_index = other.mask_index
other.hitboxcreate = true
}

//Augment speed
if movespeed < 6
movespeed += 0.1

scr_collide()