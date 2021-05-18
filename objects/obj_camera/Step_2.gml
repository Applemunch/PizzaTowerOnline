player = obj_player1

if collect_shake > 0
    collect_shake *= 0.5
if healthshaketime > 0
{
	healthshaketime--
	healthshake = random_range(-2,2)
}
if healthshaketime <= 0
	healthshake = 0					  

if healthold != global.playerhealth
{
	if healthold <= global.playerhealth
		playerhealthup = true
	else
		playerhealthup = false
	healthshaketime = 30
	healthold = global.playerhealth	
}

/*
if global.coop = true
{
	if obj_player1.spotlight = true
	{
p2pdistance = point_distance(obj_player1.x, 0, obj_player2.x, 0)
if obj_player1.x >= obj_player2.x
p2pdistancex = -p2pdistance/2
else
p2pdistancex = p2pdistance/2
	}
else
{
p2pdistance = point_distance(obj_player2.x, 0, obj_player1.x, 0)

if obj_player2.x >= obj_player1.x
p2pdistancex = -p2pdistance/2
else
p2pdistancex = p2pdistance/2
}

}
else */p2pdistancex = 0

if floor(image_index) = 10
 shoving = false




if room == strongcold_endscreen or room == rank_room or room == timesuproom or room == Oldtitlescreen or room == characterselect or room == editor_entrance
or (instance_exists(obj_gms) && global.__chat)
	visible = false
else 
	visible = true




if global.combo >= 10
{
global.SAGEcombo10 = true
	ini_open("saveData.ini")
	ini_write_string("SAGE2019","combo10",true);
	ini_close()
	
}

/*
if shoving = true &&  image_index >= 3 && bang = false
{
	with instance_create(x,y,obj_fallingHUDface)
	{
	if (obj_player1.spotlight = false && obj_player1.character = "P") or (obj_player1.spotlight = true && obj_player2.character = "P")
	{
	sprite = spr_pepinoHUDscream
	hsp = random_range(-1,-5)
	}
		else
		{
		sprite = spr_noiseHUD_panic
		hsp = random_range(1,5)
		}
	}
	bang = true
}
if shoving = false
bang = false
*/

if (room == timesuproom)
timestop = true


if global.seconds <= 0 && global.minutes <= 0 && !ded
{
	alarm[1] = -1
	alarm[2] = 3
	
	if global.snickchallenge
		audio_stop_sound(global.music);
	
	ded = true
}

if global.seconds < 0 
{
	global.seconds = 59
	global.minutes -= 1
}

if global.seconds > 59
{
	global.minutes += 1
	global.seconds -= 59
}

if global.panicshake
{
	if (global.panic = true && global.minutes < 1) or player.sprite_index = player.spr_Timesup
		shake_mag_panic = 1.5;
	else if global.panic = true && basement = false
		shake_mag_panic = 1;
	else
		shake_mag_panic = 0;
}
else
	shake_mag_panic = 0;

///snap view to the section of the room that the player's in

//calculate the shake magnitude here
if (shake_mag > 0) {
    shake_mag-=shake_mag_acc;
    if (shake_mag<0) {
        shake_mag=0;
    }
}

// target override
if targetoverride != noone
{
	var target = targetoverride;
	var coopdistance = 0;
}
else
{
	var target = player;
	var coopdistance = 0;
}

// actual camera
if player.state != states.timesup && player.state != states.rotate && player.state != states.gameover && room != editor_entrance
{
	var WC_oobcam = instance_exists(obj_wc) ? obj_wc.WC_oobcam : false;
	
	// calculate shaking
	if shake_mag != 0
	or shake_mag_panic != 0
	{
		var shkh = round(irandom_range(-shake_mag, shake_mag) / 2);
		var shkv = irandom_range(-shake_mag, shake_mag);
			
		if shake_mag_panic != 0
			shkv += irandom_range(-shake_mag_panic, shake_mag_panic);
	}
	else
	{
		shkh = 0;
		shkv = 0;
	}
	
	// camera pan
	if instance_exists(target) && target.id == player.id
	{
		if chargecamera == 0 && abs(chargeprev) > 2
			chargesmooth = chargeprev;
		
		chargesmooth = median(chargesmooth - 16, 0, chargesmooth + 16);
		
		// mach
		if (player.state = states.mach3 or player.state = states.tumble or player.state = states.rideweenie or player.state = states.machroll)
		{
			var ch = 100;
			if global.gameplay == 1
				ch = 300;
			
			if (sign(player.xscale) == 1 && chargecamera < ch)
			or (sign(player.xscale) == -1 && chargecamera > -ch)
				chargecamera += sign(player.xscale) * (2 * max(4 * (sign(chargecamera) != sign(player.xscale)), 1));
		}
		else
		{
			var ch = sign(chargecamera);
			if ch != 0
			{
				chargecamera -= ch * 2;
				if global.gameplay == 1 && player.state == states.machslide
					chargecamera -= ch * 4;
			
				if sign(chargecamera) != ch
					chargecamera = 0;
			}
		}
		
		// crouch
		if (player.state = states.crouch && player.hsp == 0) && !crouchcameragoingback && player.key_down
		{
			if crouchcamera < 1
				crouchcamera += 0.02;
			else
				crouchcamera = min(crouchcamera + 2, 100);
		}
		else
		{
			crouchcameragoingback = true;
			crouchcamera = max(crouchcamera - 4, 0);
			
			if crouchcamera <= 0
				crouchcameragoingback = false;
		}
	}
	else
	{
		chargecamera = 0;
		crouchcamera = 0;
	}
	chargeprev = chargecamera;
	
	// manual camera pan
	if pancur[0] != panto[0]
		pancur[0] = median(pancur[0] - 2, panto[0], pancur[0] + 2);
	if pancur[1] != panto[1]
		pancur[1] = median(pancur[1] - 2, panto[1], pancur[1] + 2);
	
	// set camera position
	if is_real(target) && instance_exists(target)
	{
		lastx = -1;
		lasty = -1;
		
		if targetgoingback
		{
			var maxspeed = 25;
			if target == player
			{
				if player.state == states.hurt
					maxspeed = 45;
			}
			
			shkh = 0;
			shkv = 0;
				
			var tx = target.x - (__view_get(e__VW.WView, 0) / 2) + chargecamera + chargesmooth + pancur[0];
			var ty = target.y - (__view_get(e__VW.HView, 0) / 2) + floor(crouchcamera) + pancur[1];
			tx = clamp(tx, 0 + shkh, room_width - __view_get( e__VW.WView, 0 ));
			ty = clamp(ty, 0 + shkv, room_height - __view_get( e__VW.HView, 0 ));
			
			var xx = median(__view_get(e__VW.XView, 0) - maxspeed, tx, __view_get(e__VW.XView, 0) + maxspeed);
			__view_set( e__VW.XView, 0, xx + shkh);
			
			var yy = median(__view_get(e__VW.YView, 0) - maxspeed, ty, __view_get(e__VW.YView, 0) + maxspeed);
			__view_set( e__VW.YView, 0, yy + shkv);
			
			if abs(floor(xx) - floor(tx)) <= maxspeed
			&& abs(floor(yy) - floor(ty)) <= maxspeed
				targetgoingback = false;
		}
		else
		{
			// normal camera
			__view_set( e__VW.XView, 0, target.x - (__view_get(e__VW.WView, 0) / 2) + chargecamera + chargesmooth + shkh + pancur[0]);
			__view_set( e__VW.YView, 0, target.y - (__view_get(e__VW.HView, 0) / 2) + floor(crouchcamera) + shkv + pancur[1]);
		}
	}
	else
	{
		// no target
		if lastx == -1 && lasty == -1
		{
			lastx = __view_get(e__VW.XView, 0);
			lasty = __view_get(e__VW.YView, 0);
		}
		
		__view_set( e__VW.XView, 0, lastx + shkh + pancur[0]);
		__view_set( e__VW.YView, 0, lasty + shkv + pancur[1]);
	}
	
	if room != custom_lvl_room
	{
		// limit camera
		if !WC_oobcam
			__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0 + shkh, room_width - __view_get( e__VW.WView, 0 )) + shkh)
		if !WC_oobcam
			__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0 + shkv, room_height - __view_get( e__VW.HView, 0 )) + shkv)
	}
	else
	{
		#region EDITOR CAMERA
		
		if bound_camera == true && !WC_oobcam
		{
			__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), obj_player1.cam.x, obj_player1.cam.x + obj_player1.cam_width - __view_get( e__VW.WView, 0 )) + shkh)
			__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), obj_player1.cam.y, obj_player1.cam.y + obj_player1.cam_height - __view_get( e__VW.HView, 0 )) + shkv)
			
			if obj_player1.cam != noone // render
			{
				instance_deactivate_object(obj_forkhitbox);
				instance_deactivate_object(obj_baddiecollisionbox);
				instance_deactivate_object(obj_baddie);
				instance_deactivate_object(obj_cheesedragon);
				instance_deactivate_object(obj_baddiespawner);
				
				var offset = 64;
				instance_activate_region(obj_player1.cam.x - offset, obj_player1.cam.y - offset, obj_player1.cam_width + offset, obj_player1.cam_height + offset, true);
			}
		}
		
		#endregion
	}
	
	if target != player
	{
		var _l = camera_get_view_x(view_camera[0]);
		var _t = camera_get_view_y(view_camera[0]);
		var _r = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
		var __b = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
		var _edge_x = camera_get_view_width(view_camera[0]) / 2 - 64;  //change constant "32" to change arrow dist from edge of view (in room pixels)
		var _edge_y = camera_get_view_height(view_camera[0]) / 2 - 64;  //change constant "32" to change arrow dist from edge of view (in room pixels)
		var _view_center_x = (_l + _r) / 2;
		var _view_center_y = (_t + __b) / 2;
		var _x1, _y1, _x2, _y2;
		
		with player
		{
			if !collision_rectangle(_l, _t, _r, __b, id, false, false)
			{
				_x1 = x - _view_center_x;
				_y1 = y - _view_center_y;
				if abs(_x1 / _edge_x) > abs(_y1 / _edge_y) { _x2 = sign(_x1) * _edge_x; _y2 = _x2 / _x1 * _y1; } 
				else { _y2 = sign(_y1) * _edge_y; _x2 = _y2 / _y1 * _x1; }
						
				ds_queue_enqueue(other.edge_indicator, _view_center_x + _x2);
				ds_queue_enqueue(other.edge_indicator, _view_center_y + _y2);
				ds_queue_enqueue(other.edge_indicator, point_direction(0, 0, _x1, _y1));
			}
		}
	}
}

// update wave
if global.panic or global.snickchallenge
{
	var camsmooth = obj_camera.alarm[1] / 60;
	if obj_camera.alarm[1] == -1 or global.minutes == 0 && global.seconds == 0
		camsmooth = 0;
	
	global.wave = global.maxwave - (global.minutes * 60 + global.seconds + camsmooth) * 60;
}