pausedmusic = 0
fadeoff = 0
forcefadeoff = -1
global.music = 0

roomname = obj_null
continuous = false;

ini_open("saveData.ini");
global.musicvolume = ini_read_real("online", "musicvolume", 0.6);
global.mastervolume = ini_read_real("online", "mastervolume", 1);
global.machsound = ini_read_real("online", "machsound", 0);
global.musicgame = ini_read_real("online", "musicgame", 0);
ini_close();

audio_master_gain(global.mastervolume);

wait = false
musicpitch = 1