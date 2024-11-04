function plants(){

}

function plants_init(){
	image_xscale = SIZE_SCALE;
	image_yscale = SIZE_SCALE;	
}

function plants_update(){
	x -= _GC.floor_speed;
		
	if(x <= DISTANCE_DESTROY){
		instance_destroy();	
	}
}