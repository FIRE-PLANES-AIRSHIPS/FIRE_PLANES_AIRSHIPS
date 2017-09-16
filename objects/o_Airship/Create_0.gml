/// @desc Initialize Variables
SPEED = 0.56

HP_MAX = 20
hp = HP_MAX

dt = 0

/// @desc Move Off-Screen
image_angle = random( 360 )

var offset = 200

while( x > 0 - offset && x < 1200 + offset &&
	   y > 0 - offset && y < 800 + offset )
{
	x -= SPEED * dsin( image_angle )
	y += SPEED * dcos( image_angle )
}