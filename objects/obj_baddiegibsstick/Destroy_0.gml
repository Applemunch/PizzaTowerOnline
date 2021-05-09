if storedx != noone && storedy != noone
{
    if !ds_list_empty(global.baddietomb)
    {
		for(var i = 0; i < ds_list_size(global.baddietomb); i++)
		{
			var arr = ds_list_find_value(global.baddietomb, i);
            var tombRoom = arr[0];
            var X = arr[1];
            var Y = arr[2];
			
            if tombRoom == room && X == storedx && Y == storedy
			{
                ds_list_delete(global.baddietomb, i);
				break;
			}
		}
    }
}