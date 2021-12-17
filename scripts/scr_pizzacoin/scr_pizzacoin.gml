#macro coinoffset (global.saveslot == "" ? 173.411 : 0)

function scr_setcoin(n) {
	global.pizzacoin = n - coinoffset;
}
function scr_getcoin() {
	return global.pizzacoin + coinoffset;
}
