switch (state)
{
    case states.idle: scr_enemy_idle (); break;
    case states.turn: scr_enemy_turn (); break;
    case states.walk: scr_enemy_walk (); break;
    case states.land: scr_enemy_land (); break;
    case states.hit: scr_enemy_hit (); break;
    case states.stun: scr_enemy_stun (); break;
    // grabbed state here
}

if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}

if state != states.stun
birdcreated = false

//Sprites
if cigar
{
	if walkspr != spr_sausageman_walk
		sprite_index = spr_sausageman_walk;
	landspr = spr_sausageman_land
	idlespr = spr_sausageman_idle
	fallspr = spr_sausageman_fall
	hitceillingspr = spr_sausageman_hitceilling
	stunfalltransspr = spr_sausageman_stunfalltrans
	hitwallspr = spr_sausageman_hitwall
	stunfallspr = spr_sausageman_stunfall
	rollingspr =spr_sausageman_rolling
	walkspr =spr_sausageman_walk
	turnspr = spr_sausageman_turn
	flyingspr = spr_sausageman_flying
	hitspr = spr_sausageman_hit
	stunlandspr = spr_sausageman_stunland
	stunspr = spr_sausageman_stun
	recoveryspr = spr_sausageman_recovery
	stompedspr = spr_sausageman_stomped
	grabbedspr = spr_sausageman_grabbed
	scaredspr = spr_sausageman_stomped
}
else
{
	if walkspr != spr_sausagemannocigar_walk
		sprite_index = spr_sausagemannocigar_walk;
	landspr = spr_sausagemannocigar_land
	idlespr = spr_sausagemannocigar_idle
	fallspr = spr_sausagemannocigar_fall
	hitceillingspr = spr_sausagemannocigar_hitceilling
	stunfalltransspr = spr_sausagemannocigar_stunfalltrans
	hitwallspr = spr_sausagemannocigar_hitwall
	stunfallspr = spr_sausagemannocigar_stunfall
	rollingspr =spr_sausagemannocigar_rolling
	walkspr =spr_sausagemannocigar_walk
	turnspr = spr_sausagemannocigar_turn
	flyingspr = spr_sausagemannocigar_flying
	hitspr = spr_sausagemannocigar_hit
	stunlandspr = spr_sausagemannocigar_stunland
	stunspr = spr_sausagemannocigar_stun
	recoveryspr = spr_sausagemannocigar_recovery
	stompedspr = spr_sausagemannocigar_stomped
	grabbedspr = spr_sausagemannocigar_grabbed
	scaredspr = spr_sausagemannocigar_stomped
}


if cigar = true && cigarcreate = false && (state = states.idle or state = states.walk or state = states.turn or state = states.land)
{
	cigarcreate = true
	with instance_create(x,y,obj_sausagemancigar)
	{
		ID = other.id
	}
}

if cigar && hitboxcreate = false && (state = states.walk) 
{
	hitboxcreate = true
	with instance_create(x,y,obj_forkhitbox)
	{
		ID = other.id
	}
}


if state != states.grabbed
depth = 0



if state != states.stun
thrown= false


//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}