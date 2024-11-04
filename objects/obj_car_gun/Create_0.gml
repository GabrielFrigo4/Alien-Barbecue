#macro BULLET_TIME_MAX 60

bullet_time = BULLET_TIME_MAX;

image_xscale = SIZE_SCALE;
image_yscale = SIZE_SCALE;
depth -= 3;

player_select = obj_ufo;

for (var i = 0; i < instance_number(obj_ufo); ++i;)
{
    ufo[i] = instance_find(obj_ufo,i);
}

player_select = ufo[irandom_range(0,instance_number(obj_ufo)-1)];