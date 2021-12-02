active = false;

xarray = array_create(3);
yarray = array_create(3);

x1tox2factor = 1/2;
y1tox2factor = -2;

y2speed = 0;
y2jumpSpeed = -4;
y2grav = 0.2;

//	using a kinematic equation to get desired horizontal speed
var t = (-y2jumpSpeed - y2jumpSpeed) / y2grav;
var x2to = 48;
x2speed = 0;
x2moveSpeed = x2to / t;

bounces = 0;



//	@return A struct containing an X-VALUE and a Y-VALUE
function bezier(x_array, y_array, amount) {
	//	Error if different array lengths OR empty arrays
	if (array_length(x_array) != array_length(y_array))
	or (array_length(x_array) < 1)
	or (array_length(y_array) < 1)
		throw ("Arrays must be at least length 1 and of equal length");
	
	//	Base case
	if (array_length(x_array) == 1)
		return {x : x_array[0], y : y_array[0]};
	
	//	Recursive case
	else {
		//	Create new arrays
		var length = array_length(x_array);
		var xa = array_create(length - 1);
		var ya = array_create(length - 1);
		
		//	Get new points by interpolating given points
		for (var i = 0; i < length - 1; i++) {
			xa[i] = lerp(x_array[i], x_array[i + 1], amount);
			ya[i] = lerp(y_array[i], y_array[i + 1], amount);
		}
		
		//	Recurse
		return bezier(xa, ya, amount);
	}
}