/// @param {real} id
function scr_requestregister_alt(argument0, argument1) {
	var n = argument0;
	var p = argument1;

	// send request
	request = http_post_string("http://ptoleveleditor.000webhostapp.com/api/user_register.php", "username=" + n + "&password=" + p);
	requestype = reqtypes.register_alt;
	loading = true;


}
