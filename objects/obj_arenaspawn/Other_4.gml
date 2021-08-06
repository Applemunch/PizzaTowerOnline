if ds_list_find_index(global.saveroom, id) != -1
{
    instance_destroy();
    state = states.victory;
}
else
{
    with obj_baddie
    {
		/*
        if arena
        {
            ds_list_add(other.baddielist, [wave, id])
            if wave > other.maxwave
                other.maxwave = wave;
            instance_deactivate_object(id);
        }
		*/
		
		var lname = string(layer_get_name(arenalayer));
		if string_startswith(lname, "Round")
		{
			// parse wave
			var wave = string_digits(lname);
			if string_isnumber(wave)
				wave = real(wave);
			else
				wave = 1;
			
			// add to baddie list
			ds_list_add(other.baddielist, [wave, id])
            if wave > other.maxwave
                other.maxwave = wave;
			
			boundbox = false;
			visible = false;
			instance_deactivate_object(id);
		}
    }
}