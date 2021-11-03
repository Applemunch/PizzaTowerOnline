if (instance_number(obj_dw_transition) > 1)
    instance_destroy()

room_speed = 30;

depth = -10010;
con = 8
timer = 0
index = 0
sus_v = 0
sus_f = 0
dz = 1

kris_x = 134 + camera_get_view_x(view_camera[0])
kris_y = 94 + camera_get_view_y(view_camera[0])
sus_x = 162 + camera_get_view_x(view_camera[0])
sus_y = 86 + camera_get_view_y(view_camera[0])

sus_draw = 1
sus_sprite = 0
sus_index = 0
kris_only = 0
finaly = (422 - 196) / 2
image_alpha = 0.9
linecon = 0
linetimer = 0
rect_draw = 0
fake_screenshake = 0
fake_shakeamount = 0

rx1 = 138
ry1 = 64
rx2 = 182
ry2 = 118

quick_mode = 1
soundtimer = 0
soundcon = 0
linesfxtimer = 0
nextroom = ruin_1
skiprunback = 0