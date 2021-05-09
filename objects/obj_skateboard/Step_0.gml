if (vsp < 30) vsp += grav;

if hsp = 0
image_speed = 0
else
image_speed = 0.35

        //Bump
    if scr_solid(x+1,y) or  scr_solid(x-1,y)
    {
instance_destroy()
instance_create(x,y+10,obj_skateboarddebris1)
instance_create(x,y+10,obj_skateboarddebris2)
    }



scr_collide()

