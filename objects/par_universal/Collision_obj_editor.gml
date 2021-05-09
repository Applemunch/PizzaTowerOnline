/// @description 
if room != rm_editor exit;
//if other.x == x && other.y == y {
	if mouse_check_button(mb_right) {
		if image_alpha > 0.5 {
			instance_destroy();
		}
	}
//}