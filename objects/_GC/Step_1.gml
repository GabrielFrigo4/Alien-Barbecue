if(!lost){
	fpsAnime += FPS_ANIME;
	
	if(floor(fpsAnime) >= sprite_get_number(spr_ufo)){
		fpsAnime -= floor(fpsAnime);
	}
	
	player1.image_index = floor(fpsAnime);
	if(player2 != noone){
		player2.image_index = floor(fpsAnime);
	}
	
	if(floor_speed < MAX_SPEED && start){
		floor_speed += ADD_SPEED;
	}
	
	if(start){
		game_points += get_second_point()/60;
		
		layer_hspeed (background_layer_id, -floor_speed/12);
	}
}
else{
	if(layer_get_hspeed(background_layer_id) != 0){
		layer_hspeed (background_layer_id, 0);
	}
}