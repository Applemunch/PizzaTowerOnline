if instance_exists(parent)
{
	visible = parent.visible
	depth = parent.depth + 1
}
else
	instance_destroy();