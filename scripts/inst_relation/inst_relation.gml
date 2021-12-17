function inst_isobj(instance, object) {
	return instance.object_index == object;
}
function inst_relation(instance, object)
{
	if instance.object_index == object
		return true;
	if object_is_ancestor(instance.object_index, object)
		return true;
	return false;
}
