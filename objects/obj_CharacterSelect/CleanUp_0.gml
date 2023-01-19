///@description Clean Up

#region Clean Arrays
if (ds_exists(stagesArray,ds_type_grid)) ds_grid_destroy(stagesArray);
if (ds_exists(charactersArray,ds_type_grid)) ds_grid_destroy(charactersArray);
if (ds_exists(spraysArray,ds_type_grid)) ds_grid_destroy(spraysArray);
#endregion