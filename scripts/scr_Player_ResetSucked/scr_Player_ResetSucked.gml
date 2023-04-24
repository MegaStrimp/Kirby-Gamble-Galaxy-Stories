///@description Player - Reset Sucked
///@param {real} target Which object to target.

function scr_Player_ResetSucked(argument0)
{
	#region Arguments
	var targetObject = argument0;
	#endregion
	
	#region Enums
	enum eatMeTypes
	{
		none,
		onion,
		machMissile,
		pluid,
		seashellBoomerang
	}
	#endregion
	
	with (targetObject)
	{
		#region Reset Sucked
		sucked = 0;
		
		if (ds_exists(suckedArray_None,ds_type_grid)) ds_grid_destroy(suckedArray_None);
		suckedArray_None = ds_grid_create(99,2);
		
		if (ds_exists(suckedArray_Onion,ds_type_grid)) ds_grid_destroy(suckedArray_Onion);
		suckedArray_Onion = ds_grid_create(99,2);
		
		if (ds_exists(suckedArray_MachMissile,ds_type_grid)) ds_grid_destroy(suckedArray_MachMissile);
		suckedArray_MachMissile = ds_grid_create(99,2);
		
		if (ds_exists(suckedArray_Pluid,ds_type_grid)) ds_grid_destroy(suckedArray_Pluid);
		suckedArray_Pluid = ds_grid_create(99,2);
		
		if (ds_exists(suckedArray_SeashellBoomerang,ds_type_grid)) ds_grid_destroy(suckedArray_SeashellBoomerang);
		suckedArray_SeashellBoomerang = ds_grid_create(99,2);
		#endregion
	}
}