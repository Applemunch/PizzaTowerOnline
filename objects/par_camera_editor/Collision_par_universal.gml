/// @description 
if room == rm_editor && obj_editor.type == 4 {
	if obj_editor.mode != 0
        exit;
	
	if other.object_index == object_index && id > other.id {
		instance_destroy();
	}
}