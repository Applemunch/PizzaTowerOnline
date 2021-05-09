if room == rm_editor exit;
if  ds_list_find_index(global.saveroom, id) = -1
{
repeat (6) with instance_create(x + (image_xscale * 16),y+32,obj_debris)
sprite_index = spr_bigdebris


if audio_is_playing(sfx_breakblock1) or audio_is_playing(sfx_breakblock2)
{
audio_stop_sound(sfx_breakblock1)
audio_stop_sound(sfx_breakblock2) 
}
scr_soundeffect(sfx_breakblock1, sfx_breakblock2)
ds_list_add(global.saveroom, id) 


}

with instance_place(x + (-image_xscale * 32),y,obj_solid)
instance_destroy()

