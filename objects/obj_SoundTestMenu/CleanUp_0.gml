///@description Clean Up

#region Clean Array
if (ds_exists(soundTestArray,ds_type_grid)) ds_grid_destroy(soundTestArray);
#endregion