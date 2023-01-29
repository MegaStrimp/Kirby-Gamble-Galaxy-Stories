///@description Load Texture Page
///@param {string} page Texture Page Title

function scr_LoadTexturePage(argument0)
{
	var page = argument0;
	
	var _tex_array = texturegroup_get_textures(page);
	for (var i = 0; i < array_length(_tex_array); ++i;)
	{
	    texture_prefetch(_tex_array[i]);
	}
}