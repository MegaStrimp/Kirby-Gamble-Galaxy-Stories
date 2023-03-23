/// @function str(stringKey,[data])
/// @description Polyglot helper function.
/// Looks up the localized string value of stringKey for polyglot's current locale
/// and interpolates additional data, if available
/// @param stringKey The JSON path of the string whose localized value to fetch
/// @param data Optional struct of keys and values to interpolate into the final localized string

function str(stringKey,data = {})
{
	if (!instance_exists(obj_Polyglot)) instance_create_depth(0, 0, 0, obj_Polyglot);
	
	return obj_Polyglot._string_lookup(stringKey,data);
}