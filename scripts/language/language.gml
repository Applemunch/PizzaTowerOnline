// language
function lang_string(str)
{
	var ret = global.langmap[? str];
	if is_undefined(ret)
		ret = str;
	
	return ret;
}

function lang_sprite(spr)
{
	var ret = global.langspr[? spr];
	if is_undefined(ret)
		ret = spr;
	
	return ret;
}

function lang_load(lang)
{
	/*
	try
	{
		var _buf = buffer_load("lang/lang-" + global.language + ".json");
		if _buf > -1
		{
			global.langmap = json_decode(string(buffer_read(_buf, buffer_string)));
			buffer_delete(_buf);
		}
	}
	*/
	global.langmap = ds_map_create();
	global.langspr = ds_map_create();
	
	#region english
	
	if lang == "en"
	{
		// SPRITES
		
		
		// TEXT
		ds_map_add(global.langmap, "load.loading", "LOADING");
		ds_map_add(global.langmap, "load.txgrp", "PRE-LOADING SPRITES");
		ds_map_add(global.langmap, "load.unusual", "This is taking unusually long to load.\nEither wait or restart the game.");
		
		ds_map_add(global.langmap, "general.wc", "Welcome to the developer console");
		ds_map_add(global.langmap, "general.crash", "The game crashed last time.");
		ds_map_add(global.langmap, "general.crash.con", "Press start to play");
		ds_map_add(global.langmap, "general.crashed", "The game crashed! longMessage:\n\n");
		ds_map_add(global.langmap, "general.drm", "Congratulations!\nYou played yourself\n\nPress R to restart the game");
		ds_map_add(global.langmap, "general.drm.wait", "(Restarting)");
		ds_map_add(global.langmap, "drpc.nullino", "Playing as who?");
		
		ds_map_add(global.langmap, "disclaimer.title", "DISCLAIMER");
		ds_map_add(global.langmap, "disclaimer.continue", "Press ENTER to play");
		ds_map_add(global.langmap, "disclaimer.outdated", "Outdated version!\n\nUsually this means something really bad happened and\nthe creator wants to block an older version from working.");
		ds_map_add(global.langmap, "disclaimer.error", "Server error!\nI can't do anything about this, so just wait and try again.");
		ds_map_add(global.langmap, "disclaimer.errornodrm", "Status not success, error.\nServers might be unavailable.\n\nRunning in offline mode.");
		ds_map_add(global.langmap, "disclaimer.offline", "You have stumbled upon the asshole version of this disclaimer.\n\nYou can't start the game offline.\nConnect to the internet, then we're talkin'.");
		ds_map_add(global.langmap, "disclaimer.offlinenodrm", "You are playing offline.\nSome features will be disabled.");
		
		// options 1
		ds_map_add(global.langmap, "options.fullscreen", "FULLSCREEN");
		ds_map_add(global.langmap, "options.on", "ON");
		ds_map_add(global.langmap, "options.off", "OFF");
		ds_map_add(global.langmap, "options.resolution", "RESOLUTION");
		ds_map_add(global.langmap, "options.keyconfig", "KEY CONFIG");
		ds_map_add(global.langmap, "options.soundconfig", "SOUND CONFIG");
		ds_map_add(global.langmap, "options.otherconfig", "OTHER CONFIG");
		
		ds_map_add(global.langmap, "options.sound.master", "MASTER VOLUME");
		ds_map_add(global.langmap, "options.sound.music", "MUSIC VOLUME");
		ds_map_add(global.langmap, "options.sound.sound", "SOUND VOLUME");
		ds_map_add(global.langmap, "options.sound.mach", "MACH SOUND");
		ds_map_add(global.langmap, "options.sound.machold", "OLD");
		ds_map_add(global.langmap, "options.sound.machnew", "NEW");
		ds_map_add(global.langmap, "options.sound.game", "MUSIC TYPE");
		ds_map_add(global.langmap, "options.sound.normal", "NORMAL");
		ds_map_add(global.langmap, "options.sound.castle", "MIDIS");
		
		ds_map_add(global.langmap, "options.erase.text", "ARE YOU SURE?");
		ds_map_add(global.langmap, "options.erase.no", "NO");
		ds_map_add(global.langmap, "options.erase.yes", "YES");
		
		// other options
		ds_map_add(global.langmap, "options.other.erase", "Erase Game");
		ds_map_add(global.langmap, "options.other.gameplay", "Gameplay Style");
		ds_map_add(global.langmap, "options.other.wavybg", "Escape - Wavy Background");
		ds_map_add(global.langmap, "options.other.blur", "Escape - Motion Blur");
		ds_map_add(global.langmap, "options.other.shaky", "Escape - Screen Shake");
		ds_map_add(global.langmap, "options.other.panicbg", "Escape - Backgrounds");
		ds_map_add(global.langmap, "options.other.afterimage", "Visual - Fancy Afterimages");
		ds_map_add(global.langmap, "options.other.demo3", "Visual - Fancy Debris");
		ds_map_add(global.langmap, "options.other.playernames", "Online - Show Names");
		ds_map_add(global.langmap, "options.other.chatbubbles", "Online - Chat Bubbles");
		ds_map_add(global.langmap, "options.other.synceffects", "Online - Sync Effects");
		ds_map_add(global.langmap, "options.other.fuckoffptd", "Online - Streamer Mode");
		ds_map_add(global.langmap, "options.other.onlinepvp", "Online - PvP");
		ds_map_add(global.langmap, "options.other.drpc", "Other - Discord Rich Presence");
		ds_map_add(global.langmap, "options.other.fpscount", "Other - FPS Counter");
		ds_map_add(global.langmap, "options.other.camsmooth", "Other - Smooth Camera");
		ds_map_add(global.langmap, "options.other.screenshader", "Other - Screen Shader");
		
		// other options descriptions and stuff
		ds_map_add(global.langmap, "options.other.erase.desc", "All your progress, gone. Game will restart.");
		
		ds_map_add(global.langmap, "options.other.gameplay.desc", "The game changed a lot throughout development.\nSome people may prefer older moveset and music.");
		ds_map_add(global.langmap, "options.other.gameplay.nonpatron", "This option is reserved for Patrons only.");
		ds_map_add(global.langmap, "options.other.gameplay.old", "OLD");
		ds_map_add(global.langmap, "options.other.gameplay.remix", "REMIX");
		ds_map_add(global.langmap, "options.other.gameplay.final", "FINAL");
		ds_map_add(global.langmap, "options.other.gameplay.old.desc", "Moveset mostly from before the April 2021 Patreon build.");
		ds_map_add(global.langmap, "options.other.gameplay.final.desc", "Recreation of the final version of the game.");
		ds_map_add(global.langmap, "options.other.gameplay.remix.desc", "Makes the \"perfect mix\" between the two gameplay styles.\nYou can suggest non-OP changes for this one.\n\n(Unfinished. Very similar to NEW gameplay currently.)");
		
		ds_map_add(global.langmap, "options.other.wavybg.title", "WAVY BACKGROUND");
		ds_map_add(global.langmap, "options.other.wavybg.desc", "When it's Pizza Time, the background slowly distorts\nand tints red depending on your time left.");
		ds_map_add(global.langmap, "options.other.wavybg.locked", "Shit Graphix mode on. This option is locked.");
		ds_map_add(global.langmap, "options.other.wavybg.shaderfail", "Shaders not compiled.\nPlease restart the game.");
		
		ds_map_add(global.langmap, "options.other.blur.title", "MOTION BLUR");
		ds_map_add(global.langmap, "options.other.blur.desc", "When it's Pizza Time, the screen will have motion blur.\nIt gets more intense depending on your time left.");
		
		ds_map_add(global.langmap, "options.other.shaky.title", "ESCAPE SHAKE");
		ds_map_add(global.langmap, "options.other.shaky.desc", "When it's Pizza Time, the screen will shake.");
		
		ds_map_add(global.langmap, "options.other.panicbg.title", "ESCAPE BACKGROUND");
		ds_map_add(global.langmap, "options.other.panicbg.desc", "When it's Pizza Time, some backgrounds will change.");
		
		ds_map_add(global.langmap, "options.other.afterimage.title", "FANCY AFTERIMAGES");
		ds_map_add(global.langmap, "options.other.afterimage.desc", "Applies your current palette to the colored afterimages.\nThis is a nearly unnoticeable detail that just tanks on performance.\nGood to have the option, though.");
		
		ds_map_add(global.langmap, "options.other.demo3.title", "TILED DEBRIS");
		ds_map_add(global.langmap, "options.other.demo3.desc", "Secret tile particles will show their respective\ntiles on them instead of a generic block's.");
		
		ds_map_add(global.langmap, "options.other.playernames.title", "SHOW NAMES");
		ds_map_add(global.langmap, "options.other.playernames.desc", "Show other people's usernames when playing online.");
		ds_map_add(global.langmap, "options.other.playernames.example", "Player");
		
		ds_map_add(global.langmap, "options.other.chatbubbles.title", "CHAT BUBBLES");
		ds_map_add(global.langmap, "options.other.chatbubbles.desc", "Show other people's last messages when they chat.");
		ds_map_add(global.langmap, "options.other.chatbubbles.example", "Hello what are your thoughts on Big Chungus");
		
		ds_map_add(global.langmap, "options.other.onlinepvp.title", "PVP");
		ds_map_add(global.langmap, "options.other.onlinepvp.desc", "Attack other players. The other player will need PVP enabled too.");
		
		ds_map_add(global.langmap, "options.other.synceffects.title", "SYNC EFFECTS");
		ds_map_add(global.langmap, "options.other.synceffects.desc", "Sync effects like afterimages or taunts in online mode.");
		
		ds_map_add(global.langmap, "options.other.fuckoffptd.title", "STREAMER MODE");
		ds_map_add(global.langmap, "options.other.fuckoffptd.desc", "Replaces *most* player names with their player IDs.");
		ds_map_add(global.langmap, "options.other.fuckoffptd.example1", "COOLSKELETON95");
		ds_map_add(global.langmap, "options.other.fuckoffptd.example2", "Player72103");
		
		ds_map_add(global.langmap, "options.other.drpc.title", "RICH PRESENCE");
		ds_map_add(global.langmap, "options.other.drpc.desc", "Show what exactly you are doing in-game in your Discord status.");
		ds_map_add(global.langmap, "options.other.drpc.example1", "In the titlescreen");
		ds_map_add(global.langmap, "options.other.drpc.example2", "boring shit");
		
		ds_map_add(global.langmap, "options.other.fpscount.title", "FPS COUNTER");
		ds_map_add(global.langmap, "options.other.fpscount.desc", "Shows an FPS counter at the bottom right of the screen.");
		
		ds_map_add(global.langmap, "options.other.camsmooth.title", "SMOOTH CAMERA");
		ds_map_add(global.langmap, "options.other.camsmooth.desc", "Smooths out the camera movement, just for fun.\nIf you unironically use this you are sick.");
		
		ds_map_add(global.langmap, "options.other.screenshader.title", "SCREEN SHADER");
		ds_map_add(global.langmap, "options.other.screenshader.desc", "Full screen shader effect.");
		
		// manual
		if pt_online
			ds_map_add(global.langmap, "manual.welcome", "Welcome to the Pizza Tower ONLINE manual!");
		else
			ds_map_add(global.langmap, "manual.welcome", "Welcome to the Pizza Tower Network manual!");
		
		ds_map_add(global.langmap, "manual.controls", "Controls");
		ds_map_add(global.langmap, "manual.controls.content", "You can see and change the controls in the options,\nbut there are extra controls exclusive to the mod:\n\n- T to open the chat\n- ENTER to begin typing and again to send a message\n- ESCAPE to exit the chat, if it's open");
		
		ds_map_add(global.langmap, "manual.commands", "Online - Chat Commands");
		ds_map_add(global.langmap, "manual.commands.content", "There are some commands that can be used in chat:\n\n/list - Lists all players that are currently in-game\n/t - Toggles a mini-chat in the bottom left corner of the screen\n/ping - Pongs you back\n/dance - Dance");
		
		ds_map_add(global.langmap, "manual.rules", "Online - Rules");
		ds_map_add(global.langmap, "manual.rules.content", "Of course, every online game has rules to follow:");
		ds_map_add(global.langmap, "manual.rules.content2", "- Don't spam (1 minute auto-mute)\n\n- Don't swear\n    (the word will change to *** for others)\n\n- Don't mod the game\n    (Except simple sprite and music changes)\n\n- When recording footage, please enable\n  streamer mode in the OTHER OPTIONS menu");
		
		ds_map_add(global.langmap, "manual.lapping", "Lapping");
		ds_map_add(global.langmap, "manual.lapping.content", "Some levels have a \"lap\" room that can be accessed in the OLD gameplay\nstyle by taunting on the left-most wall of the first room in the level.\n\nThe lap room has a big pizza portal inside. In Pizza Time, you can enter it,\nputting you back at the end of the level, and respawning all the enemies.\n\nAt the expense of a tighter time limit, you can get a lot of points from lapping.");
		
		ds_map_add(global.langmap, "manual.credits", "Credits");
		ds_map_add(global.langmap, "manual.credits.fuckoffptd", "You can't see the credits\nin streamer mode. For safety.");
		
		// prelogin
		ds_map_add(global.langmap, "prelogin.offline", "OFFLINE");
		ds_map_add(global.langmap, "prelogin.online", "ONLINE");
		ds_map_add(global.langmap, "prelogin.nonet", "CONNECT TO NETWORK");
		ds_map_add(global.langmap, "prelogin.skip", "SKIP");
		ds_map_add(global.langmap, "prelogin.loading", "LOADING");
		ds_map_add(global.langmap, "prelogin.loadfail", "CANNOT CONNECT TO NETWORK");
		ds_map_add(global.langmap, "prelogin.back", "BACK");
		
		// logging in
		ds_map_add(global.langmap, "login.headlogin", "LOGIN");
		ds_map_add(global.langmap, "login.headreg", "REGISTER");
		ds_map_add(global.langmap, "login.login", "Login");
		ds_map_add(global.langmap, "login.register", "Register");
		ds_map_add(global.langmap, "login.cancel", "Cancel");
		ds_map_add(global.langmap, "login.username", "Username");
		ds_map_add(global.langmap, "login.password", "Password");
		ds_map_add(global.langmap, "login.email", "E-mail");
		ds_map_add(global.langmap, "login.passrepeat", "Repeat password");
		ds_map_add(global.langmap, "login.buildtime", "Build datetime");
		ds_map_add(global.langmap, "login.wait", "WAIT");
		
		// online messages
		ds_map_add(global.langmap, "online.disconnected", "DISCONNECTED!");
		ds_map_add(global.langmap, "online.reconnecting", "DISCONNECTED PLEASE WAIT");
		ds_map_add(global.langmap, "online.outdated", "OUTDATED VERSION!");
		ds_map_add(global.langmap, "online.loggedout", "LOGGED OUT");
		ds_map_add(global.langmap, "online.chat", "Press ENTER to start typing, and again to send\nPress ESCAPE to exit the chat");
		ds_map_add(global.langmap, "online.toolong", "Message length must be below 2000 characters long");
		ds_map_add(global.langmap, "online.global", "Global Message");
		ds_map_add(global.langmap, "online.global.says", "says...");
		ds_map_add(global.langmap, "online.global.error", "(error)");
		ds_map_add(global.langmap, "online.playersonline", " PLAYERS ONLINE");
		ds_map_add(global.langmap, "online.playeronline", " PLAYER ONLINE");
		
		// level editor
		ds_map_add(global.langmap, "editor.menu.online", "ONLINE");
		ds_map_add(global.langmap, "editor.menu.load", "LOAD");
		ds_map_add(global.langmap, "editor.menu.build", "BUILD");
		ds_map_add(global.langmap, "editor.menu.back", "BACK");
		ds_map_add(global.langmap, "editor.menu.wip", "UNFINISHED!!!");
		ds_map_add(global.langmap, "editor.menu.filefilter", "Level File (*.ptlv)|*.ptlv|All Files (*.*)|*.*");
		ds_map_add(global.langmap, "editor.menu.loadtitle", "Load Level");
		ds_map_add(global.langmap, "editor.menu.savetitle", "Download Level");
		ds_map_add(global.langmap, "editor.menu.online.official", "BROWSE");
		ds_map_add(global.langmap, "editor.menu.online.featured", "FEATURED");
		ds_map_add(global.langmap, "editor.menu.online.pto", "PTNETWORK");
		ds_map_add(global.langmap, "editor.menu.search.preid", "ID, ");
		ds_map_add(global.langmap, "editor.menu.search.prelikes", " LIKES, ");
		ds_map_add(global.langmap, "editor.menu.search.predislikes", " DISLIKES, ");
		ds_map_add(global.langmap, "editor.menu.search.preby", "BY, ");
		ds_map_add(global.langmap, "editor.menu.search.preuserid", "USERID, ");
		ds_map_add(global.langmap, "editor.menu.search.page1", "Page ");
		ds_map_add(global.langmap, "editor.menu.search.page2", " of ");
		ds_map_add(global.langmap, "editor.menu.search.pagnext", "NEXT");
		ds_map_add(global.langmap, "editor.menu.search.pagprev", "PREV");
		ds_map_add(global.langmap, "editor.menu.search.search", "SEARCH");
		ds_map_add(global.langmap, "editor.menu.search.upload", "UPLOAD");
		ds_map_add(global.langmap, "editor.menu.level.author", "By ");
		ds_map_add(global.langmap, "editor.menu.level.play", "PLAY");
		ds_map_add(global.langmap, "editor.menu.level.download", "DOWNLOAD");
		ds_map_add(global.langmap, "editor.menu.level.downloaded", "LEVEL DOWNLOADED!");
		ds_map_add(global.langmap, "editor.menu.level.debug", "DETAILS");
		ds_map_add(global.langmap, "editor.menu.level.debugmap", "CTRL C to copy full map");
		ds_map_add(global.langmap, "editor.menu.level.debugcopied", "COPIED");
		ds_map_add(global.langmap, "editor.menu.login.password", "Password");
		ds_map_add(global.langmap, "editor.menu.login.reenter", "Reenter password");
		ds_map_add(global.langmap, "editor.menu.login.login", "LOG IN");
		ds_map_add(global.langmap, "editor.menu.login.register", "REGISTER");
		ds_map_add(global.langmap, "editor.menu.login.dumbfuck", "INPUT A PASSWORD");
		ds_map_add(global.langmap, "editor.menu.login.dumbfuck2", "PASSWORDS DONT MATCH!");
		ds_map_add(global.langmap, "editor.menu.login.success", "LOGGED IN!");
		ds_map_add(global.langmap, "editor.menu.async.invalid", "INVALID DATA");
		ds_map_add(global.langmap, "editor.menu.async.unexpected", "GOT UNEXPECTED RESULTS");
		ds_map_add(global.langmap, "editor.menu.async.unauthorized", "UNAUTHORIZED");
		
		// messages
		ds_map_add(global.langmap, "msg.titleoption", "OPTIONS");
		ds_map_add(global.langmap, "msg.titlesel.0", "START GAME");
		ds_map_add(global.langmap, "msg.titlesel.1", "OPTIONS");
		ds_map_add(global.langmap, "msg.titlesel.2", "QUIT");
		
		// level names
		ds_map_add(global.langmap, "msg.level.entrance", "ENTRANCE");
		ds_map_add(global.langmap, "msg.level.medieval", "PIZZASCAPE");
		ds_map_add(global.langmap, "msg.level.ruin", "THE ANCIENT CHEESE");
		ds_map_add(global.langmap, "msg.level.dungeon", "BLOODSAUCE DUNGEON");
		ds_map_add(global.langmap, "msg.level.desert", "OREGANO DESERT");
		ds_map_add(global.langmap, "msg.level.graveyard", "THE WASTEYARD");
		ds_map_add(global.langmap, "msg.level.farm", "FUN FARM WIP");
		ds_map_add(global.langmap, "msg.level.ufo", "SPACE PINBALL");
		ds_map_add(global.langmap, "msg.level.forest", "GNOME FOREST WIP");
		ds_map_add(global.langmap, "msg.level.beach", "PINEAPPLE BEACH WIP");
		ds_map_add(global.langmap, "msg.level.kungfu", "KUNG FU");
		ds_map_add(global.langmap, "msg.level.minigolf", "GOLF");
		ds_map_add(global.langmap, "msg.level.space", "SPACE");
		ds_map_add(global.langmap, "msg.level.city", "CITY");
		ds_map_add(global.langmap, "msg.level.sewer", "SEWERS");
		ds_map_add(global.langmap, "msg.level.war", "WAR");
		ds_map_add(global.langmap, "msg.level.factory", "FACTORY");
		ds_map_add(global.langmap, "msg.level.mansion", "MANSION");
		ds_map_add(global.langmap, "msg.level.freezer", "FREEZER");
		ds_map_add(global.langmap, "msg.level.kidsparty", "KIDS PARTY");
		ds_map_add(global.langmap, "msg.level.dragonlair", "DRAGON LAIR");
		ds_map_add(global.langmap, "msg.level.chateau", "PIZZASCARE");
		ds_map_add(global.langmap, "msg.level.strongcold", "STRONGCOLD");
		ds_map_add(global.langmap, "msg.level.exit", "EXIT");
		
		ds_map_add(global.langmap, "msg.level.golf", "GOLF");
		ds_map_add(global.langmap, "msg.level.snickchallenge", "SNICK CHALLENGE");
		ds_map_add(global.langmap, "msg.level.snickrematch", "SNICKS REMATCH");
		ds_map_add(global.langmap, "msg.level.medieval_re", "SNICK CASTLE");
		ds_map_add(global.langmap, "msg.level.ruin_re", "RUINS OF THE TEMPLE");
		ds_map_add(global.langmap, "msg.level.dungeon_re", "BLOODBATH DUNGEON");
		ds_map_add(global.langmap, "msg.level.etb", "EARLY TEST BUILD");
		ds_map_add(global.langmap, "msg.level.ancient", "ANCIENT TOWER WIP");
		ds_map_add(global.langmap, "msg.level.grinch", "GRINCH");
		
		ds_map_add(global.langmap, "msg.level.cotton", "COTTONTOWN WIP");
		ds_map_add(global.langmap, "msg.level.jawbreaker", "JAWBREAKER MINES WIP");
		
		// roomname
		ds_map_add(global.langmap, "roomname.characterselect", "MODE SELECT");
		
		ds_map_add(global.langmap, "roomname.hub_room1", "TOWER FLOOR 1");
		ds_map_add(global.langmap, "roomname.hub_room2", "TOWER FLOOR 2");
		ds_map_add(global.langmap, "roomname.hub_roomE", "OTHER LEVELS");
		ds_map_add(global.langmap, "roomname.hub_roomE2", "DRESSER");
		ds_map_add(global.langmap, "roomname.hub_roomE3", "DANCE ROOM");
		ds_map_add(global.langmap, "roomname.hub_roomMOD", "ARCADE");
		ds_map_add(global.langmap, "roomname.hub_roomSP", "SPIRE FLOOR 1");
		ds_map_add(global.langmap, "roomname.hub_roomPLN", "NIGHTMARE HUB");
		
		ds_map_add(global.langmap, "roomname.hub_outside2", "OUTSIDE");
		ds_map_add(global.langmap, "roomname.hub_outside3", "HUB OF FUN");
		ds_map_add(global.langmap, "roomname.hub_outside3b", "WAITING ROOM");
		ds_map_add(global.langmap, "roomname.hub_outside3b2", "BATTLE DUNGEON");
		ds_map_add(global.langmap, "roomname.hub_outside3c", "GRAVITY RAILS");
		ds_map_add(global.langmap, "roomname.hub_outside3d", "SUPLEX MUSEUM");
		ds_map_add(global.langmap, "roomname.hub_outside3e", "FREERUN");
		ds_map_add(global.langmap, "roomname.rm_peic", "SOMEWHERE");
		
		ds_map_add(global.langmap, "roomname.eatery_1", "DINING ROOM");
	}
	
	#endregion
	
	if ds_map_empty(global.langmap)
		show_message("Language \"" + string(lang) + "\" failed to load!!");
}