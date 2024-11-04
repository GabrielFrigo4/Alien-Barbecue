#macro MISSELS_TIME_MAX 300
#macro PLANE_POSSITION 64

image_xscale = -SIZE_SCALE;
image_yscale = SIZE_SCALE;
depth -= 2;

missels_par = irandom_range(2,3);
missels_time = MISSELS_TIME_MAX;

velv = 0;
velh = 0;

exit_mode = irandom_range(0,1);

function launch_missiles(){
	missels_par--;
	instance_create_layer(x,y-10,"Instances", obj_mission).image_angle = 10;
	instance_create_layer(x,y+10,"Instances", obj_mission).image_angle = -10;
}