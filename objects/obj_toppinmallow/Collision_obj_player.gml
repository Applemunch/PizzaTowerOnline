if room == rm_editor exit;

if other.state != states.hurt && !global.shroomfollow
{
	global.combotime = 60
	global.style += 10
	ds_list_add(global.saveroom, id) 
	if global.toppintotal < 5
		obj_tv.message = "YOU NEED " + string(5 - global.toppintotal) + " MORE CONFECTI!"
	else
		obj_tv.message = "YOU HAVE ALL CONFECTI!"
	
	obj_tv.showtext = true
	obj_tv.alarm[0] = 150
	global.toppintotal += 1

	global.shroomfollow = true
	panic = false
}