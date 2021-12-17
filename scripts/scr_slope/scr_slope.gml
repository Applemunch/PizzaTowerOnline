/// @description Check if object is standing on a slope
function scr_slope(xx = x, yy = y + 1) 
{
	var xold = x, yold = y;
	
	x = xx;
	y = yy;
	
	var slope = instance_place(x, y, obj_slope)
	if slope {
		with slope {
			var object_side = 0
			var slope_start = 0
			var slope_end = 0
			
			if image_xscale > 0 {
				// Slope is facing /|
				object_side = other.bbox_right
				slope_start = bbox_bottom
				slope_end = bbox_top
			} else {
				// Slope is facing |\
				object_side = other.bbox_left
				slope_start = bbox_top
				slope_end = bbox_bottom
			}
		
			// Calculate steepness of slope
			var m = sign(image_xscale) * (bbox_bottom - bbox_top) / (bbox_right - bbox_left)
			var slope = slope_start - round(m * (object_side - bbox_left))
		
			if (other.bbox_bottom >= slope) {
				// Object is inside slope
				other.y--
				return true
			}
		}
	}

	x = xold;
	y = yold;
	
	return false;
}
