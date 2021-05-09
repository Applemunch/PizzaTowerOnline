if state != states.grabbed && state != states.hit
&& other.object_index != obj_enemyblock
&& ((object_get_parent(other.object_index) != obj_destructibles
&& object_get_parent(other.object_index) != obj_bigdestructibles)
or (other.object_index == obj_onwaybigblock && sign(other.image_xscale) == -sign(image_xscale)))
	instance_destroy();