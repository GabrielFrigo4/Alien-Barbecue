if(floor(image_index) == 1){
	gun.y = y - 46;
}
else{
	gun.y = y - 44;
}

if(!_GC.lost){
	x += velh;
	gun.x = x - 6;
}

if(x > _GC.x){
	instance_destroy();	
}