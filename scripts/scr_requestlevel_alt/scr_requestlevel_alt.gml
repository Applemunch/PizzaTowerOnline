/// @param {real} id
function scr_requestlevel_alt() {
	levelid = argument[0];

	// send request
	request = http_get("http://ptoleveleditor.000webhostapp.com/api/level_info.php?id=" + string(levelid));
	requestype = reqtypes.read_level_alt;
	level_id = levelid;
	loading = true;


}
