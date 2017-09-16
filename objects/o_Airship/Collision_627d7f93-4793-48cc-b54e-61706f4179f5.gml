/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C034241
/// @DnDArgument : "code" "/// @desc Get Hurt By Bullet$(13_10)hp -= global.curDMG$(13_10)$(13_10)if( hp < 1 )$(13_10)	instance_destroy()"
/// @desc Get Hurt By Bullet
hp -= global.curDMG

if( hp < 1 )
	instance_destroy()