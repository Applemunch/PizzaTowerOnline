/// @description 
switch(image_index) {
	case 0:
		contentEditor = "obj_pizzagoblin";
		break;
	case 1:
		contentEditor = "obj_pizzagoblinbomb";
		break;
	case 2:
		contentEditor = "obj_pepgoblin";
		break;
	case 3:
		contentEditor = "obj_pizzard";
		break;
	case 4:
		contentEditor = "obj_swedishmonkey";
		break;
	case 5:
		contentEditor = "obj_weeniesquire";
		break;
	case 6:
		contentEditor = "obj_weeniemount";
		break;
	case 7:
		contentEditor = "obj_cheeseslime";
		break;
	case 8:
		contentEditor = "obj_forknight";
		break;
	case 9:
		contentEditor = "obj_kentukykenny";
		break;
	case 10:
		contentEditor = "obj_kentukykenny_projectile";
		break;
	case 11:
		contentEditor = "obj_junk";
		break;
	case 12:
		contentEditor = "obj_pizzaboy";
		break;
	case 13:
		contentEditor = "obj_shotgun";
		break;
	case 14:
		contentEditor = "obj_rancher";
		break;
	case 15:
		contentEditor = "obj_miniufo";
		break;
	case 16:
		contentEditor = "obj_woodbarrel";
		break;
	case 17:
		contentEditor = "obj_pickle";
		break;
	case 18:
		contentEditor = "obj_canongoblin";
		break;
	case 19:
		contentEditor = "obj_noisegoblin";
		break;
	case 20:
		contentEditor = "obj_coolpineapple";
		break;
}

if room != rm_editor
{
    with instance_create_layer(x, y, "Level_structure", obj_baddiespawner)
    {
        image_xscale = other.image_xscale * other.xscale
        image_yscale = other.image_yscale
        content = asset_get_index(other.contentEditor)
    }
    instance_destroy()
}