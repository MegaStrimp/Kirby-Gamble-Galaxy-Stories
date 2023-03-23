///@description Clean Up

#region Clean Array
if (ds_exists(bestiaryArray,ds_type_grid)) ds_grid_destroy(bestiaryArray);
bestiaryCosmeticsArray = -1;
bestiaryAnimationsArray = -1;
#endregion