
	switch toppinwarrior
	{
	case 2:
	if variable_global_exists("toppinwarriorid1") && instance_exists( global.toppinwarriorid1)
	followid = global.toppinwarriorid1
	else 
	followid = playerid
	break
	
		case 3:
	if variable_global_exists("toppinwarriorid2") && instance_exists( global.toppinwarriorid2)
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1") && instance_exists( global.toppinwarriorid1)
	followid = global.toppinwarriorid1
	else 
	followid = playerid
	break
	
	
			case 4:
	if variable_global_exists("toppinwarriorid3") && instance_exists( global.toppinwarriorid3)
	followid = global.toppinwarriorid3
	else if variable_global_exists("toppinwarriorid2") && instance_exists( global.toppinwarriorid2)
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1") && instance_exists( global.toppinwarriorid1)
	followid = global.toppinwarriorid1
	else 
	followid = playerid
	break
	
			case 5:
	if variable_global_exists("toppinwarriorid4") && instance_exists( global.toppinwarriorid4)
	followid = global.toppinwarriorid4
	else if variable_global_exists("toppinwarriorid3") && instance_exists( global.toppinwarriorid3)
	followid = global.toppinwarriorid3
	else if variable_global_exists("toppinwarriorid2") && instance_exists( global.toppinwarriorid2)
	followid = global.toppinwarriorid2
	else if variable_global_exists("toppinwarriorid1") && instance_exists( global.toppinwarriorid1)
	followid = global.toppinwarriorid1
	else 
	followid = playerid
	break
	

	
	}



	

