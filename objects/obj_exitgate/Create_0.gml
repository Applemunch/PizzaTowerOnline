image_speed = 0
hurtpoints=false
timepoints= false
escapetimepoints = false
treasurepoints =false
lastbesttimeminutes = 99
lastbesthurt = 99
lastbesttimeseconds = 99
image_index =1

if room != rm_editor {
	depth = 50
}
endgate = false

roomname = room_get_name(room)
global.progress = string_letters(roomname)

if global.snickchallenge && room != snick_challengeend
	instance_destroy();

if ds_list_find_index(global.saveroom, id) != -1 && !global.panic
	image_index = 0

if check_sugary()
	sprite_index = spr_exitgateSP;