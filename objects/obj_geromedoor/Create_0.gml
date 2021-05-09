targetRoom = room
target_x = 0
target_y = 0

image_speed = 0
depth = 150

targetDoor = "A"

if global.gameplay == 0
{
	instance_change(obj_door, false);
	visited = true;
}