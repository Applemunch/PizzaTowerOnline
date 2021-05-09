function string_contains(argument0, argument1) {
	/// @param str
	/// @param substr
	if string_length(argument1) > string_length(argument0)
		return false;
	return (string_pos(argument1, argument0) != 0);
}
function string_startswith(argument0, argument1) {
	/// @param str
	/// @param substr
	if string_length(argument1) > string_length(argument0)
		return false;
	return (string_pos(argument1, argument0) == 1);
}
function string_endswith(argument0, argument1) {
	/// @param str
	/// @param substr
	if string_length(argument1) > string_length(argument0)
		return false;
	return (string_pos(argument1, argument0) == (string_length(argument0) - string_length(argument1)) + 1);
}