///@description Draw

//Draw Self

if (doorVisible) draw_self();

//Draw Locked Door

if (locked) draw_sprite(sprLocked,lockedIndex,x,y);
if (unlocked) draw_sprite(sprUnlocked,lockedIndex,x,y);

//Draw Star

if (doorVisible) draw_sprite(sprStar,parIndex,x,y - sprite_get_height(sprite_index));

//Draw Button

if ((tutorial) and ((distance_to_object(obj_Player)) <= 60)) draw_sprite(spr_TutorialSign_Symbol_DpadUp,0,x,y - 48);

//Draw Text

draw_set_color(c_black);
draw_set_font(fnt_Menu);
draw_text(x,y - 48,drawText);