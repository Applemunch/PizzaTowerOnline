/// @param {real} page
function scr_requestpage()
{
	page = argument[0];

	// send request
	if paging_type == 0
		var requrl = "http://pizzatowerleveleditor.online/level_api/level/read_paging.php?page="
	else if paging_type == 1
		requrl = "http://pizzatowerleveleditor.online/level_api/level/featured_paging.php?page=";
	else if paging_type == 2
		requrl = "http://pizzatowerleveleditor.online/level_api/level/search.php?s=" + searchstring_real + "&page=";

	request = http_get(requrl + string(page));
	requestype = reqtypes.read_paging;
	loading = true;
}