image_angle -= 180

// Convert microseconds to something more reasonable. :)
dt = delta_time / 30000

x += SPEED * dsin( image_angle -   0 ) * dt
y -= SPEED * dcos( image_angle - 180 ) * dt

image_angle += 180