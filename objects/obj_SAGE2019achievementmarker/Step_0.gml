
if picy = 640
{
	/*
if snickshotgun = false && global.SAGEshotgunsnick = true
{
	up = true
	sprite = bg_SAGEsnickshotgun
	snickshotgun = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
	
}

else if dungeonbackup = false && global.SAGEdungeonbackup = true
{
	up = true
	sprite = bg_SAGEdungeonbackup
	dungeonbackup = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if srank = false && global.SAGEsrank = true
{
	up = true
	sprite = bg_SAGEsrank
	srank = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if snicksrank = false && global.SAGEsnicksrank = true
{
	up = true
	sprite = bg_SAGEsnicksrank
	snicksrank = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if combo10  = false && global.SAGEcombo10  = true
{
	up = true
	sprite = bg_SAGEcombo10 
	combo10  = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if secret  = false && global.SAGEsecret  = true
{
	up = true
	sprite = bg_SAGEsecret 
	secret  = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if knight  = false && global.SAGEknight  = true
{
	up = true
	sprite = bg_SAGEknight 
	knight  = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if toppin  = false && global.SAGEtoppin  = true
{
	up = true
	sprite = bg_SAGEtoppin 
	toppin  = true
	alarm[0] = 250
		scr_soundeffect(sfx_collectgiantpizza)
}

else if treasure  = false && global.SAGEtreasure  = true
{
	up = true
	sprite = bg_SAGEtreasure
	treasure  = true
	alarm[0] = 250
	scr_soundeffect(sfx_collectgiantpizza)
}
*/

if !funny && instance_exists(obj_ranksign)
	ini_open("saveData.ini")

if !funny && instance_exists(obj_ranksign) &&
((ini_read_string("Ranks","medieval","none") == "a" && ini_read_string("Ranks","ruin","none") == "s" && ini_read_string("Ranks","dungeon","none") == "s")
or (ini_read_string("Ranks","entrance","none") == "a" && ini_read_string("Ranks","medieval","none") == "s" && ini_read_string("Ranks","ruin","none") == "s"))
{
	up = true
	sprite = bg_SAGEsrank
	funny = true
	alarm[0] = 250
	ini_write_real("online", "funny", true)
	
	scr_soundeffect(sfx_collectgiantpizza)
	ini_close();
}

if !funny && instance_exists(obj_ranksign)
	ini_close();
}

if picy = 300
{
up = false

}

if up = true
picy -= 10
