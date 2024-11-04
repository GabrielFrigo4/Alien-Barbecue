if(!start){
	if(!shiftPress){
		shiftPress = true;
		player2 = instance_create_layer(room_width/2 + 100,room_height/2,"Instances",obj_ufo);
		player2.typeUFO = PlayerType.Multi2;
		player2.sound_ray = snd_ray2;
		player1.x = room_width/2 - 100;
		player1.typeUFO = PlayerType.Multi1;
	}
	else if(shiftPress){
		instance_destroy(player2);
		player2 = noone;
		shiftPress = false;
		player1.x = room_width/2;
		player1.typeUFO = PlayerType.Single;
	}
}