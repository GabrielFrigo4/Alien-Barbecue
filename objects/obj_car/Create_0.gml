#macro CAR_SPEED_MIN 0.8
#macro CAR_SPEED_MAX 2.2

image_xscale = -SIZE_SCALE;
image_yscale = SIZE_SCALE;
depth -= 2;

velh = random_range(CAR_SPEED_MIN, CAR_SPEED_MAX);

gun = instance_create_layer(x - 6,y - 44,"Instances", obj_car_gun)