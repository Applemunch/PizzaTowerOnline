var act = ((action == NREM || action == NRES || action == NMOV) ? 1 : 0);
if (act == 0 && scr_stylecheck(0))
or (act == 1 && !scr_stylecheck(0))
{
	switch action
	{
		case NREM:
		case OREM:
			with all
			{
				if id != other.id && place_meeting(x, y, other)
					instance_destroy(id, false);
			}
			break;
	
		case NRES:
		case ORES:
			with all
			{
				if id != other.id && place_meeting(x, y, other)
				{
					var sizx = image_xscale;
					var sizy = image_yscale;
					
					if !is_undefined(other.sizx)
						sizx = other.sizx;
					if !is_undefined(other.sizy)
						sizy = other.sizy;
					
					image_xscale = sizx;
					image_yscale = sizy;
				}
			}
			break;
	
		case NMOV:
		case OMOV:
			with all
			{
				if id != other.id && place_meeting(x, y, other)
				{
					var xx = x;
					var yy = y;
					
					if !is_undefined(other.xx)
						xx = other.xx;
					if !is_undefined(other.yy)
						yy = other.yy;
					
					x = xx;
					y = yy;
				}
			}
			break;
	}
}

instance_destroy();