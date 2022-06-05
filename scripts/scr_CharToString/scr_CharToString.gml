///@description Char To String
///@param {real} key Which key to convert.

function scr_CharToString(argument0)
{
	var key = argument0;
	var result = -1;
	
	switch (key)
	{
		default:
		result = string(chr(key));
		break;
		
		case vk_left:
		result = "Left";
	    break;
		
	    case vk_right:
	    result = "Right";
	    break;
		
	    case vk_up:
	    result = "Up";
	    break;
		
	    case vk_down:
	    result = "Down";
	    break;
		
	    case vk_enter:
	    result = "Enter";
	    break;
		
	    case vk_escape:
	    result = "Esc";
	    break;
		
	    case vk_space:
	    result = "Space";
	    break;
		
	    case vk_shift:
	    result = "Shift";
	    break;
		
	    case vk_control:
	    result = "Ctrl";
	    break;
		
	    case vk_alt:
	    result = "Alt";
	    break;
		
	    case vk_backspace:
	    result = "Backspace";
	    break;
		
	    case vk_tab:
	    result = "Tab";
	    break;
		
	    case vk_home:
	    result = "Home";
	    break;
		
	    case vk_end:
	    result = "End";
	    break;
		
	    case vk_delete:
	    result = "Del";
	    break;
		
	    case vk_insert:
	    result = "Insert";
	    break;
		
	    case vk_pageup:
	    result = "PageUp";
	    break;
		
	    case vk_pagedown:
	    result = "PageDown";
	    break;
		
	    case vk_pause:
	    result = "Pause";
	    break;
		
	    case vk_printscreen:
	    result = "PrtSc";
	    break;
		
	    case vk_f1:
	    result = "F1";
	    break;
		
	    case vk_f2:
	    result = "F2";
	    break;
		
	    case vk_f3:
	    result = "F3";
	    break;
		
	    case vk_f4:
	    result = "F4";
	    break;
		
	    case vk_f5:
	    result = "F5";
	    break;
		
	    case vk_f6:
	    result = "F6";
	    break;
		
	    case vk_f7:
	    result = "F7";
	    break;
		
	    case vk_f8:
	    result = "F8";
	    break;
		
	    case vk_f9:
	    result = "F9";
	    break;
		
	    case vk_f10:
	    result = "F10";
	    break;
		
	    case vk_f11:
	    result = "F11";
	    break;
		
	    case vk_f12:
	    result = "F12";
	    break;
		
	    case vk_numpad0:
	    result = "Num0";
	    break;
		
	    case vk_numpad1:
	    result = "Num1";
	    break;
		
	    case vk_numpad2:
	    result = "Num2";
	    break;
		
	    case vk_numpad3:
	    result = "Num3";
	    break;
		
	    case vk_numpad4:
	    result = "Num4";
	    break;
		
	    case vk_numpad5:
	    result = "Num5";
	    break;
		
	    case vk_numpad6:
	    result = "Num6";
	    break;
		
	    case vk_numpad7:
	    result = "Num7";
	    break;
		
	    case vk_numpad8:
	    result = "Num8";
	    break;
		
	    case vk_numpad9:
	    result = "Num9";
	    break;
		
	    case vk_multiply:
	    result = "Multiply";
	    break;
		
	    case vk_divide:
	    result = "Divide";
	    break;
		
	    case vk_add:
	    result = "Add";
	    break;
		
	    case vk_subtract:
	    result = "Substract";
	    break;
		
	    case vk_decimal:
	    result = "Decimal";
	    break;
	}
	return result;
}