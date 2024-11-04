if(!_GC.lost && _GC.start){
	var player_dist_ang = point_direction(x,y,player_select.x,player_select.y - 16);
	if(x < player_select.x){
		if(image_angle < get_angle_usage(player_dist_ang)){
			image_angle += 2;
		}
		if(image_angle > get_angle_usage(player_dist_ang)){
			image_angle -= 2;
		}
	}
	x += lengthdir_x(MISSEL_SPEED,image_angle);
	y += lengthdir_y(MISSEL_SPEED,image_angle); 
}