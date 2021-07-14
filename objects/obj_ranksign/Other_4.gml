ini_open("saveData" + string(global.saveslot) + ".ini");
rank = ini_read_string("Ranks",string(levelsign),"none");
ini_close();