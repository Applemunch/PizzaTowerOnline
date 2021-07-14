ds_list_destroy(baddielist)
ds_list_destroy(currentarena)

if state == states.victory or state == states.transitioncutscene
    event_perform(ev_destroy, 0);