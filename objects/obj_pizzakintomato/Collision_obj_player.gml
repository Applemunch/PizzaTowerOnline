if room == rm_editor exit;


if obj_player.state != states.hurt && global.tomatofollow = false
{
		global.combotime = 60
global.style += 10
ds_list_add(global.saveroom, id) 
if global.toppintotal < 5
obj_tv.message = ("YOU NEED "+ string(5 - global.toppintotal) +" MORE TOPPINS!")
if global.toppintotal = 5
obj_tv.message = ("YOU HAVE ALL TOPPINS!")
obj_tv.showtext = true
obj_tv.alarm[0] = 150
global.toppintotal += 1

global.tomatofollow = true
panic = false

}



