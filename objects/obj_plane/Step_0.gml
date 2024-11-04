if(!_GC.lost && _GC.start){
	if(x >= PLANE_POSSITION && missels_par > 0){
		missels_time--;
		if(missels_time <= 0){
			missels_time = MISSELS_TIME_MAX;	
			launch_missiles();
		}
		
		y += velv;
		if(velv > 0){
			velv -= ACCELERATION/15;	
		}
		if(velv < 0){
			velv += ACCELERATION/15;	
		}
		if(velv == 0){
			if(y >= 432){
				velv = irandom_range(-1,0);
			}
			else if(y <= 36){
				velv = irandom_range(0,1);
			}
			else{
				velv = irandom_range(-1,1);
			}
		}
	}
	else if(missels_par > 0){
		x += 2;	
	}
	else{
		if(exit_mode){
			if(image_angle != 45){
				image_angle = 45;
			}
			x += 3.5;
			y -= 3.5;
			
			if(y < DISTANCE_DESTROY){
				instance_destroy();	
			}
		}
		else{
			velh -= ACCELERATION/4;
			x += velh;
			
			if(x < DISTANCE_DESTROY*2){
				instance_destroy();	
			}
		}
	}
}