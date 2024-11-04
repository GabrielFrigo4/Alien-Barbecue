image_angle = point_direction(x,y,player_select.x,player_select.y - 16) - 90;
bullet_time--;
if(bullet_time <= 0){
	bullet_time = BULLET_TIME_MAX;
	instance_create_layer(x,y,"Instances", obj_bullat).image_angle = image_angle + 90;
}