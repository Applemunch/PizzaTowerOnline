/// @description 
switch(image_index) {
	case 0:
		content = obj_pizzakinshroom;
		break;
	case 1:
		content = obj_pizzakincheese;
		break;
	case 2:
		content = obj_pizzakintomato;
		break;
	case 3:
		content = obj_pizzakinsausage;
		break;
	case 4:
		content = obj_pizzakinpineapple;
		break;
	case 5:
		content = obj_pizzakinshroom;
		image_index = 0;
		break;
}

if room != rm_editor {
	with instance_create(x, y, obj_pizzaboxunopen) {
		content = other.content;
	}
	instance_destroy();
}