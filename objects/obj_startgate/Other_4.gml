/// @description add to pigtotal
ini_open("saveData" + string(global.saveslot) + ".ini");
global.pigtotal += ini_read_real("Highscore", string(level), 0);
ini_close();