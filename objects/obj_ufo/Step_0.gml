if(!_GC.lost){
	if(_GC.start){
		//move
		switch(typeUFO){
			case PlayerType.Single:
			player_move_single();
				break;
			case PlayerType.Multi1:
			player_move_multplayer1();
				break;
			case PlayerType.Multi2:
			player_move_multplayer2();
				break;
		}
		
		//ray
		switch(typeUFO){
			case PlayerType.Single:
			player_ray_single();
				break;
			case PlayerType.Multi1:
			player_ray_multplayer1();
				break;
			case PlayerType.Multi2:
			player_ray_multplayer2();
				break;
		}
	}
}
else{
	if(audio_is_playing(sound_ray)){
		audio_stop_sound(sound_ray);
	}
}

ray.x = x;
ray.y = y;