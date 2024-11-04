if(!_GC.lost && _GC.start){
	x -= _GC.floor_speed + bird_speed;
}

if(x <= DISTANCE_DESTROY){
		instance_destroy();	
}