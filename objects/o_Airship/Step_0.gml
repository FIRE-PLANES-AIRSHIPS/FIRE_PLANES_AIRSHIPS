/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 417DB926
/// @DnDArgument : "code" "/// @desc Move Around Player$(13_10)$(13_10)// Convert microseconds to something more reasonable. :)$(13_10)dt = delta_time / 30000$(13_10)$(13_10)x += SPEED * dsin( image_angle ) * dt$(13_10)y -= SPEED * dcos( image_angle ) * dt"
/// @desc Move Around Player

// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

x += SPEED * dsin( image_angle ) * dt
y -= SPEED * dcos( image_angle ) * dt