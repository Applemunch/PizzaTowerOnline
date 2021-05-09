/// @param {real} page
function scr_requestpage_alt() {
	page = argument[0];

	// send request
	var requrl = "http://ptoleveleditor.000webhostapp.com/api/level_list_pages.php?page=" + string(page);

	request = http_get(requrl);
	requestype = reqtypes.read_paging_alt;
	loading = true;


}
