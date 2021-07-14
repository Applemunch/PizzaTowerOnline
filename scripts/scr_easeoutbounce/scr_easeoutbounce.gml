function scr_easeoutbounce(arg0, arg1, arg2, arg3)
{
	arg0 /= arg3;
	
	if (arg0 < 1/2.75)
	{
	    return arg2 * 7.5625 * arg0 * arg0 + arg1;
	}
	else
	if (arg0 < 2/2.75)
	{
	    arg0 -= 1.5/2.75;
	    return arg2 * (7.5625 * arg0 * arg0 + 0.75) + arg1;
	}
	else
	if (arg0 < 2.5/2.75)
	{
	    arg0 -= 2.25/2.75;
	    return arg2 * (7.5625 * arg0 * arg0 + 0.9375) + arg1;
	}
	else
	{
	    arg0 -= 2.625/2.75;
	    return arg2 * (7.5625 * arg0 * arg0 + 0.984375) + arg1;
	}
}