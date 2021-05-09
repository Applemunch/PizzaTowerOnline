if floor(image_index) = 53 && !instance_exists(obj_noisebomb)
{
	global.minutes = 1
	global.seconds = 40
	with obj_camera
		alarm[1] = 1

	if !audio_is_playing(sfx_enemyprojectile)
		scr_soundeffect(sfx_enemyprojectile)


	global.miniboss = true
	instance_create(x+50,y-50,obj_noisebomb)	

}

if floor(image_index) = 31
if !audio_is_playing(sfx_noisewoah)
	scr_soundeffect(sfx_noisewoah)

scr_collide()

if grounded && dust = false
{
	dust = true	
	instance_create(x,y,obj_landcloud)
}