/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 564FE68E
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0196B972
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "10"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "200"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "hp / HP_MAX * 100"
/// @DnDArgument : "backcol" "$FF0000FF"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00FF00"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(x + 0, y + 10, x + 200, y + 20, hp / HP_MAX * 100, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF0000FF>>24) != 0), (($FF000000>>24) != 0));