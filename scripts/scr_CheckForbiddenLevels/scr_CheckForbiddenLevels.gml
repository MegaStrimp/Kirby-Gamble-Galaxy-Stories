///@description Check Forbidden Levels
///@param {string} level Level Name

function scr_CheckForbiddenLevels(argument0)
{
	var level = argument0;
	var canAccess = true;
	
	if (!global.adminAccess)
	{
		if (
		(string_copy(level,0,8) == "rm_KSSU_")
		or (string_copy(level,0,8) == "rm_RtDL_")
		) canAccess = false;
	}
	
	return canAccess;
}