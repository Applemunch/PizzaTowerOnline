ini_open("saveData.ini")
/*
snickshotgun = ini_read_string("SAGE2019","shotgunsnick",false);
dungeonbackup = ini_read_string("SAGE2019","dungeonbackup",false);
srank = ini_read_string("SAGE2019","srank",false);
snicksrank = ini_read_string("SAGE2019","snicksrank",false);
combo10 = ini_read_string("SAGE2019","combo10",false);
secret = ini_read_string("SAGE2019","secret",false);
knight = ini_read_string("SAGE2019","knight",false);
toppin = ini_read_string("SAGE2019","toppin",false);
treasure = ini_read_string("SAGE2019","treasure",false);
*/
funny = ini_read_real("online", "funny", false);
ini_close()

if funny
	instance_destroy()


picy = 640
up = false
sprite = bg_SAGEcombo10
depth = -9999