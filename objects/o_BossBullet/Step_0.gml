// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

x += SPEED * dsin( image_angle ) * dt
y -= SPEED * dcos( image_angle ) * dt