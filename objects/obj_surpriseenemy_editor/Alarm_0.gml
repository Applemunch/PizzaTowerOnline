switch index
{
	case 0:
		content = obj_cheeseslime;
		break;
	case 1:
		content = obj_banditochicken;
		break;
	case 2:
		content = obj_pizzaboy;
		break;
	case 3:
		content = obj_kentukykenny;
		break;
	case 4:
		content = obj_rancher;
		break;
	case 5:
		content = obj_miniufo;
		break;
	case 6:
		content = obj_indiancheese;
		break;
	case 7:
		content = obj_pizzard;
		break;
	case 8:
		content = obj_swedishmonkey;
		break;
	case 9:
		content = obj_forknight;
		break;
	case 10:
		content = obj_fencer;
		break;
	case 11:
		content = obj_shotgun;
		break;
	case 12:
		content = obj_junk;
		break;
	case 13:
		content = obj_pepgoblin;
		break;
	case 14:
		content = obj_woodbarrel;
		break;
	case 15:
		content = obj_pickle;
		break;
	case 16:
		content = obj_canongoblin;
		break;
	case 17:
		content = obj_noisegoblin;
		break;
	case 18:
		content = obj_coolpineapple;
		break;
	case 19:
		content = obj_piraneapple;
		break;
}

with instance_create_depth(x, y, depth, obj_supriseenemy)
{
    image_xscale = other.image_xscale * other.xscale
    image_yscale = other.image_yscale
	
	content = other.content;
	trigger = other.trigger;
}
instance_destroy()