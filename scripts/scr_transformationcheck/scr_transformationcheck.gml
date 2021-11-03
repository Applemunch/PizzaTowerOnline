function scr_transformationcheck()
{
	for (i = 0; i < array_length_1d(transformation) - 1; i++)
		if state == transformation[i] then return false;
	return true;
}