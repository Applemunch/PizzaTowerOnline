/// @description pigtotal, level name
ini_open("saveData" + string(global.saveslot) + ".ini");
global.pigtotal += ini_read_real("Highscore", string(level), 0);
ini_close();

// lname
var _msg = lang_string("msg.level." + level);
if !string_startswith(_msg, "msg.level.")
	msg = _msg;