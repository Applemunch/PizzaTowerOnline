function scr_characterspr()
{
	snd_fireass = sfx_scream5;
	switch character
	{
		#region PEPPINO
			
			case "P":
			default:
				spr_idle = spr_player_idle
				spr_move = spr_player_move
				spr_crawl = spr_player_crawl
				spr_hurt = spr_player_hurt
				spr_jump = spr_player_jump
				spr_jump2 = spr_player_jump2
				spr_fall = spr_player_fall
				spr_fall2 = spr_player_fall2
				spr_crouch = spr_player_crouch
				spr_crouchjump = spr_player_crouchjump
				spr_crouchfall = spr_player_crouchfall
				spr_couchstart = spr_player_couchstart
				spr_bump = spr_player_bump
				spr_land = spr_player_land		
				spr_land2 = spr_player_land2
				spr_lookdoor = spr_player_lookdoor
				spr_walkfront = spr_player_walkfront
				spr_victory = spr_player_victory
				spr_Ladder = spr_player_ladder
				spr_laddermove = spr_player_laddermove
				spr_ladderdown = spr_player_ladderdown
				spr_keyget = spr_player_keyget
				spr_keyget_ss = spr_player_keyget_ss
				spr_crouchslip = spr_player_crouchslip

				spr_mach1 = spr_player_mach1
				spr_mach = spr_player_mach
				spr_secondjump1 = spr_player_secondjump1
				spr_secondjump2 = spr_player_secondjump2
				spr_machslidestart = spr_player_machslidestart
				spr_machslide = spr_player_machslide
				spr_machslideend = spr_player_machslideend
				spr_machslideboost = spr_player_machslideboost

				spr_land2 = spr_player_land2
				spr_punch = spr_player_punch
				spr_backkick = spr_player_backkick
				spr_shoulder = spr_player_shoulder
				spr_uppunch = spr_player_uppunch
				spr_stomp = spr_player_stomp
				spr_stompprep = spr_player_stompprep
				spr_crouchslide = spr_player_crouchslide
				spr_bump = spr_player_bump
				spr_victory = spr_player_victory
				spr_climbwall = spr_player_climbwall
				spr_grab = spr_player_grab

				spr_mach2jump = spr_player_mach2jump
				spr_Timesup = spr_player_timesup
				spr_deathstart = spr_player_deathstart
				spr_deathend = spr_player_deathend
				spr_machpunch1 = spr_player_machpunch1
				spr_machpunch2 = spr_player_machpunch2
				spr_hurtjump = spr_player_jumphurt
				spr_entergate = spr_player_entergate
				spr_gottreasure = spr_player_gottreasure
				spr_bossintro = spr_player_bossintro
				spr_hurtidle = spr_player_hurtidle
				spr_hurtwalk = spr_player_hurtwalk
				spr_suplexmash1 = spr_player_suplexmash1
				spr_suplexmash2 = spr_player_suplexmash2
				spr_suplexmash3 = spr_player_suplexmash3
				spr_suplexmash4 = spr_player_suplexmash4
				spr_tackle = spr_player_tackle
				spr_airdash1 = spr_player_airdash1
				spr_airdash2 = spr_player_airdash2

				spr_idle1 = spr_player_idlefrown
				spr_idle2 = spr_player_idledance
				spr_idle3 = spr_player_handgesture1
				spr_idle4 = spr_player_handgesture2
				spr_idle5 = spr_player_handgesture3
				spr_idle6 = spr_player_handgesture4


				spr_piledriver = spr_player_piledriver
				spr_piledriverland = spr_player_piledriverland
				spr_charge = spr_player_charge
				spr_mach3jump = spr_player_mach3jump
				spr_mach4 = spr_player_mach4

				spr_machclimbwall = spr_player_climbwall
				spr_dive = spr_player_dive
				spr_machroll = spr_player_machroll
				spr_hitwall = spr_player_mach3hitwall


				spr_superjumpland = spr_player_superjumpland
				spr_walljumpstart = spr_player_walljumpstart
				spr_superjumpprep = spr_player_superjumpprep
				spr_superjump = spr_player_superjump

				spr_superjumppreplight = spr_player_superjumppreplight
				spr_superjumpright =  spr_player_superjumpright
				spr_superjumpleft = spr_player_superjumpleft

				spr_machfreefall = spr_player_machfreefall
				spr_mach3hit = spr_player_mach3hit

				spr_knightpepwalk = spr_knightpep_walk
				spr_knightpepjump = spr_knightpep_jump
				spr_knightpepfall = spr_knightpep_fall
				spr_knightpepidle = spr_knightpep_idle
				spr_knightpepjumpstart = spr_knightpep_jumpstart
				spr_knightpepthunder = spr_knightpep_thunder
				spr_knightpepland = spr_knightpep_land
				spr_knightpepdownslope = spr_knightpep_downslope
				 spr_knightpepstart =  spr_knightpep_start
				spr_knightpepcharge = spr_knightpep_charge

				spr_bodyslamstart = spr_player_bodyslamstart
				spr_bodyslamfall = spr_player_bodyslamfall
				 spr_bodyslamland = spr_player_bodyslamland
				 spr_crazyrun = spr_player_crazyrun
 
				 spr_bombpeprun = spr_bombpep_run
				spr_bombpepintro = spr_bombpep_intro
				spr_bombpeprunabouttoexplode = spr_bombpep_runabouttoexplode
				spr_bombpepend = spr_bombpep_end
 

				spr_fireass = spr_player_fireass
				spr_fireassground = spr_player_fireassground
				spr_fireassend = spr_player_fireassend
				spr_tumblestart = spr_player_tumblestart
				spr_tumbleend = spr_player_tumbleend
				spr_tumble = spr_player_tumble
				spr_stunned = spr_player_stunned

				spr_downpizzabox = spr_player_downpizzabox
				spr_uppizzabox = spr_player_uppizzabox

				spr_slipnslide = spr_player_slipnslide

				spr_mach3boost = spr_player_machslideboost3
				spr_facehurtup = spr_player_facehurtup
				spr_facehurt = spr_player_facehurt

				spr_walljumpend = spr_player_walljumpend
				spr_suplexdash = spr_player_suplexdash
				spr_suplexdashjumpstart = spr_player_suplexgrabjumpstart
				spr_suplexdashjump = spr_player_suplexgrabjump
				spr_shotgunsuplexdash = spr_shotgun_suplexdash

				spr_rollgetup = spr_player_rollgetup

				spr_swingding = spr_player_swingding
				spr_swingdingend = spr_player_swingdingend
				spr_haulingjump = spr_player_haulingjump
				spr_haulingidle = spr_player_haulingidle
				spr_haulingwalk = spr_player_haulingwalk
				spr_haulingstart = spr_player_haulingstart
				spr_haulingfall = spr_player_haulingfall
				spr_haulingland = spr_player_haulingland
				spr_uppercutfinishingblow = spr_player_uppercutfinishingblow
				spr_finishingblow1 = spr_player_finishingblow1
				spr_finishingblow2 = spr_player_finishingblow2
				spr_finishingblow3 = spr_player_finishingblow3
				spr_finishingblow4 = spr_player_finishingblow4
				spr_finishingblow5 = spr_player_finishingblow5

				spr_winding = spr_player_winding
				spr_3hpwalk = spr_player_3hpwalk
				spr_3hpidle = spr_player_3hpidle
				spr_panic = spr_player_panic

				spr_facestomp = spr_player_facestomp
				spr_freefall = spr_player_freefall

				spr_shotgunland = spr_shotgun_land
				spr_shotgunshoot = spr_player_shotgun
				spr_shotgunidle = spr_shotgun_idle
				spr_shotgunwalk = spr_shotgun_walk
				spr_shotgunfall = spr_shotgun_fall
				spr_shotgunjump = spr_shotgun_jump
				spr_shotgunjump1 = spr_player_shotgunjump1
				spr_shotgunjump2 = spr_player_shotgunjump2
				spr_shotgunjump3 = spr_player_shotgunjump3
				spr_shotgunpullout = spr_shotgun_pullout

				spr_shotgunduck = spr_shotgun_duck
				spr_shotguncrawl = spr_shotgun_crawl
				spr_shotgungoduck = spr_shotgun_goduck

				spr_fightball = spr_player_fightball
				spr_squished = spr_player_squished
				
				spr_supertaunt1 = spr_player_supertaunt1
				spr_supertaunt2 = spr_player_supertaunt2
				spr_supertaunt3 = spr_player_supertaunt3
				spr_supertaunt4 = spr_player_supertaunt4
				spr_taunt = spr_player_taunt

				spr_rideweenie = spr_player_weeniemount
				spr_barrelroll = spr_player_barrelroll
				
				spr_ghostidle = spr_player_ghostidle
				spr_ghostjump = spr_player_ghostjump
				spr_ghostend = spr_player_ghostend
				spr_ghostdash = spr_player_ghostdash
				
				spr_scaredjump1 = spr_player_scaredjump1
				spr_scaredjump2 = spr_player_scaredjump2
				spr_scaredjump3 = spr_player_scaredjump3
				
				spr_parry1 = spr_player_parry1;
				spr_parry2 = spr_player_parry2;
				spr_parry3 = spr_player_parry3;
				
				spr_Current = spr_player_current;
				spr_suplexcancel = spr_player_suplexcancel;
				spr_suplexbump = spr_player_suplexbump;
				
				spr_firemouth = spr_player_firemouth;
				spr_firemouthintro = spr_player_firemouthintro;
				spr_firemouthshoot = spr_player_firemouthshoot;
				spr_firemouthend = spr_player_firemouthend;
				
				spr_boxxed_intro = spr_boxxedpep_intro;
				spr_boxxed_idle = spr_boxxedpep_idle;
				spr_boxxed_walk = spr_boxxedpep_walk;
				spr_boxxed_air = spr_boxxedpep_air;
				spr_boxxed_dash = spr_boxxedpep_dash;
				spr_boxxed_jump = spr_boxxedpep_jump;
				
				spr_dashpadmach = spr_player_dashpad;
				spr_dead = spr_player_deathend
				
				spr_rocketstart = spr_player_rocketstart;
				spr_rocket = spr_player_rocket;
				spr_rockethitwall = spr_player_rockethitwall;
				
				spr_slipbanan1 = spr_player_slipbanan1;
				spr_slipbanan2 = spr_player_slipbanan2;
				
				spr_cheeseballed = spr_player_cheeseball;
				spr_faceplant = spr_player_faceplant;
				
				spr_rageidle = spr_player_rageidle;
				spr_ragemove = spr_player_ragemove;
				
				spr_breakdanceuppercut = spr_player_breakdanceuppercut;
				spr_breakdanceuppercutend = spr_player_breakdanceuppercutend;
				
				spr_suplexland = spr_player_backflip;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_player_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_player_mortjumpstart;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_player_mortthrow;
				
				spr_superspringplayer = spr_player_presentbox;
				
				spr_pistolidle = spr_player_pistolidle;
				spr_pistolwalk = spr_player_pistolwalk;
				spr_pistolshot = spr_player_pistolshot;
				spr_pistolshotend = spr_player_pistolshotend;
				
				spr_palette = spr_peppalette
				paletteselect = check_shaders()
				break;
	
		#endregion
		#region NOISE
		
			case "N":
				spr_idle = spr_playerN_idle
				spr_move = spr_playerN_move
				spr_crawl = spr_playerN_crawl
				spr_idle = spr_playerN_idle
				spr_hurt = spr_playerN_hurt
				spr_jump = spr_playerN_jump
				spr_jump2 = spr_player_jump2
				spr_fall = spr_playerN_fall
				spr_fall2 = spr_player_fall2
				spr_crouch = spr_playerN_crouch
				spr_crouchjump = spr_playerN_crouchjump
				spr_crouchfall = spr_playerN_crouchfall
				spr_couchstart = spr_playerN_crouchstart
				spr_bump = spr_playerN_bump
				spr_land = spr_playerN_land
				spr_land2 = spr_playerN_land2
				spr_lookdoor = spr_playerN_lookdoor
				spr_walkfront = spr_playerN_walkfront
				spr_victory = spr_playerN_victory
				spr_Ladder = spr_playerN_ladder
				spr_laddermove = spr_playerN_laddermove
				spr_ladderdown = spr_playerN_ladderdown
				spr_keyget = spr_playerN_keyget
				spr_keyget_ss = spr_playerN_keyget_ss
				spr_crouchslip = spr_playerN_crouchslip

				spr_mach1 = spr_playerN_mach1
				spr_mach = spr_playerN_mach
				spr_secondjump1 = spr_playerN_secondjump1
				spr_secondjump2 = spr_playerN_secondjump2
				spr_machslidestart = spr_playerN_machslidestart
				spr_machslide = spr_playerN_machslide
				spr_machslideend = spr_playerN_machslideend
				spr_machslideboost = spr_playerN_machslideboost

				spr_land2 = spr_playerN_land2
				spr_punch = spr_playerN_punch
				spr_backkick = spr_playerN_backkick
				spr_shoulder = spr_playerN_shoulder
				spr_uppunch = spr_playerN_uppunch
				spr_stomp = spr_playerN_stomp
				spr_stompprep = spr_playerN_stompprep
				spr_crouchslide = spr_playerN_crouchslip
				spr_bump = spr_playerN_bump
				spr_victory = spr_playerN_victory
				spr_hurt = spr_playerN_hurt
				spr_climbwall = spr_playerN_climbwall
				spr_grab = spr_playerN_grab

				spr_mach2jump = spr_playerN_mach2jump
				spr_Timesup = spr_playerN_timesup
				spr_deathstart = spr_playerN_deathstart
				spr_deathend = spr_playerN_deathend
				spr_machpunch1 = spr_playerN_machpunch1
				spr_machpunch2 = spr_playerN_machpunch2
				spr_hurtjump = spr_playerN_hurtjump
				spr_entergate = spr_playerN_entergate
				spr_gottreasure = spr_playerN_gottreasure
				spr_bossintro = spr_playerN_bossintro
				spr_hurtidle = spr_playerN_hurtidle
				spr_hurtwalk = spr_playerN_hurtwalk
				spr_suplexmash1 = spr_playerN_suplexmash1
				spr_suplexmash2 = spr_playerN_suplexmash2
				spr_suplexmash3 = spr_playerN_suplexmash3
				spr_suplexmash4 = spr_playerN_suplexmash4
				spr_tackle = spr_playerN_tackle
				spr_airdash1 = spr_playerN_airdash1
				spr_airdash2 = spr_playerN_airdash2

				spr_idle1 = spr_playerN_idleface
				spr_idle2 = spr_playerN_idlegun
				spr_idle3 = spr_playerN_idlesmoke
				spr_idle4 = spr_playerN_idledance
				spr_idle5 = spr_playerN_idleballoon
				spr_idle6 = spr_playerN_idlemask


				spr_piledriver = spr_playerN_piledriver
				spr_piledriverland = spr_playerN_piledriverland
				spr_charge = spr_playerN_charge
				spr_mach3jump = spr_playerN_mach3jump
				spr_mach4 = spr_playerN_mach3


				spr_machclimbwall = spr_playerN_climbwall
				spr_dive = spr_playerN_dive
				spr_machroll = spr_playerN_machroll
				spr_hitwall = spr_playerN_mach3hitwall


				spr_superjumpland = spr_playerN_Sjumpland
				spr_walljumpstart = spr_playerN_walljumpstart

				spr_superjumpprep = spr_playerN_Sjumpstart
				spr_superjump = spr_playerN_Sjump
				spr_machfreefall = spr_playerN_fall
				spr_mach3hit = spr_playerN_machpunch1

				spr_knightpepwalk = spr_playerN_knightmove
				spr_knightpepjump = spr_playerN_knightjump
				spr_knightpepfall = spr_playerN_knightfall
				spr_knightpepidle = spr_playerN_knightidle
				spr_knightpepjumpstart = spr_playerN_knightjumpstart
				spr_knightpepthunder = spr_playerN_knightstart
				spr_knightpepland = spr_playerN_knightland
				spr_knightpepdownslope = spr_playerN_knightdownslope
				 spr_knightpepstart =  spr_playerN_knightsword
				spr_knightpepcharge = spr_playerN_knightslide

				spr_bodyslamstart = spr_playerN_bodyslamstart
				spr_bodyslamfall = spr_playerN_bodyslam
				 spr_bodyslamland = spr_playerN_bodyslamland
				 spr_crazyrun = spr_playerN_crazyrun
 
				 spr_bombpeprun = spr_playerN_bomb
				spr_bombpepintro = spr_playerN_bombstart
				spr_bombpeprunabouttoexplode = spr_playerN_bombabouttoexplode
				spr_bombpepend = spr_playerN_bombend
 

				spr_fireass = spr_playerN_fireass
				spr_fireassground = spr_playerN_fireassground
				spr_fireassend = spr_playerN_fireassend
				spr_tumblestart = spr_playerN_tumblestart
				spr_tumbleend = spr_playerN_tumbleend
				spr_tumble = spr_playerN_tumble
				spr_stunned = spr_playerN_stunned

				spr_downpizzabox = spr_playerN_downpizzabox
				spr_uppizzabox = spr_playerN_uppizzabox

				spr_taunt = spr_playerN_dab
				spr_slipnslide = spr_playerN_slipnslide


				spr_mach3boost = spr_playerN_mach3boost
				spr_facehurtup = spr_playerN_facehurtup
				spr_facehurt = spr_playerN_facehurt



				spr_walljumpend = spr_playerN_walljumpend
				spr_suplexdash = spr_playerN_suplexgrab
				spr_suplexdashjumpstart = spr_playerN_suplexgrabjumpstart
				spr_suplexdashjump = spr_playerN_suplexgrabjump
				spr_shotgunsuplexdash = spr_playerN_minigundash

				spr_rollgetup = spr_playerN_rollgetup

				spr_superjumppreplight = spr_playerN_Sjumpprep
				spr_superjumpright =  spr_playerN_Sjumpmoveright
				spr_superjumpleft = spr_playerN_Sjumpmoveleft

				spr_swingding = spr_playerN_swingding
				spr_swingdingend = spr_playerN_swingdingend
				spr_haulingjump = spr_playerN_haulingjump
				spr_haulingidle = spr_playerN_haulingidle
				spr_haulingwalk = spr_playerN_haulingmove
				spr_haulingstart = spr_playerN_haulingstart
				spr_haulingfall = spr_playerN_haulingfall
				spr_haulingland = spr_playerN_haulingland
				spr_uppercutfinishingblow = spr_playerN_uppercut
				spr_finishingblow1 = spr_playerN_finishingblow1
				spr_finishingblow2 = spr_playerN_finishingblow2
				spr_finishingblow3 = spr_playerN_finishingblow3
				spr_finishingblow4 = spr_playerN_finishingblow4
				spr_finishingblow5 = spr_playerN_finishingblow5

				spr_winding = spr_playerN_winding
				spr_3hpwalk = spr_playerN_angrymove
				spr_3hpidle = spr_playerN_angryidle
				spr_panic = spr_playerN_panicidle

				spr_facestomp = spr_playerN_machfreefall1
				spr_freefall = spr_playerN_machfreefall2

				spr_shotgunland = spr_playerN_minigunland
				spr_shotgunshoot = spr_playerN_minigunshoot
				spr_shotgunidle = spr_playerN_minigunidle
				spr_shotgunwalk = spr_playerN_minigunmove
				spr_shotgunfall = spr_playerN_minigunfall
				spr_shotgunjump = spr_playerN_minigunjump
				spr_shotgunjump1 = spr_playerN_minigunslamprep
				spr_shotgunjump2 = spr_playerN_minigunslamland
				spr_shotgunjump3 = spr_playerN_minigunslam
				spr_shotgunpullout = spr_playerN_minigunstart
				spr_shotgunduck = spr_playerN_minigunduck
				spr_shotguncrawl = spr_playerN_miniguncrawl
				spr_shotgungoduck = spr_playerN_minigungoduck

				spr_fightball = spr_playerN_fightball
				spr_squished = spr_playerN_squished

				spr_taunt =spr_playerN_taunt
				spr_supertaunt1 = spr_playerN_supertaunt1
				spr_supertaunt2 = spr_playerN_supertaunt2
				spr_supertaunt3 = spr_playerN_supertaunt3
				spr_supertaunt4 = spr_playerN_supertaunt4

				spr_rideweenie = spr_playerN_weeniemount
				spr_barrelroll = spr_playerN_barrel
				spr_ghostidle = spr_playerN_ghostidle
				spr_ghostjump = spr_playerN_ghostjump
				spr_ghostend = spr_playerN_ghostend
				spr_ghostdash = spr_playerN_ghostdash
				spr_scaredjump1 = spr_playerN_scaredjump1
				spr_scaredjump2 = spr_playerN_scaredjump2
				spr_scaredjump3 = spr_playerN_scaredjump3
				
				spr_parry1 = spr_playerN_parry1;
				spr_parry2 = spr_playerN_parry2;
				spr_parry3 = spr_playerN_parry3;
				
				spr_Current = spr_playerN_current;
				spr_suplexcancel = spr_playerN_suplexcancel;
				spr_suplexbump = spr_playerN_suplexbump;
				
				spr_firemouth = spr_playerN_firemouth;
				spr_firemouthintro = spr_playerN_firemouthintro;
				spr_firemouthshoot = spr_playerN_firemouthshoot;
				spr_firemouthend = spr_playerN_firemouthend;
				
				spr_boxxed_intro = spr_playerN_boxxedintro;
				spr_boxxed_idle = spr_playerN_boxxedidle;
				spr_boxxed_walk = spr_playerN_boxxedmove;
				spr_boxxed_air = spr_playerN_boxxedfall;
				spr_boxxed_dash = spr_playerN_boxxeddash;
				spr_boxxed_jump = spr_playerN_boxxedjump;
				
				spr_dashpadmach = spr_playerN_dashpad;
				spr_dead = spr_playerN_deathend
				
				spr_rocketstart = spr_playerN_rocketstart;
				spr_rocket = spr_playerN_rocket;
				spr_rockethitwall = spr_playerN_rockethitwall;
				
				spr_slipbanan1 = spr_playerN_slipbanan1;
				spr_slipbanan2 = spr_playerN_slipbanan2;
				
				spr_cheeseballed = spr_playerN_cheeseball;
				spr_faceplant = spr_playerN_spin;
				
				spr_rageidle = spr_playerN_rageidle;
				spr_ragemove = spr_playerN_ragemove;
				
				spr_breakdanceuppercut = spr_playerN_tumble;
				spr_breakdanceuppercutend = spr_playerN_fall;
				
				spr_suplexland = spr_playerN_suplexland;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_playerN_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_playerN_mortjump;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_playerN_mortthrow;
				
				spr_superspringplayer = spr_playerN_superspring;
				
				spr_pistolidle = spr_playerN_idle;
				spr_pistolwalk = spr_playerN_move;
				spr_pistolshot = spr_playerN_noisebombkick;
				spr_pistolshotend = spr_playerN_idle;
				
				spr_palette = spr_noisepalette
				paletteselect = 0
				break;
	
		#endregion
		#region VIGILANTE
	
			case "V":
				spr_idle = spr_playerV_idle
				spr_move = spr_playerV_move
				spr_crawl = spr_playerV_crouchmove
				spr_idle = spr_playerV_idle
				spr_hurt = spr_playerV_hurt
				spr_jump = spr_playerV_jump
				spr_jump2 = spr_playerV_jump
				spr_fall = spr_playerV_fall
				spr_fall2 = spr_playerV_fall
				spr_crouch = spr_player_crouch
				spr_crouchjump = spr_playerV_crouchjumpstart
				spr_crouchfall = spr_playerV_crouchjump
				spr_couchstart = spr_playerV_gocrouch
				spr_bump = spr_playerV_bump
				spr_land = spr_playerV_land
				spr_land2 = spr_playerV_land
				spr_lookdoor = spr_playerV_door
				spr_walkfront = spr_playerV_walkout
				spr_victory = spr_player_victory
				spr_Ladder = spr_playerV_ladderstill
				spr_laddermove = spr_playerV_climb
				spr_ladderdown = spr_playerV_downladder
				spr_keyget = spr_playerV_gotkey
				spr_keyget_ss = spr_playerV_gotkey_ss
				spr_crouchslip = spr_playerV_revolverslide

				spr_mach1 = spr_playerV_mach1
				spr_mach = spr_playerV_bootsmove
				spr_secondjump1 = spr_playerV_bootsjump
				spr_secondjump2 = spr_playerV_bootsfall
				spr_machslidestart = spr_playerV_machslidestart
				spr_machslide = spr_playerV_machslide
				spr_machslideend = spr_playerV_machslideend
				spr_machslideboost = spr_playerV_mach2boost

				spr_land2 = spr_playerV_land
				spr_punch = spr_player_punch
				spr_backkick = spr_player_backkick
				spr_shoulder = spr_player_shoulder
				spr_uppunch = spr_player_uppunch
				spr_stomp = spr_playerV_stomp
				spr_stompprep = spr_playerV_stompprep
				spr_crouchslide = spr_player_crouchslide
				spr_crouch = spr_playerV_crouch
				spr_bump = spr_playerV_bump
				spr_victory = spr_playerV_keydoor
				spr_hurt = spr_playerV_hurt
				spr_climbwall = spr_playerV_wallclimb
				spr_grab = spr_player_grab

				spr_mach2jump = spr_playerV_spinjump2
				spr_Timesup = spr_playerV_suprise
				spr_deathstart = spr_player_deathstart
				spr_deathend = spr_player_deathend
				spr_machpunch1 = spr_playerV_machhit1
				spr_machpunch2 = spr_playerV_machhit2
				spr_hurtjump = spr_playerV_hurt
				spr_entergate = spr_playerV_gate
				spr_gottreasure = spr_playerV_gottreasure
				spr_bossintro = spr_player_bossintro
				spr_hurtidle = spr_playerV_panic
				spr_hurtwalk = spr_playerV_move
				spr_suplexmash1 = spr_player_suplexmash1
				spr_suplexmash2 = spr_player_suplexmash2
				spr_suplexmash3 = spr_player_suplexmash3
				spr_suplexmash4 = spr_player_suplexmash4
				spr_tackle = spr_player_tackle
				spr_airdash1 = spr_playerV_bootsfall
				spr_airdash2 = spr_playerV_bootsfall

				spr_idle1 = spr_playerV_idle1
				spr_idle2 = spr_playerV_idle2
				spr_idle3 = spr_playerV_idle3
				spr_idle4 = spr_playerV_idle4
				spr_idle5 = spr_playerV_idle5
				spr_idle6 = spr_playerV_idle6


				spr_piledriver = spr_player_piledriver
				spr_piledriverland = spr_player_piledriverland
				spr_charge = spr_player_charge
				spr_mach3jump = spr_playerV_mach3jump
				spr_mach4 = spr_playerV_mach3

				spr_machclimbwall = spr_playerV_wallclimb
				spr_dive = spr_playerV_dive
				spr_machroll = spr_playerV_divekick
				spr_hitwall = spr_playerV_hitwall


				spr_superjumpland = spr_playerV_hitceilling
				spr_walljumpstart = spr_playerV_walljump
				spr_superjumpprep = spr_player_superjumpprep
				spr_superjump = spr_playerV_superjump

				spr_superjumppreplight = spr_player_superjumppreplight
				spr_superjumpright =  spr_player_superjumpright
				spr_superjumpleft = spr_player_superjumpleft

				spr_machfreefall = spr_playerV_freefall
				spr_mach3hit = spr_playerV_mach3hit

				spr_knightpepwalk = spr_knightpep_walk
				spr_knightpepjump = spr_knightpep_jump
				spr_knightpepfall = spr_knightpep_fall
				spr_knightpepidle = spr_knightpep_idle
				spr_knightpepjumpstart = spr_knightpep_jumpstart
				spr_knightpepthunder = spr_knightpep_thunder
				spr_knightpepland = spr_knightpep_land
				spr_knightpepdownslope = spr_knightpep_downslope
				 spr_knightpepstart =  spr_knightpep_start
				spr_knightpepcharge = spr_knightpep_charge

				spr_bodyslamstart = spr_playerV_bodyslamprep
				spr_bodyslamfall = spr_playerV_bodyslam
				 spr_bodyslamland = spr_playerV_bodyslamland
				 spr_crazyrun = spr_playerV_crazyrun
 
				 spr_bombpeprun = spr_bombpep_run
				spr_bombpepintro = spr_bombpep_intro
				spr_bombpeprunabouttoexplode = spr_bombpep_runabouttoexplode
				spr_bombpepend = spr_bombpep_end
 

				spr_fireass = spr_player_fireass
				spr_fireassground = spr_player_fireassground
				spr_fireassend = spr_player_fireassend
				spr_tumblestart = spr_playerV_tumblestart
				spr_tumbleend = spr_playerV_tumbleend
				spr_tumble = spr_playerV_tumble
				spr_stunned = spr_player_stunned

				spr_downpizzabox = spr_playerV_downbox
				spr_uppizzabox = spr_playerV_upbox

				spr_slipnslide = spr_playerV_slipping

				spr_mach3boost = spr_playerV_mach3boost
				spr_facehurtup = spr_playerV_facehurt
				spr_facehurt = spr_playerV_facehurt

				spr_walljumpend = spr_playerV_walljumpend
				spr_suplexdash = spr_player_suplexdash
				spr_suplexdashjumpstart = spr_player_suplexgrabjumpstart
				spr_suplexdashjump = spr_player_suplexgrabjump
				spr_shotgunsuplexdash = spr_shotgun_suplexdash

				spr_rollgetup = spr_playerV_bootsout

				spr_swingding = spr_player_swingding
				spr_swingdingend = spr_player_swingdingend
				spr_haulingjump = spr_player_haulingjump
				spr_haulingidle = spr_player_haulingidle
				spr_haulingwalk = spr_player_haulingwalk
				spr_haulingstart = spr_player_haulingstart
				spr_haulingfall = spr_player_haulingfall
				spr_haulingland = spr_player_haulingland
				spr_uppercutfinishingblow = spr_player_uppercutfinishingblow
				spr_finishingblow1 = spr_player_finishingblow1
				spr_finishingblow2 = spr_player_finishingblow2
				spr_finishingblow3 = spr_player_finishingblow3
				spr_finishingblow4 = spr_player_finishingblow4
				spr_finishingblow5 = spr_player_finishingblow5

				spr_winding = spr_playerV_winding
				spr_3hpwalk = spr_playerV_angrymove
				spr_3hpidle = spr_playerV_angryidle
				spr_panic = spr_playerV_panic

				spr_facestomp = spr_playerV_bigfall1
				spr_freefall = spr_playerV_bigfall2

				spr_shotgunland = spr_shotgun_land
				spr_shotgunshoot = spr_player_shotgun
				spr_shotgunidle = spr_shotgun_idle
				spr_shotgunwalk = spr_shotgun_walk
				spr_shotgunfall = spr_shotgun_fall
				spr_shotgunjump = spr_shotgun_jump
				spr_shotgunjump1 = spr_player_shotgunjump1
				spr_shotgunjump2 = spr_player_shotgunjump2
				spr_shotgunjump3 = spr_player_shotgunjump3
				spr_shotgunpullout = spr_shotgun_pullout

				spr_shotgunduck = spr_shotgun_duck
				spr_shotguncrawl = spr_shotgun_crawl
				spr_shotgungoduck = spr_shotgun_goduck

				spr_fightball = spr_player_fightball

				spr_squished = spr_playerV_squished
				spr_supertaunt1 = spr_player_supertaunt1
				spr_supertaunt2 = spr_player_supertaunt2
				spr_supertaunt3 = spr_player_supertaunt3
				spr_supertaunt4 = spr_player_supertaunt4
				spr_taunt = spr_playerV_taunt

				spr_rideweenie = spr_playerN_weeniemount
				spr_barrelroll = spr_barrel
				
				spr_ghostidle = spr_playerV_hurt
				spr_ghostjump = spr_playerV_hurt
				spr_ghostend = spr_playerV_hurt
				spr_ghostdash = spr_playerV_hurt
				
				spr_scaredjump1 = spr_playerV_hurt
				spr_scaredjump2 = spr_playerV_hurt
				spr_scaredjump3 = spr_playerV_hurt
				
				spr_parry1 = spr_playerV_idle;
				spr_parry2 = spr_playerV_idle;
				spr_parry3 = spr_playerV_idle;
				
				spr_Current = spr_playerV_slipping;
				spr_suplexcancel = spr_playerV_fall;
				spr_suplexbump = spr_playerV_bump;
				
				spr_firemouth = spr_playerV_move;
				spr_firemouthintro = spr_playerV_idle;
				spr_firemouthshoot = spr_playerV_hurt;
				spr_firemouthend = spr_playerV_idle5;
				
				spr_boxxed_intro = spr_playerV_hurt;
				spr_boxxed_idle = spr_playerV_hurt;
				spr_boxxed_walk = spr_playerV_hurt;
				spr_boxxed_air = spr_playerV_hurt;
				spr_boxxed_dash = spr_playerV_hurt;
				spr_boxxed_jump = spr_playerV_hurt;
				
				spr_dashpadmach = spr_playerV_move;
				spr_dead = spr_playerV_dead
				
				spr_rocketstart = spr_playerV_hurt;
				spr_rocket = spr_playerV_hurt;
				spr_rockethitwall = spr_playerV_hurt;
				
				spr_slipbanan1 = spr_playerV_slipping;
				spr_slipbanan2 = spr_playerV_land;
				
				spr_cheeseballed = spr_playerV_hurt;
				
				spr_rageidle = spr_playerV_angryidle;
				spr_ragemove = spr_playerV_angrymove;
				
				spr_breakdanceuppercut = spr_playerV_superjump;
				spr_breakdanceuppercutend = spr_playerV_fall;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_player_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_player_mortjumpstart;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_player_mortthrow;
				
				spr_superspringplayer = spr_playerV_superjump2;
				
				spr_palette = spr_vigipalette
				paletteselect = 0
				break;
		
		#endregion
		#region SNICK
	
			case "S":
				spr_idle = spr_snick_idle
				spr_move = spr_snick_walk
				spr_crawl =  spr_snick_idle
				spr_idle = spr_snick_idle
				spr_hurt = spr_snick_hurt
				spr_jump = spr_snick_bodyslamstart
				spr_jump2 = spr_snick_fall
				spr_fall = spr_snick_fall
				spr_fall2 = spr_snick_fall
				spr_crouch = spr_snick_idle
				spr_crouchjump = spr_snick_fall
				spr_crouchfall = spr_snick_fall
				spr_couchstart = spr_snick_idle
				spr_bump = spr_snick_bump
				spr_land = spr_snick_idle
				spr_land2 = spr_snick_idle
				spr_lookdoor = spr_snick_lookatdoor
				spr_walkfront = spr_snick_idle
				spr_victory = spr_snick_victory
				spr_Ladder = spr_snick_ladder
				spr_laddermove = spr_snick_climbladder
				spr_ladderdown = spr_snick_climbladder
				spr_keyget = spr_snick_gotkey
				spr_keyget_ss = spr_snick_gotkey_ss
				spr_crouchslip = spr_snick_slide

				spr_mach1 = spr_snick_walk
				spr_mach = spr_snick_mach2
				spr_secondjump1 = spr_snick_jump
				spr_secondjump2 = spr_snick_jump
				spr_machslidestart = spr_snick_machslidestart
				spr_machslide = spr_snick_machslide
				spr_machslideend = spr_snick_machslideend
				spr_machslideboost = spr_snick_machslideend

				spr_land2 = spr_snick_idle
				spr_punch = spr_snick_idle
				spr_backkick =spr_snick_idle
				spr_shoulder = spr_snick_idle
				spr_uppunch = spr_snick_idle
				spr_stomp = spr_snick_fall
				spr_stompprep = spr_snick_bodyslamstart
				spr_crouchslide = spr_snick_slide
				spr_crouch = spr_snick_idle
				spr_bump = spr_snick_bump
				spr_victory = spr_snick_keydoor
				spr_climbwall = spr_snick_climbwall
				spr_grab = spr_snick_idle

				spr_mach2jump = spr_snick_jump
				spr_Timesup = spr_snick_hurt
				spr_deathstart = spr_snick_hurt
				spr_deathend = spr_snick_stunned
				spr_machpunch1 = spr_snick_mach3
				spr_machpunch2 = spr_snick_mach3
				spr_hurtjump = spr_snick_hurt
				spr_entergate = spr_snick_keydoor
				spr_gottreasure = spr_snick_gotkey
				spr_bossintro = spr_snick_hurt
				spr_hurtidle = spr_snick_idle
				spr_hurtwalk = spr_snick_walk
				spr_suplexmash1 = spr_snick_idle
				spr_suplexmash2 = spr_snick_idle
				spr_suplexmash3 = spr_snick_idle
				spr_suplexmash4 = spr_snick_idle
				spr_tackle = spr_snick_bump
				spr_airdash1 = spr_snick_bodyslamstart
				spr_airdash2 = spr_snick_fall

				spr_idle1 = spr_snick_idleanim
				spr_idle2 = spr_snick_idleanim
				spr_idle3 = spr_snick_idleanim
				spr_idle4 = spr_snick_idleanim
				spr_idle5 = spr_snick_idleanim
				spr_idle6 = spr_snick_idleanim

				spr_suplexdash = spr_snick_idle
				spr_piledriver = spr_snick_idle
				spr_piledriverland = spr_snick_idle
				spr_charge = spr_snick_idle
				spr_mach3jump = spr_snick_mach3
				spr_mach4 = spr_snick_mach3
				spr_machclimbwall = spr_snick_climbwall
				spr_dive = spr_snick_dive
				spr_machroll = spr_snick_slide
				spr_hitwall = spr_snick_hitwall

				spr_superjumpland = spr_snick_superjumpland
				spr_walljumpstart = spr_snick_jump
				spr_superjumpprep = spr_snick_superjumpprep
				spr_superjump = spr_snick_superjump
				spr_machfreefall = spr_snick_fall
				spr_mach3hit = spr_snick_mach3
				
				spr_superjumppreplight = spr_snick_superjumplight
				spr_superjumpright =  spr_snick_superjumplight
				spr_superjumpleft = spr_snick_superjumplight
				spr_knightpepwalk = spr_snick_robotwalk
				spr_knightpepjump = spr_snick_robotjump
				spr_knightpepfall = spr_snick_robotfall
				spr_knightpepidle = spr_snick_robotidle
				spr_knightpepjumpstart = spr_snick_robotjumpstart
				spr_knightpepthunder = spr_snick_thunder
				spr_knightpepland = spr_snick_robotland
				spr_knightpepdownslope = spr_snick_robotslope
				 spr_knightpepstart =  spr_snick_robotstart
				spr_knightpepcharge = spr_snick_robotwalk

				 spr_crazyrun = spr_snick_superpeelout

				spr_bodyslamstart = spr_snick_bodyslamstart
				spr_bodyslamfall = spr_snick_bodyslam
				 spr_bodyslamland = spr_snick_bodyslamland

				spr_bombpeprun = spr_snick_bomb
				spr_bombpepintro = spr_snick_bombstart
				spr_bombpeprunabouttoexplode = spr_snick_bombabouttoexplode
				spr_bombpepend = spr_snick_bombend

				spr_fireass = spr_snick_fireass1
				spr_fireassground = spr_snick_fireass2
				spr_fireassend = spr_snick_recover
				spr_tumblestart = spr_snick_idle
				spr_tumbleend = spr_snick_bump
				spr_tumble = spr_snick_tumble

				spr_stunned = spr_snick_stunned
				spr_downpizzabox = spr_snick_downbox
				spr_uppizzabox = spr_snick_upbox

				spr_squished = spr_snick_stunned

				spr_supertaunt1 = spr_snick_taunt
				spr_supertaunt2 = spr_snick_taunt
				spr_supertaunt3 = spr_snick_taunt
				spr_supertaunt4 = spr_snick_taunt

				spr_taunt = spr_snick_taunt
				spr_slipnslide = spr_snick_hurt

				spr_3hpwalk = spr_snick_walk
				spr_3hpidle = spr_snick_idle
				
				spr_rideweenie = spr_snick_weeniemount
				spr_barrelroll = spr_snick_barrelroll
				
				spr_ghostidle = spr_player_ghostidle
				spr_ghostjump = spr_player_ghostjump
				spr_ghostend = spr_player_ghostend
				spr_ghostdash = spr_player_ghostdash
				
				spr_scaredjump1 = spr_snick_fireass1
				spr_scaredjump2 = spr_snick_fireass1
				spr_scaredjump3 = spr_snick_fireass2
				
				spr_parry1 = spr_snick_idle;
				spr_parry2 = spr_snick_idle;
				spr_parry3 = spr_snick_idle;
				
				spr_Current = spr_snick_slide;
				spr_suplexcancel = spr_snick_fall;
				spr_suplexbump = spr_snick_bump;
				
				spr_firemouth = spr_snick_firemouthrun;
				spr_firemouthintro = spr_snick_firemouthstart;
				spr_firemouthshoot = spr_snick_firemouthrun;
				spr_firemouthend = spr_snick_stunned;
				
				spr_boxxed_intro = spr_boxxedpep_intro;
				spr_boxxed_idle = spr_boxxedpep_idle;
				spr_boxxed_walk = spr_boxxedpep_walk;
				spr_boxxed_air = spr_boxxedpep_air;
				spr_boxxed_dash = spr_boxxedpep_dash;
				spr_boxxed_jump = spr_boxxedpep_jump;
				
				spr_dashpadmach = spr_snick_walk;
				spr_dead = spr_snick_stunned
				
				spr_rocketstart = spr_player_rocketstart;
				spr_rocket = spr_player_rocket;
				spr_rockethitwall = spr_player_rockethitwall;
				
				spr_slipbanan1 = spr_snick_hurt;
				spr_slipbanan2 = spr_snick_slide;
				
				spr_cheeseballed = spr_snick_cheeseball;
				
				spr_rageidle = spr_snick_idle;
				spr_ragemove = spr_snick_walk;
				
				spr_breakdanceuppercut = spr_snick_bodyslamstart;
				spr_breakdanceuppercutend = spr_snick_fall;
				
				spr_suplexland = spr_player_backflip;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_player_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_player_mortjumpstart;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_player_mortthrow;
				
				spr_superspringplayer = spr_snick_superjump;
				
				spr_palette = spr_snickpalette
				paletteselect = 0
				break
	
		#endregion
		#region PIZZELLE
	
			case "SP":
				spr_idle = spr_playerSP_idle
				spr_move = spr_playerSP_move
				spr_hurt = spr_playerSP_hurt
				spr_jump = spr_playerSP_jump
				spr_jump2 = spr_player_jump2
				spr_fall = spr_playerSP_fall
				spr_fall2 = spr_player_fall2
				spr_crouch = spr_playerSP_crouch
				spr_crouchjump = spr_playerSP_crouchjump
				spr_crouchfall = spr_playerSP_crouchfall
				spr_couchstart = spr_playerSP_crouchstart
				spr_crawl = spr_playerSP_crawl
				spr_bump = spr_playerSP_bump
				spr_land = spr_playerSP_land
				spr_land2 = spr_playerSP_land2
				spr_lookdoor = spr_playerSP_lookdoor
				spr_walkfront = spr_playerSP_walkfront
				spr_victory = spr_playerSP_victory
				spr_Ladder = spr_playerSP_ladder
				spr_laddermove = spr_playerSP_laddermove
				spr_ladderdown = spr_playerSP_ladderdown
				spr_keyget = spr_playerSP_keyget
				spr_keyget_ss = spr_playerSP_keyget_ss
				spr_crouchslip = spr_playerSP_crouchslip
				
				spr_mach1 = spr_playerSP_mach1
				spr_mach = spr_playerSP_mach2
				spr_secondjump1 = spr_playerSP_secondjump1
				spr_secondjump2 = spr_playerSP_secondjump2
				spr_machslidestart = spr_playerSP_machslidestart
				spr_machslide = spr_playerSP_machslide
				spr_machslideend = spr_playerSP_machslideend
				spr_machslideboost = spr_playerSP_machslideboost
				spr_mach3boost = spr_playerSP_machslideboost3
				spr_mach2jump = spr_playerSP_mach2jump
				spr_machpunch1 = spr_playerSP_machpunch1
				spr_machpunch2 = spr_playerSP_machpunch2
				spr_mach3jump = spr_playerSP_mach3jump
				spr_mach4 = spr_playerSP_mach4

				spr_punch = spr_playerSP_punch
				spr_backkick = spr_player_backkick
				spr_shoulder = spr_player_shoulder
				spr_uppunch = spr_player_uppunch
				spr_stomp = spr_playerSP_stomp
				spr_stompprep = spr_playerSP_stompprep
				spr_crouchslide = spr_playerSP_crouchslip
				spr_climbwall = spr_playerSP_climbwall
				spr_grab = spr_player_grab

				spr_Timesup = spr_playerSP_timesup
				spr_deathstart = spr_player_deathstart
				spr_deathend = spr_player_deathend
				spr_hurtjump = spr_playerSP_hurt
				spr_entergate = spr_playerSP_entergate
				spr_gottreasure = spr_player_gottreasure
				spr_bossintro = spr_playerSP_bossintro
				spr_hurtidle = spr_player_hurtidle
				spr_hurtwalk = spr_player_hurtwalk
				spr_suplexmash1 = spr_playerSP_suplexmash1
				spr_suplexmash2 = spr_playerSP_suplexmash2
				spr_suplexmash3 = spr_playerSP_suplexmash3
				spr_suplexmash4 = spr_playerSP_suplexmash4
				spr_tackle = spr_playerSP_tackle
				spr_airdash1 = spr_playerSP_airdash1
				spr_airdash2 = spr_playerSP_airdash2

				spr_idle1 = spr_playerSP_idlegesture1
				spr_idle2 = spr_playerSP_idlegesture2
				spr_idle3 = spr_playerSP_idlegesture1
				spr_idle4 = spr_playerSP_idlegesture2
				spr_idle5 = spr_playerSP_idlegesture1
				spr_idle6 = spr_playerSP_idlegesture2

				spr_piledriver = spr_playerSP_piledriver
				spr_piledriverland = spr_playerSP_piledriverland
				spr_charge = spr_playerSP_tackle

				spr_machclimbwall = spr_playerSP_climbwall
				spr_dive = spr_playerSP_dive
				spr_machroll = spr_playerSP_machroll
				spr_hitwall = spr_playerSP_mach3hitwall

				spr_superjumpland = spr_playerSP_superjumpland
				spr_walljumpstart = spr_playerSP_mach2jump
				spr_superjumpprep = spr_playerSP_superjumpprep
				spr_superjump = spr_playerSP_superjump

				spr_superjumppreplight = spr_playerSP_superjumppreplight
				spr_superjumpright =  spr_playerSP_superjumpright
				spr_superjumpleft = spr_playerSP_superjumpleft

				spr_machfreefall = spr_playerSP_machfreefall
				spr_mach3hit = spr_player_mach3hit

				spr_knightpepwalk = spr_playerSP_knightwalk
				spr_knightpepjump = spr_playerSP_knightjump
				spr_knightpepfall = spr_playerSP_knightfall
				spr_knightpepidle = spr_playerSP_knightidle
				spr_knightpepjumpstart = spr_playerSP_knightjumpstart
				spr_knightpepthunder = spr_playerSP_knightthunder
				spr_knightpepland = spr_playerSP_knightland
				spr_knightpepdownslope = spr_playerSP_knightslope
				spr_knightpepstart = spr_playerSP_knightstart
				spr_knightpepcharge = spr_playerSP_knightcharge
				
				spr_bodyslamstart = spr_playerSP_bodyslamstart
				spr_bodyslamfall = spr_playerSP_bodyslamfall
				spr_bodyslamland = spr_playerSP_bodyslamland
				spr_crazyrun = spr_playerSP_crazyrun
				
				spr_bombpeprun = spr_playerSP_bombrun
				spr_bombpepintro = spr_playerSP_bombintro
				spr_bombpeprunabouttoexplode = spr_playerSP_bombrunabouttoexplode
				spr_bombpepend = spr_playerSP_bombend
				
				spr_fireass = spr_playerSP_fireass
				spr_fireassground = spr_playerSP_fireassground
				spr_fireassend = spr_player_fireassend
				spr_tumblestart = spr_playerSP_tumblestart
				spr_tumbleend = spr_playerSP_tumbleend
				spr_tumble = spr_playerSP_tumble
				spr_stunned = spr_playerSP_stunned

				spr_downpizzabox = spr_player_downpizzabox
				spr_uppizzabox = spr_player_uppizzabox

				spr_slipnslide = spr_playerSP_slipnslide
				
				spr_facehurtup = spr_player_facehurtup
				spr_facehurt = spr_player_facehurt
				
				spr_walljumpend = spr_playerSP_mach2jump
				spr_suplexdash = spr_playerSP_suplexdash
				spr_suplexdashjumpstart = spr_playerSP_suplexgrabjump
				spr_suplexdashjump = spr_playerSP_suplexgrabjump
				spr_shotgunsuplexdash = spr_shotgun_suplexdash
				
				spr_rollgetup = spr_playerSP_rollgetup
				
				spr_swingding = spr_player_swingding
				spr_swingdingend = spr_player_swingdingend
				spr_haulingjump = spr_playerSP_haulingjump
				spr_haulingidle = spr_playerSP_haulingidle
				spr_haulingwalk = spr_playerSP_haulingwalk
				spr_haulingstart = spr_playerSP_haulingstart
				spr_haulingfall = spr_playerSP_haulingfall
				spr_haulingland = spr_playerSP_haulingland
				spr_uppercutfinishingblow = spr_playerSP_uppercutfinishingblow
				spr_finishingblow1 = spr_playerSP_finishingblow1
				spr_finishingblow2 = spr_playerSP_finishingblow2
				spr_finishingblow3 = spr_playerSP_finishingblow3
				spr_finishingblow4 = spr_playerSP_finishingblow4
				spr_finishingblow5 = spr_playerSP_finishingblow1
				
				spr_winding = spr_player_winding
				spr_3hpwalk = spr_playerSP_3hpwalk
				spr_3hpidle = spr_playerSP_3hpidle
				spr_panic = spr_player_panic
				
				spr_facestomp = spr_playerSP_machfreefall1
				spr_freefall = spr_playerSP_machfreefall2
				
				spr_shotgunland = spr_shotgun_land
				spr_shotgunshoot = spr_player_shotgun
				spr_shotgunidle = spr_shotgun_idle
				spr_shotgunwalk = spr_shotgun_walk
				spr_shotgunfall = spr_shotgun_fall
				spr_shotgunjump = spr_shotgun_jump
				spr_shotgunjump1 = spr_player_shotgunjump1
				spr_shotgunjump2 = spr_player_shotgunjump2
				spr_shotgunjump3 = spr_player_shotgunjump3
				spr_shotgunpullout = spr_shotgun_pullout

				spr_shotgunduck = spr_shotgun_duck
				spr_shotguncrawl = spr_shotgun_crawl
				spr_shotgungoduck = spr_shotgun_goduck

				spr_fightball = spr_player_fightball

				spr_squished = spr_player_squished
				spr_supertaunt1 = spr_playerSP_supertaunt
				spr_supertaunt2 = spr_playerSP_supertaunt
				spr_supertaunt3 = spr_playerSP_supertaunt
				spr_supertaunt4 = spr_playerSP_supertaunt
				
				spr_taunt = spr_playerSP_taunt
				
				spr_rideweenie = spr_player_weeniemount
				spr_barrelroll = spr_player_barrelroll
				
				spr_ghostidle = spr_playerSP_ghost
				spr_ghostjump = spr_playerSP_ghostjump
				spr_ghostend = spr_player_ghostend
				spr_ghostdash = spr_playerSP_ghostdash
				
				spr_scaredjump1 = spr_player_scaredjump1
				spr_scaredjump2 = spr_player_scaredjump2
				spr_scaredjump3 = spr_player_scaredjump3
				
				spr_parry1 = spr_playerSP_parry1;
				spr_parry2 = spr_playerSP_parry2;
				spr_parry3 = spr_playerSP_parry3;
				
				spr_Current = spr_playerSP_current;
				spr_suplexcancel = spr_player_suplexcancel;
				spr_suplexbump = spr_player_suplexbump;
				
				spr_firemouth = spr_player_firemouth;
				spr_firemouthintro = spr_player_firemouthintro;
				spr_firemouthshoot = spr_player_firemouthshoot;
				spr_firemouthend = spr_player_firemouthend;
				
				spr_boxxed_intro = spr_playerSP_boxxedstart;
				spr_boxxed_idle = spr_playerSP_boxxedidle;
				spr_boxxed_walk = spr_playerSP_boxxedmove;
				spr_boxxed_air = spr_playerSP_boxxedfall;
				spr_boxxed_dash = spr_playerSP_boxxeddash;
				spr_boxxed_jump = spr_playerSP_boxxedfall;
				
				spr_dashpadmach = spr_playerSP_dashpad;
				spr_dead = spr_playerSP_dead;
				
				spr_rocketstart = spr_player_rocketstart;
				spr_rocket = spr_player_rocket;
				spr_rockethitwall = spr_player_rockethitwall;
				
				spr_slipbanan1 = spr_playerSP_slipbanan;
				spr_slipbanan2 = spr_playerSP_slipbanan2;
				
				spr_cheeseballed = spr_playerSP_cheeseball;
				
				spr_rageidle = spr_player_rageidle;
				spr_ragemove = spr_player_ragemove;
				
				spr_breakdanceuppercut = spr_playerSP_uppercut;
				spr_breakdanceuppercutend = spr_playerSP_uppercutend;
				
				spr_suplexland = spr_player_backflip;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_player_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_player_mortjumpstart;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_player_mortthrow;
				
				spr_superspringplayer = spr_playerSP_present;
				
				spr_palette = spr_pizzpalette;
				paletteselect = check_shaders();
				
				// SOUNDS
				snd_fireass = sfx_screamSP;
				break;
	
		#endregion
		#region GLADE
		
			case "G":
				spr_idle = spr_playerG_idle
				spr_move = spr_playerG_move
				spr_crawl = spr_player_crawl // REPLACE
				spr_hurt = spr_playerG_hurt
				spr_jump = spr_playerG_jump
				spr_jump2 = spr_player_jump2 // unused
				spr_fall = spr_playerG_fall // REPLACE
				spr_fall2 = spr_player_fall2 // unused
				spr_crouch = spr_playerG_crouch // REPLACE
				spr_crouchjump = spr_player_crouchjump // REPLACE
				spr_crouchfall = spr_player_crouchfall // REPLACE
				spr_couchstart = spr_playerG_crouchstart // REPLACE
				spr_bump = spr_player_bump // REPLACE
				spr_land = spr_playerG_land // REPLACE
				spr_land2 = spr_playerG_land2 // REPLACE
				spr_lookdoor = spr_player_lookdoor // REPLACE
				spr_walkfront = spr_player_walkfront // REPLACE
				spr_victory = spr_player_victory // REPLACE
				spr_Ladder = spr_player_ladder // REPLACE
				spr_laddermove = spr_player_laddermove // REPLACE
				spr_ladderdown = spr_player_ladderdown // REPLACE
				spr_keyget = spr_player_keyget // REPLACE
				spr_keyget_ss = spr_player_keyget_ss
				spr_crouchslip = spr_playerG_crouchslip
				
				spr_idle1 = spr_playerG_idlephone
				spr_idle2 = spr_playerG_idlephone
				spr_idle3 = spr_playerG_idlephone
				spr_idle4 = spr_playerG_idlephone
				spr_idle5 = spr_playerG_idlephone
				spr_idle6 = spr_playerG_idlephone

				spr_mach1 = spr_playerG_mach1
				spr_mach = spr_playerG_mach
				spr_secondjump1 = spr_player_secondjump1 // REPLACE
				spr_secondjump2 = spr_player_secondjump2 // REPLACE
				spr_machslidestart = spr_player_machslidestart // REPLACE
				spr_machslide = spr_player_machslide // REPLACE
				spr_machslideend = spr_player_machslideend // REPLACE
				spr_machslideboost = spr_player_machslideboost // REPLACE
				
				spr_punch = spr_player_punch
				spr_backkick = spr_player_backkick
				spr_shoulder = spr_player_shoulder
				spr_uppunch = spr_player_uppunch
				spr_stomp = spr_player_stomp
				spr_stompprep = spr_player_stompprep
				spr_crouchslide = spr_player_crouchslide
				spr_bump = spr_player_bump
				spr_victory = spr_player_victory
				spr_climbwall = spr_player_climbwall
				spr_grab = spr_player_grab

				spr_mach2jump = spr_player_mach2jump
				spr_Timesup = spr_player_timesup
				spr_deathstart = spr_player_deathstart
				spr_deathend = spr_player_deathend
				spr_machpunch1 = spr_player_machpunch1
				spr_machpunch2 = spr_player_machpunch2
				spr_hurtjump = spr_player_jumphurt
				spr_entergate = spr_player_entergate
				spr_gottreasure = spr_player_gottreasure
				spr_bossintro = spr_player_bossintro
				spr_hurtidle = spr_player_hurtidle
				spr_hurtwalk = spr_player_hurtwalk
				spr_suplexmash1 = spr_player_suplexmash1
				spr_suplexmash2 = spr_player_suplexmash2
				spr_suplexmash3 = spr_player_suplexmash3
				spr_suplexmash4 = spr_player_suplexmash4
				spr_tackle = spr_player_tackle
				spr_airdash1 = spr_player_airdash1
				spr_airdash2 = spr_player_airdash2

				spr_piledriver = spr_player_piledriver
				spr_piledriverland = spr_player_piledriverland
				spr_charge = spr_player_charge
				spr_mach3jump = spr_player_mach3jump
				spr_mach4 = spr_playerG_mach4

				spr_machclimbwall = spr_player_climbwall
				spr_dive = spr_player_dive
				spr_machroll = spr_player_machroll
				spr_hitwall = spr_player_mach3hitwall


				spr_superjumpland = spr_player_superjumpland
				spr_walljumpstart = spr_player_walljumpstart
				spr_superjumpprep = spr_player_superjumpprep
				spr_superjump = spr_player_superjump

				spr_superjumppreplight = spr_player_superjumppreplight
				spr_superjumpright =  spr_player_superjumpright
				spr_superjumpleft = spr_player_superjumpleft

				spr_machfreefall = spr_player_machfreefall
				spr_mach3hit = spr_player_mach3hit

				spr_knightpepwalk = spr_knightpep_walk
				spr_knightpepjump = spr_knightpep_jump
				spr_knightpepfall = spr_knightpep_fall
				spr_knightpepidle = spr_knightpep_idle
				spr_knightpepjumpstart = spr_knightpep_jumpstart
				spr_knightpepthunder = spr_knightpep_thunder
				spr_knightpepland = spr_knightpep_land
				spr_knightpepdownslope = spr_knightpep_downslope
				spr_knightpepstart =  spr_knightpep_start
				spr_knightpepcharge = spr_knightpep_charge

				spr_bodyslamstart = spr_player_bodyslamstart
				spr_bodyslamfall = spr_player_bodyslamfall
				spr_bodyslamland = spr_player_bodyslamland // REPLACE
				spr_crazyrun = spr_playerG_crazyrun

				spr_bombpeprun = spr_bombpep_run // REPLACE
				spr_bombpepintro = spr_bombpep_intro
				spr_bombpeprunabouttoexplode = spr_bombpep_runabouttoexplode
				spr_bombpepend = spr_bombpep_end
 

				spr_fireass = spr_player_fireass
				spr_fireassground = spr_player_fireassground
				spr_fireassend = spr_player_fireassend
				spr_tumblestart = spr_player_tumblestart
				spr_tumbleend = spr_player_tumbleend
				spr_tumble = spr_player_tumble
				spr_stunned = spr_player_stunned

				spr_downpizzabox = spr_player_downpizzabox
				spr_uppizzabox = spr_player_uppizzabox

				spr_slipnslide = spr_player_slipnslide

				spr_mach3boost = spr_player_machslideboost3
				spr_facehurtup = spr_player_facehurtup
				spr_facehurt = spr_player_facehurt

				spr_walljumpend = spr_player_walljumpend
				spr_suplexdash = spr_player_suplexdash
				spr_suplexdashjumpstart = spr_player_suplexgrabjumpstart
				spr_suplexdashjump = spr_player_suplexgrabjump
				spr_shotgunsuplexdash = spr_shotgun_suplexdash

				spr_rollgetup = spr_player_rollgetup

				spr_swingding = spr_player_swingding
				spr_swingdingend = spr_player_swingdingend
				spr_haulingjump = spr_player_haulingjump
				spr_haulingidle = spr_player_haulingidle
				spr_haulingwalk = spr_player_haulingwalk
				spr_haulingstart = spr_player_haulingstart
				spr_haulingfall = spr_player_haulingfall
				spr_haulingland = spr_player_haulingland
				spr_uppercutfinishingblow = spr_player_uppercutfinishingblow
				spr_finishingblow1 = spr_player_finishingblow1
				spr_finishingblow2 = spr_player_finishingblow2
				spr_finishingblow3 = spr_player_finishingblow3
				spr_finishingblow4 = spr_player_finishingblow4
				spr_finishingblow5 = spr_player_finishingblow5

				spr_winding = spr_player_winding
				spr_3hpwalk = spr_player_3hpwalk
				spr_3hpidle = spr_player_3hpidle
				spr_panic = spr_player_panic

				spr_facestomp = spr_player_facestomp
				spr_freefall = spr_player_freefall

				spr_shotgunland = spr_shotgun_land
				spr_shotgunshoot = spr_player_shotgun
				spr_shotgunidle = spr_shotgun_idle
				spr_shotgunwalk = spr_shotgun_walk
				spr_shotgunfall = spr_shotgun_fall
				spr_shotgunjump = spr_shotgun_jump
				spr_shotgunjump1 = spr_player_shotgunjump1
				spr_shotgunjump2 = spr_player_shotgunjump2
				spr_shotgunjump3 = spr_player_shotgunjump3
				spr_shotgunpullout = spr_shotgun_pullout

				spr_shotgunduck = spr_shotgun_duck
				spr_shotguncrawl = spr_shotgun_crawl
				spr_shotgungoduck = spr_shotgun_goduck

				spr_fightball = spr_player_fightball
				spr_squished = spr_player_squished
				
				spr_supertaunt1 = spr_player_supertaunt1
				spr_supertaunt2 = spr_player_supertaunt2
				spr_supertaunt3 = spr_player_supertaunt3
				spr_supertaunt4 = spr_player_supertaunt4
				spr_taunt = spr_playerG_taunt

				spr_rideweenie = spr_player_weeniemount
				spr_barrelroll = spr_player_barrelroll
				
				spr_ghostidle = spr_player_ghostidle
				spr_ghostjump = spr_player_ghostjump
				spr_ghostend = spr_player_ghostend
				spr_ghostdash = spr_player_ghostdash
				
				spr_scaredjump1 = spr_player_scaredjump1
				spr_scaredjump2 = spr_player_scaredjump2
				spr_scaredjump3 = spr_player_scaredjump3
				
				spr_parry1 = spr_player_parry1;
				spr_parry2 = spr_player_parry2;
				spr_parry3 = spr_player_parry3;
				
				spr_Current = spr_player_current;
				spr_suplexcancel = spr_player_suplexcancel;
				spr_suplexbump = spr_player_suplexbump;
				
				spr_firemouth = spr_player_firemouth;
				spr_firemouthintro = spr_player_firemouthintro;
				spr_firemouthshoot = spr_player_firemouthshoot;
				spr_firemouthend = spr_player_firemouthend;
				
				spr_boxxed_intro = spr_boxxedpep_intro;
				spr_boxxed_idle = spr_boxxedpep_idle;
				spr_boxxed_walk = spr_boxxedpep_walk;
				spr_boxxed_air = spr_boxxedpep_air;
				spr_boxxed_dash = spr_boxxedpep_dash;
				
				spr_dashpadmach = spr_player_dashpad;
				spr_dead = spr_player_deathend
				
				spr_rocketstart = spr_player_rocketstart;
				spr_rocket = spr_player_rocket;
				spr_rockethitwall = spr_player_rockethitwall;
				
				spr_slipbanan1 = spr_player_slipbanan1;
				spr_slipbanan2 = spr_player_slipbanan2;
				
				spr_cheeseballed = spr_player_cheeseball;
				
				spr_rageidle = spr_player_rageidle;
				spr_ragemove = spr_player_ragemove;
				
				spr_breakdanceuppercut = spr_player_breakdanceuppercut;
				spr_breakdanceuppercutend = spr_player_breakdanceuppercutend;
				
				spr_suplexland = spr_player_backflip;
				
				spr_pmortwalk = spr_player_mortwalk;
				spr_pmortidle = spr_player_mortidle;
				spr_pmortjump = spr_player_mortjump;
				spr_pmortattack = spr_player_mortattack;
				spr_pmortjumpstart = spr_player_mortjumpstart;
				spr_pmortland = spr_player_mortland;
				spr_pmortthrow = spr_player_mortthrow;
				
				spr_superspringplayer = spr_player_presentbox;
				
				spr_pistolidle = spr_player_pistolidle;
				spr_pistolwalk = spr_player_pistolwalk;
				spr_pistolshot = spr_player_pistolshot;
				spr_pistolshotend = spr_player_pistolshotend;
				
				spr_palette = spr_gladepalette;
				paletteselect = 0;
				break;
		
		#endregion
	}
	pal_swap_index_palette(spr_palette);
}
