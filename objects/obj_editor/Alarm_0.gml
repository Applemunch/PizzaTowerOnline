

/// @description 
with obj_editor_button {
	if func > 0 && func != 3 && func != 4 {
		instance_destroy();
	}
}

if phase != 1 {
	exit;
}

for (var i = 0; i < 6; i++) {
	with instance_create_layer(32, (32+64) +(24*i), "Buttons", obj_editor_button) {
		func = 2;
		index = i;
		if index == other.type {
			selected = true;
		}
		sprite_index = spr_tab;
		switch(i) {
			case 0:
				name = "Scenery"
				break;
			case 1:
				name = "Enemies"
				break;
			case 2:
				name = "Transform"
				break;
			case 3:
				name = "Tiles"
				break;
			case 4:
				name = "Cameras"
				break;
			case 5:
				name = "Triggers"
				break;
		}
	}
}

l = 0;
j = 0;

for(var i = 0; i <= max_obj[type]; i++) {
	var obj = obj_index[type, i];
	if l > 6 {
		j++;
		l = 0;
	}
	
	with instance_create_layer((96) +(32*l), (32+64) + (32*j), "Buttons", obj_editor_button) {
		func = 1;
		index = i;
		sprite_index = spr_blank;
		spr = object_get_sprite(obj);
		name = object_get_name(obj);
	}
	l++;
}