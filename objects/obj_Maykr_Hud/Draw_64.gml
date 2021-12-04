///@description Draw GUI

#region Top Hud
topHudOffset = lerp(topHudOffset,!hudVisible,.25);

draw_sprite(spr_Maykr_TopHud,0,0,0 - (topHudOffset * 50));
draw_sprite(spr_Maykr_Logo,0,329,6 - (topHudOffset * 50));
#endregion

#region Top Hud Buttons
draw_sprite(spr_Maykr_TopHud_Play,0,12 - (topHudOffset * 330),3);
draw_sprite(spr_Maykr_TopHud_Items,0,96 - (topHudOffset * 330),3);
draw_sprite(spr_Maykr_TopHud_Blocks,0,172 - (topHudOffset * 330),3);
draw_sprite(spr_Maykr_TopHud_Enemies,0,248 - (topHudOffset * 330),3);

draw_sprite(spr_Maykr_TopHud_Back,0,324,49 - (topHudOffset * 80));
draw_sprite(spr_Maykr_TopHud_Front,0,347,49 - (topHudOffset * 80));

topHudSaveOffset = lerp(topHudSaveOffset,mouseOnTopSave,.25);
topHudLoadOffset = lerp(topHudLoadOffset,mouseOnTopLoad,.25);
topHudOptionsOffset = lerp(topHudOptionsOffset,mouseOnTopOptions,.25);
topHudResetOffset = lerp(topHudResetOffset,mouseOnTopReset,.25);

draw_sprite(spr_Maykr_TopHud_Save,0,460 - (topHudSaveOffset * 40) + (topHudOffset * 25),49);
draw_sprite(spr_Maykr_TopHud_Load,0,460 - (topHudLoadOffset * 40) + (topHudOffset * 25),72);
draw_sprite(spr_Maykr_TopHud_Options,0,460 - (topHudOptionsOffset * 61) + (topHudOffset * 25),95);
draw_sprite(spr_Maykr_TopHud_Reset,0,460 - (topHudResetOffset * 66) + (topHudOffset * 25),118);
#endregion

#region Bottom Hud
bottomHudVisible = true;
if ((!hudVisible) and (!bottomHudOpen) and (mouseY < 220)) bottomHudVisible = false;

bottomHudOffset = lerp(bottomHudOffset,(50 * !bottomHudVisible) - (96 * bottomHudOpen),.25);

for (var i = 0; i < 12 + (bottomHudVisible * 36); i++)
{
	draw_sprite(spr_Maykr_ItemHud_Empty,0,51 + (32 * (i % 12)),(366 + bottomHudOffset) - 101 + (32 * floor(i / 12)));
}
draw_sprite(spr_Maykr_ItemHud,0,26,366 + bottomHudOffset);
#endregion