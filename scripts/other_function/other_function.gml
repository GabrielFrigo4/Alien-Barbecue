function draw_self_color(color) {
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,color,1);
}

function play_sound(sound, loop){
	audio_play_sound(sound,1,loop);
}

function get_second_point(){
	var points = _GC.floor_speed/3.0;
	return points;
}

function create_point_text(x,y,point, color){
	var text_point = instance_create_layer(x,y,"Instances",obj_number_point);
	text_point.depth -= 10;
	text_point.point = point;
	text_point.color = color;
}