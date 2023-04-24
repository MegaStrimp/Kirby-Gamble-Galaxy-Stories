///@description Weighted Randomize
///@param {array} Array List of your choices (Should be a 2D array)

function scr_WeightedRandomize(argument0)
{
	#region Arguments
	var array = argument0;
	#endregion
	
	#region Variables
	var arrSize = array_length(array);
	var sum = 0;
	var weightSum = 0;
	var finalValue = array[0][0];
	#endregion
	show_debug_message(string(arrSize));
	#region Calculate
	for (var i = 0; i < arrSize; i++)
	{
		sum += array[i][1];
	}
	
	var rng = irandom_range(1,sum);
	
	for (var i = 0; i < arrSize; i++)
	{
		weightSum += array[i][1];
		if (rng <= weightSum)
		{
			finalValue = array[i][0];
			break;
		}
	}
	#endregion
	
	#region Return
	return finalValue;
	#endregion
}