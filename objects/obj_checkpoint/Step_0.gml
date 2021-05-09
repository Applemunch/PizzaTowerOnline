if (place_meeting(x, y, obj_player) && (sprite_index == spr_checkpoint))
{
    sprite_index = spr_checkpoint_activating
    image_index = 0
    with (obj_tv)
    {
        image_speed = 0.25
        message = "CHECKPOINT!"
        alarm[0] = 200
        showtext = true
        tvsprite = spr_tvclap
    }
}
if ((floor(image_index) == (image_number - 1)) && (sprite_index == spr_checkpoint_activating))
    sprite_index = spr_checkpoint_activated