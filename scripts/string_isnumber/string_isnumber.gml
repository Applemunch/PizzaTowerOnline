function string_isnumber(argument0) {
	var s = argument0;
	var n = string_length(string_digits(s));
	return n && n == string_length(s) - (string_char_at(s, 1) == "-") - (string_pos(".", s) != 0);


}
