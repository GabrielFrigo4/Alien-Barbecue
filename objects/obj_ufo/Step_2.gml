//collision
if(place_meeting(x,y,obj_mortal)){
	if(!_GC.lost){
		_GC.lost_game();
		instance_deactivate_object(ray);
	}
}