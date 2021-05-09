ds_list_delete(global.followerlist, pos);
if ds_exists(followqueue, ds_type_queue)
    ds_queue_destroy(followqueue);