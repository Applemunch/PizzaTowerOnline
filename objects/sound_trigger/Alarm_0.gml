if continuous > 1
    continuous = 0
scr_get_muname(index)

if room == rm_editor
{
    if !selected
        exit;
	
    obj_music_set.music_editor = asset_get_index(name)
    audio_stop_all()
    with obj_music
        alarm[0] = 1
}