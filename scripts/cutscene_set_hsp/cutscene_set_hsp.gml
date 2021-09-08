function cutscene_set_hsp(_obj, _hsp)
{
	with _obj
	    hsp = _hsp;
	cutscene_end_action();
}