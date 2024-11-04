if(_GC.start && !_GC.lost){
	x -= _GC.floor_speed;
	if(x < DISTANCE_DESTROY*1.5){
		x += 1032;
	}
}