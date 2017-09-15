/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F5A83AB
/// @DnDArgument : "code" "// Convert microseconds to something more reasonable. :)$(13_10)dt = delta_time / 30000$(13_10)$(13_10)x -= SPEED * dsin( image_angle -   0 ) * dt$(13_10)y += SPEED * dcos( image_angle - 180 ) * dt"
// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

x -= SPEED * dsin( image_angle -   0 ) * dt
y += SPEED * dcos( image_angle - 180 ) * dt