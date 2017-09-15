/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4E888302
/// @DnDArgument : "code" "/// @desc Initialize Variables$(13_10)SPEED = 0.2$(13_10)$(13_10)dt = 0"
/// @desc Initialize Variables
SPEED = 0.2

dt = 0

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 394C8004
/// @DnDArgument : "code" "/// @desc Move Off-Screen$(13_10)image_angle = random( 360 )$(13_10)$(13_10)var offset = 200$(13_10)$(13_10)while( x > 0 - offset && x < 1200 + offset &&$(13_10)	   y > 0 - offset && y < 800 + offset )$(13_10){$(13_10)	x -= SPEED * dsin( image_angle )$(13_10)	y += SPEED * dcos( image_angle )$(13_10)}"
/// @desc Move Off-Screen
image_angle = random( 360 )

var offset = 200

while( x > 0 - offset && x < 1200 + offset &&
	   y > 0 - offset && y < 800 + offset )
{
	x -= SPEED * dsin( image_angle )
	y += SPEED * dcos( image_angle )
}