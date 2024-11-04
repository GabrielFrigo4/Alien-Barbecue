function animals(){

}

function animals_init(){
	flip = irandom_range(0,1);
	image_speed = 0;
	if(flip){
		image_xscale = SIZE_SCALE;
	}
	else{
		image_xscale = -SIZE_SCALE;
	}
	image_yscale = SIZE_SCALE;	
	depth++;
	velv = 0;
	grav = 0.1;
	if(flip){
		animal_speed = -random_range(ANIMAL_SPEED_MIN,ANIMAL_SPEED_MAX);
	}
	else{
		animal_speed = random_range(ANIMAL_SPEED_MIN,ANIMAL_SPEED_MAX);
	}
}

function animals_cow_init(){
	animals_init();
	if(flip){
		image_xscale = SIZE_COW_SCALE;
	}
	else{
		image_xscale = -SIZE_COW_SCALE;
	}
	image_yscale = SIZE_COW_SCALE;	
}

function animals_update(points){
	var velh = 0;
	velv += grav;
	
	var ray_collider = instance_place(x,y,obj_ray);
	if(ray_collider == noone){
		velh = -(_GC.floor_speed - animal_speed);
	}
	else{
		if(floor(ray_collider.x) < floor(x)){
			velh = -1;
		}
		else if(floor(ray_collider.x) > floor(x)){
			velh = 1;
		}
		else{
			velh = 0;
		}
		velv = -2;
		
		if(place_meeting(x,y,obj_ufo)){
			instance_destroy();
			_GC.game_points += points;
			if(points > 0){
				play_sound(snd_add_point, false);
				create_point_text(ray_collider.id_ufo.x,ray_collider.id_ufo.y - 48,floor(points),c_green)
			}
			else if(points < 0){
				play_sound(snd_less_point, false);
				create_point_text(ray_collider.id_ufo.x,ray_collider.id_ufo.y - 48,floor(abs(points)),c_red)
			}
		}
	}
	
	//horizontal
	if(place_meeting(x + velh, y, obj_floor))
	{
		var dif_h = abs(velh) - floor(abs(velh));
		dif_h *= sign(velh);
		if(!place_meeting(x + dif_h, y, obj_floor))
		{
			x += dif_h;
		}

		repeat(abs(velh))
		{
		    if(!place_meeting(x + sign(velh), y, obj_floor))
		    {
				x += sign(velh);
		    }
		    else
		    {
			    velh = 0;
			    break;
		    }
		}
	}
	else
	{
		x += velh;
	}

	//vertical
	if(place_meeting(x, y + velv, obj_floor))
	{
		var dif_v = abs(velv) - floor(abs(velv));
		dif_v *= sign(velv);
		if(!place_meeting(x, y + dif_v, obj_floor))
		{
			y += dif_v;
		}
		
		repeat(abs(velv))
		{
		    if(!place_meeting(x, y + sign(velv), obj_floor))
		    {
				y += sign(velv);
		    }
		    else
		    {
			    velv = 0;
			    break;
		    }
		}
	}
	else
	{
		y += velv;	
	}
	
	if(x <= DISTANCE_DESTROY){
		instance_destroy();	
	}
}

function animals_draw(){
	draw_self();
}

function animals_cow_init_metal(){
	uniform_texture_pixel_hander = shader_get_uniform(shd_glow_metal,"texture_pixel");
	uniform_glow_color_hander = shader_get_uniform(shd_glow_metal,"glow_color");
	animals_cow_init();
}

function animals_draw_metal(R, G, B){
	shader_set(shd_glow_metal);

	var texture = sprite_get_texture(sprite_index,image_index);
	var texture_width = texture_get_texel_width(texture);
	var texture_height = texture_get_texel_height(texture);

	shader_set_uniform_f(uniform_texture_pixel_hander,texture_width,texture_height);
	shader_set_uniform_f(uniform_glow_color_hander,R,G,B);

	draw_self();
	shader_reset();
}