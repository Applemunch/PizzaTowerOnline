/// @description turn on rich presence
running = true;

instance_destroy(rousrDissonance);
global.__rousr_dissonance = instance_create(0, 0, rousrDissonance);

rousr_dissonance_create("828220751810265098");
rousr_dissonance_set_large_image("runner_icon");