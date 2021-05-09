if current_arr > array_length_1d(content_arr) - 1
{
	ds_map_destroy(content_var);
    exit;
}

var _content = content_arr[current_arr]
if object_exists(_content)
{
	var _hsp = 0

	if current_arr % 2 == 0
	    _hsp = 2
	else
	    _hsp = -2

	with instance_create(x, y, _content)
	{
	    depth = other.depth - 1
	    vsp = -8
	    hsp = _hsp
	
		if ds_map_size(other.content_var) != 0
		{
			var var_curr = ds_map_find_first(other.content_var);
			repeat ds_map_size(other.content_var)
			{
				variable_instance_set(self, var_curr, ds_map_find_value(other.content_var, var_curr));	
				var_curr = ds_map_find_next(other.content_var, var_curr);
			}
		}
	}
}

current_arr++
alarm[0] = count