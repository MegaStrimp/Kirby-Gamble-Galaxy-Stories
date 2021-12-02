///@description Draw

var text = "";

switch (global.chapterIntro)
{
	case "1_1":
	text = "Chapter 1 - Act 1\n---------\nFinding Gamble";
	break;
	
	case "1_2":
	text = "Chapter 1 - Act 2\n---------\nDescend of the Friends";
	break;
	
	case "1_3":
	text = "Chapter 1 - Act 3\n---------\nEnter Fluxbender";
	break;
	
	case "1_4":
	text = "Chapter 1 - Act 4\n---------\nCosmic Hunt";
	break;
	
	case "1_5":
	text = "Chapter 1 - Act 5\n---------\nRiding The Worm";
	break;
	
	default:
	text = "You broke something\nCongratulations";
	break;
}

draw_set_font(fnt_ChapterIntro);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2,room_height / 2,text);
draw_set_halign(fa_left);
draw_set_valign(fa_top);