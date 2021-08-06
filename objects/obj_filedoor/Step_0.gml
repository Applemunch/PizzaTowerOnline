if visited = true && sprite_index != spr_pepperdoor
sprite_index = spr_doorvisited

if instance_exists(obj_noisesatellite)
sprite_index = spr_doorblocked

/*
if alarm[3] <= 1 && alarm[3] != -1 && !instance_exists(obj_gms) && (!variable_global_exists("logged") or global.logged == false)
	instance_create_depth(0, 0, 0, obj_gms);