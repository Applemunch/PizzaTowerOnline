#macro coinoffset 173.411

function scr_setcoin(n) {
	global.pizzacoin = n - coinoffset;
}
function scr_getcoin() {
	return global.pizzacoin + coinoffset;
}