if (room == rm_editor)
{
    if (obj_editor.mode != 0)
        return;
    if (object_get_parent(other.object_index) == object_get_parent(object_index) && id > other.id)
        instance_destroy()
}