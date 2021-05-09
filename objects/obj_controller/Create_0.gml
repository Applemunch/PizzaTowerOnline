/// @description literal "controller" support
global.cont = 0;
connected = false;
othergamepad = ds_list_create();

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++)
{
	if gamepad_is_connected(i)
	{
		global.cont = i;
		connected = true;
		break;
	}
}

function GamepadSetVibration(left, right, dec)
{
	
}