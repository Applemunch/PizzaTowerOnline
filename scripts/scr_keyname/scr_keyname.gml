///string_keycheck(key);
function scr_keyname(argument0)
{
	//Checks the given key and returns it as a string. Also detects vk_constants.

	// vk_constants
	//Left
	if argument0 = (vk_left)
	{
	    return "LEFT";
	}

	//Right
	if argument0 = (vk_right)
	{
	    return "RIGHT";
	}

	//Up
	if argument0 = (vk_up)
	{
	    return "UP";
	}

	//Down
	if argument0 = (vk_down)
	{
	    return "DOWN";
	}

	//Enter
	if argument0 = (vk_enter)
	{
	    return "ENTER";
	}

	//Escape
	if argument0 = (vk_escape)
	{
	    return "ESCAPE";
	}

	//Space
	if argument0 = (vk_space)
	{
	    return "SPACE";
	}

	//Shift
	if argument0 = (vk_shift)
	{
	    return "SHIFT";
	}

	//Control
	if argument0 = (vk_control)
	{
	    return "CONTROL";
	}

	//Alt
	if argument0 = (vk_alt)
	{
	    return "ALT";
	}

	//Backspace
	if argument0 = (vk_backspace)
	{
	    return "BACKSPACE";
	}

	//Tab
	if argument0 = (vk_tab)
	{
	    return "TAB";
	}

	//Home
	if argument0 = (vk_home)
	{
	    return "HOME";
	}

	//End
	if argument0 = (vk_end)
	{
	    return "END";
	}

	//Delete
	if argument0 = (vk_delete)
	{
	    return "DELETE";
	}

	//Insert
	if argument0 = (vk_insert)
	{
	    return "INSERT";
	}

	//Page Up
	if argument0 = (vk_pageup)
	{
	    return "PAGE UP";
	}

	//Page Down
	if argument0 = (vk_pagedown)
	{
	    return "PAGE DOWN";
	}

	//Pause
	if argument0 = (vk_pause)
	{
	    return "PAUSE";
	}

	//Printscreen
	if argument0 = (vk_printscreen)
	{
	    return "PRINTSCREEN";
	}

	//F1
	if argument0 = (vk_f1)
	{
	    return "F1";
	}

	//F2
	if argument0 = (vk_f2)
	{
	    return "F2";
	}

	//F3
	if argument0 = (vk_f3)
	{
	    return "F3";
	}

	//F4
	if argument0 = (vk_f4)
	{
	    return "F4";
	}

	//F5
	if argument0 = (vk_f5)
	{
	    return "F5";
	}

	//F6
	if argument0 = (vk_f6)
	{
	    return "F6";
	}

	//F7
	if argument0 = (vk_f7)
	{
	    return "F7";
	}

	//F8
	if argument0 = (vk_f8)
	{
	    return "F8";
	}

	//F9
	if argument0 = (vk_f9)
	{
	    return "F9";
	}

	//F10
	if argument0 = (vk_f10)
	{
	    return "F10";
	}

	//F11
	if argument0 = (vk_f11)
	{
	    return "F11";
	}

	//F12
	if argument0 = (vk_f12)
	{
	    return "F12";
	}

	//Numpad 0
	if argument0 = (vk_numpad0)
	{
	    return "NUMPAD 0";
	}

	//Numpad 1
	if argument0 = (vk_numpad1)
	{
	    return "NUMPAD 1";
	}

	//Numpad 2
	if argument0 = (vk_numpad2)
	{
	    return "NUMPAD 2";
	}

	//Numpad 3
	if argument0 = (vk_numpad3)
	{
	    return "NUMPAD 3";
	}

	//Numpad 4
	if argument0 = (vk_numpad4)
	{
	    return "NUMPAD 4";
	}

	//Numpad 5
	if argument0 = (vk_numpad5)
	{
	    return "NUMPAD 5";
	}

	//Numpad 6
	if argument0 = (vk_numpad6)
	{
	    return "NUMPAD 6";
	}

	//Numpad 7
	if argument0 = (vk_numpad7)
	{
	    return "NUMPAD 7";
	}

	//Numpad 8
	if argument0 = (vk_numpad8)
	{
	    return "NUMPAD 8";
	}

	//Numpad 9
	if argument0 = (vk_numpad9)
	{
	    return "NUMPAD 9";
	}

	//Multiply
	if argument0 = (vk_multiply)
	{
	    return "MULTIPLY";
	}

	//Divide
	if argument0 = (vk_divide)
	{
	    return "DIVIDE";
	}

	//Add
	if argument0 = (vk_add)
	{
	    return "ADD";
	}

	//Subtract
	if argument0 = (vk_subtract)
	{
	    return "SUBSTRACT";
	}

	//Decimal
	if argument0 = (vk_decimal)
	{
	    return "DECIMAL";
	}

	if argument0 = (-1)
	{
		return "PRESS KEY";
	}

	// Printable characters.
	return chr(argument0);


}
