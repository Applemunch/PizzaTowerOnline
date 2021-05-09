/// @description 
content = obj_pizzakinshroom;
image_speed = 0;
image_index = 0;

if instance_number(obj_pizzabox) > 5 {
	instance_destroy();
}

alarm[0] = 1;