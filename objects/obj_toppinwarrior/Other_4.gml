visible = true
global.toppinwarriorattackcountdown = 1000

if room = rank_room
	instance_destroy(id, false)

ds_queue_clear(followQueue);