///@description Morse
///@param {string} input Input String

function scr_Morse(argument0)
{
	var input = argument0;
	var output = "";
	
	for (var stringWord = 0;stringWord <= string_length(input);++stringWord)
	{
		var char = string_char_at(input,stringWord);
		
		switch (char)
		{
			case "A":
			case "a":
			output += ".- ";
			break;
			
			case "B":
			case "b":
			output += "-... ";
			break;
			
			case "C":
			case "c":
			output += "-.-. ";
			break;
			
			case "D":
			case "d":
			output += "-.. ";
			break;
			
			case "E":
			case "e":
			output += ". ";
			break;
			
			case "F":
			case "f":
			output += "..-. ";
			break;
			
			case "G":
			case "g":
			output += "--. ";
			break;
			
			case "H":
			case "h":
			output += ".... ";
			break;
			
			case "I":
			case "i":
			output += ".. ";
			break;
			
			case "J":
			case "j":
			output += ".--- ";
			break;
			
			case "K":
			case "k":
			output += "-.- ";
			break;
			
			case "L":
			case "l":
			output += ".-.. ";
			break;
			
			case "M":
			case "m":
			output += "-- ";
			break;
			
			case "N":
			case "n":
			output += "-. ";
			break;
			
			case "O":
			case "o":
			output += "--- ";
			break;
			
			case "P":
			case "p":
			output += ".--. ";
			break;
			
			case "Q":
			case "q":
			output += "--.- ";
			break;
			
			case "R":
			case "r":
			output += ".-. ";
			break;
			
			case "S":
			case "s":
			output += "... ";
			break;
			
			case "T":
			case "t":
			output += "- ";
			break;
			
			case "U":
			case "u":
			output += "..- ";
			break;
			
			case "V":
			case "v":
			output += "...- ";
			break;
			
			case "W":
			case "w":
			output += ".-- ";
			break;
			
			case "X":
			case "x":
			output += "-..- ";
			break;
			
			case "Y":
			case "y":
			output += "-.-- ";
			break;
			
			case "Z":
			case "z":
			output += "--.. ";
			break;
			
			case "0":
			output += "----- ";
			break;
			
			case "1":
			output += ".---- ";
			break;
			
			case "2":
			output += "..--- ";
			break;
			
			case "3":
			output += "...-- ";
			break;
			
			case "4":
			output += "....- ";
			break;
			
			case "5":
			output += "..... ";
			break;
			
			case "6":
			output += "-.... ";
			break;
			
			case "7":
			output += "--... ";
			break;
			
			case "8":
			output += "---.. ";
			break;
			
			case "9":
			output += "----. ";
			break;
			
			case " ":
			output += "/ ";
			break;
		}
	}
	
	return output;
}