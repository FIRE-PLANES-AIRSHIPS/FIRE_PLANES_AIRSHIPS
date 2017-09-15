/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66316BD8
/// @DnDArgument : "code" "/// @desc Declare Variables$(13_10)SPEED = 10$(13_10)ROT_SPEED = 7$(13_10)$(13_10)weapon = 1$(13_10)damageMin = 1$(13_10)damageMax = 2$(13_10)$(13_10)SHOT_TIME = 4$(13_10)shotTimer = SHOT_TIME$(13_10)$(13_10)dt = 0$(13_10)$(13_10)AIRSHIP_SPAWN_MAX = 30$(13_10)airshipSpawnTimer = AIRSHIP_SPAWN_MAX$(13_10)airships[0] = instance_create_layer( 0,0,"Enemies",o_Airship )$(13_10)curAirship = 1"
/// @desc Declare Variables
SPEED = 10
ROT_SPEED = 7

weapon = 1
damageMin = 1
damageMax = 2

SHOT_TIME = 4
shotTimer = SHOT_TIME

dt = 0

AIRSHIP_SPAWN_MAX = 30
airshipSpawnTimer = AIRSHIP_SPAWN_MAX
airships[0] = instance_create_layer( 0,0,"Enemies",o_Airship )
curAirship = 1