function scr_gms_p2p(mid, sender, args)
{
	enum p2p
	{
		tpother, // x, y, room
		setvar, // variable, value
		setglobal, // variable, value
		replacemusic, // sound
		sudo, // message, color
		instancecreate, // instance, x, y
		globalmessage,
		wcdrag, // x, y
		startrace,
		
		pvp_grab,
		pvp_squish,
		pvp_punch,
		pvp_stopgrab
	}
	
	switch mid
	{
		case p2p.tpother:
			global.gottp = [
				true,
				ds_list_find_value(args, 0), // x
				ds_list_find_value(args, 1), // y
				ds_list_find_value(args, 2) // room
			];
			break;
		
		case p2p.setvar:
			with obj_player1
				variable_instance_set(id, ds_list_find_value(args, 0), ds_list_find_value(args, 1));
			break;
		
		case p2p.setglobal:
			variable_global_set(ds_list_find_value(args, 0), ds_list_find_value(args, 1));
			break;
		
		case p2p.replacemusic:
			audio_stop_sound(global.music);
			var ___snd = scr_sound(ds_list_find_value(args, 0));
			audio_sound_gain(___snd, max(global.musicvolume, 0.6), 0);
			with obj_music
				pausedmusic = ds_list_find_value(args, 0);
			break;
	
		case p2p.sudo:
			gms_chat(ds_list_find_value(args, 0), ds_list_find_value(args, 1));
			break;
		
		case p2p.instancecreate:
			gms_settings_declare_syncable_object(ds_list_find_value(args, 0));
			var obj = instance_create_depth(ds_list_find_value(args, 1), ds_list_find_value(args, 2), 0, ds_list_find_value(args, 0));
			gms_instance_sync(obj, is_onetime | isc_local);
			break;
		
		case p2p.globalmessage:
			obj_gms.__author = gms_other_get_string(sender, "name");
			global.__gotmessage = [true, gms_global_get("gotmessage"), obj_gms.__author];
			break;
		
		case p2p.wcdrag:
			with obj_player1
			{
				x = ds_list_find_value(args, 0);
				y = ds_list_find_value(args, 1);
			
				hsp = 0;
				vsp = 0;
			}
			break;
		
		case p2p.startrace:
			with obj_racemenu
				startrace = true;
			break;
		
		case p2p.pvp_grab:
			with obj_player1
			{
				state = states.grabbed;
				grabbedby = sender;
			}
			break;
		
		case p2p.pvp_squish:
			with obj_player1
			{
				state = states.stunned;
				sprite_index = spr_squished;
				image_index = 0;
			}
			break;
		
		case p2p.pvp_punch:
			with obj_player1
			{
				scr_hurtplayer_weak(id);
				xscale = -gms_other_get(sender, "xscale");
			}
			break;
		
		case p2p.pvp_stopgrab:
			with obj_player1
				baddiegrabbedID = 0;
			break;
	}
}