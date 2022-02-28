if alarm[1] <= 1 && alarm[1] != -1 && !instance_exists(obj_gms) && (!variable_global_exists("logged") or global.logged == false)
	instance_create_depth(0, 0, 0, obj_gms);

if instance_exists(obj_gms)
	depth = obj_gms.depth - 2;
