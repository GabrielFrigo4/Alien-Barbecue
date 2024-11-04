#macro MISSEL_SPEED 6

depth -= 4;
image_xscale = -SIZE_SCALE;
image_yscale = SIZE_SCALE;

player_select = obj_ufo;

for (var i = 0; i < instance_number(obj_ufo); ++i;)
{
    ufo[i] = instance_find(obj_ufo,i);
}

player_select = ufo[irandom_range(0,instance_number(obj_ufo)-1)];

function get_angle_usage(ang){
	if(ang > 180){
		return ang - 360;
	}
	else{
		return ang;
	}
}