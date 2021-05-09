if !instance_exists(boulderID)
with instance_create(x,y,obj_boulder)
 {
image_xscale = other.image_xscale 
other.boulderID = id
 }