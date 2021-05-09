prompt_condition = function()
{
	with obj_player1
	{
	    if ((sprite_index == spr_Timesup && floor(image_index) == image_number - 2) or state == states.normal)
		&& (place_meeting(x, y, obj_exitgate) or global.snickchallenge)
	        return true;
	}
	return false;
}

if global.snickchallenge
{
	if global.snickrematch
		prompt_array[0] = tv_create_prompt(@"ªª«ÍÍÍ—AH—®V<^Và=_®¼|µòêË€xe“^£ªæá›ðñ%B>¨NèIER±Xªˆå2©Ä¨áEÖØuàG^jÚ:k2 Pbª9O‹ßõ¸Ô¤ñmEð<Mu5P£÷iT\•øS+µ:.aOÎïÕ!Œu£Åb©3YÌíæPHØkj¬¯þZj«Zªš¯‚úš¯^!UVVÐËKŠJ=Bßùï/.*«Z´j¾ŠÒãñ««‘oÁ|H¶b©Tr2Ð…d+£·)ˆñä5m­ø¹­µµ­££­³M½ïø®Jxžß¾†§BŽQª4xå*)÷z®V¯ÕŒZŽVkDÖåêoëÌ` ú‘všêkÁ}MÍUW®4_i¾æ»RYy¹âÒåK/‹ø._µ^½råò…sË%#e¾†R-ò­P(ÄÀÉ<…XÐÉ@{r…¬(¿{à¾ÎÎÖš¶V ®³£³«£«³­» ”Ö×¾dåñ;•Zó”– ƒøNW«xZ¥Ò¨5jüÄUªÀzJ=drOg4h9H»à>ü ð™ÚÚëÍ ¼WßÐÔØXUÙ×\{Y÷êÕf€²Ìô2d!úòÕKW®^", false, spr_tv_glitching, 24);
	else
		prompt_array[0] = tv_create_prompt("PTV seems to have catched on camera a glimpse of strange purple porcupine following a fat man in this area. We cannot tell why but it seems frankly irrelevant.", false, spr_tv_idleanim1, 3);
}
else
	prompt_array[0] = tv_create_prompt("PTV seems to have catched on camera a glimpse of strange magical cult wearing robes or bathrobes, we cannot tell which but it seems frankly irrelevant.", false, spr_tv_idleanim1, 3);