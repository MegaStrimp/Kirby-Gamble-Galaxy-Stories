///@description Clean Up

#region Clean Array
if (ds_exists(upgradesArray,ds_type_grid)) ds_grid_destroy(upgradesArray);
#endregion