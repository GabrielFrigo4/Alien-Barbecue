draw_set_halign(fa_center);
draw_set_valign(fa_middle);
	if(!start){
		draw_text(room_width/2,room_height/2 + 150,"press space to start");
		if(!shiftPress){
			draw_text(room_width/2,room_height/2 + 175,"press shift to add Player2");
			draw_text(room_width/2,room_height/2 - 100,"WASD or arroys to move\nC or M to ray");
		}
		else{
			draw_text(room_width/2,room_height/2 + 175,"press shift to remove Player2");
			draw_text(room_width/2 - 100,room_height/2 - 100,"WASD to move\nC to ray");
			draw_text(room_width/2 + 100,room_height/2 - 100,"arroys to move\nM to ray");
		}
	}
	if(lost){
		draw_text_color(room_width/2,room_height/2 - 15,"YOU LOSE", c_red, c_red, c_red, c_red, 1);
		draw_text(room_width/2,room_height/2 + 15,"press R to restart");
	}
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_halign(fa_right);
	draw_text(room_width-8,6,"record: " + string(global.game_record));
	if(start){
		draw_text(room_width-8,26,floor(game_points));
	}
draw_set_halign(fa_left);