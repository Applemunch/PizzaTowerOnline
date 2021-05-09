/// @param {real} id
function scr_requestlevel() {
	levelid = argument[0];

	// send request
	request = http_get("http://pizzatowerleveleditor.online/level_api/level/read_one.php?id=" + string(levelid));
	requestype = reqtypes.read_level;
	loading = true;


}