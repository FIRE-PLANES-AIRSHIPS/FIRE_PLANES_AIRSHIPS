/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C6D6AA6
/// @DnDArgument : "code" "/// @desc Apply Movement$(13_10)image_angle -= 180$(13_10)$(13_10)// Convert microseconds to something more reasonable. :)$(13_10)dt = delta_time / 30000$(13_10)$(13_10)var deltaY = mouse_y - y$(13_10)var deltaX = x - mouse_x$(13_10)$(13_10)var targetRotation = -darctan2( deltaX,deltaY )$(13_10)$(13_10)// TODO: Change this to rotation difference check.$(13_10)if ( image_angle < targetRotation )$(13_10)	image_angle += ROT_SPEED * dt$(13_10)$(13_10)if ( image_angle > targetRotation )$(13_10)	image_angle -= ROT_SPEED * dt$(13_10)$(13_10)// image_angle = targetRotation$(13_10)$(13_10)// Move to mouse and stop when it arrives.$(13_10)if ( sqrt( ( deltaX * deltaX ) + ( deltaY * deltaY ) ) > SPEED )$(13_10){$(13_10)	x += SPEED * dsin( image_angle -   0 ) * dt$(13_10)	y -= SPEED * dcos( image_angle - 180 ) * dt$(13_10)}$(13_10)$(13_10)image_angle += 180"
/// @desc Apply Movement
image_angle -= 180

// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

var deltaY = mouse_y - y
var deltaX = x - mouse_x

var targetRotation = -darctan2( deltaX,deltaY )

// TODO: Change this to rotation difference check.
if ( image_angle < targetRotation )
	image_angle += ROT_SPEED * dt

if ( image_angle > targetRotation )
	image_angle -= ROT_SPEED * dt

// image_angle = targetRotation

// Move to mouse and stop when it arrives.
if ( sqrt( ( deltaX * deltaX ) + ( deltaY * deltaY ) ) > SPEED )
{
	x += SPEED * dsin( image_angle -   0 ) * dt
	y -= SPEED * dcos( image_angle - 180 ) * dt
}

image_angle += 180