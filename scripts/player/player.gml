function player(){
	enum PlayerType{
		Single,
		Multi1,
		Multi2,
	}

	#macro COLOR_PLAYER1 make_color_rgb(200,255,255)
	#macro COLOR_PLAYER2 make_color_rgb(255,200,255)
}

function player_init(){
	#macro	ACCELERATION 0.25
	#macro	MAX_VALUE 10

	velh = 0;
	velv = 0;

	image_xscale = SIZE_SCALE;
	image_yscale = SIZE_SCALE;	
}

function player_move_single(){
	var input = {
		left1 : vk_left,
		left2 : ord("A"),
		right1 : vk_right,
		right2 : ord("D"),
		up1 : vk_up,
		up2 : ord("W"),
		down1 : vk_down,
		down2 : ord("S"),
	}
	player_move(input);
}

function player_move_multplayer1(){
	var input = {
		left1 : ord("A"),
		left2 : ord("A"),
		right1 : ord("D"),
		right2 : ord("D"),
		up1 : ord("W"),
		up2 : ord("W"),
		down1 : ord("S"),
		down2 : ord("S"),
	}
	player_move(input);
}

function player_move_multplayer2(){
	var input = {
		left1 : vk_left,
		left2 : vk_left,
		right1 : vk_right,
		right2 : vk_right,
		up1 : vk_up,
		up2 : vk_up,
		down1 : vk_down,
		down2 : vk_down,
	}
	player_move(input);
}

function player_move(input){
	var left = keyboard_check(input.left1) or keyboard_check(input.left2);
	var right = keyboard_check(input.right1) or keyboard_check(input.right2);
	var up = keyboard_check(input.up1) or keyboard_check(input.up2);
	var down = keyboard_check(input.down1) or keyboard_check(input.down2);

	if((right - left < 0 and velh > -MAX_VALUE) or (right - left > 0 and velh < MAX_VALUE))
	{
		velh += (right - left) * ACCELERATION;	
	}
	else if(right - left == 0)
	{
		if(velh > 0)
			velh -= ACCELERATION;
		if(velh < 0)
			velh += ACCELERATION;
	}

	if((down - up < 0 and velv > -MAX_VALUE) or (down - up > 0 and velv < MAX_VALUE))
	{
		velv += (down - up) * ACCELERATION;
	}
	else if(down - up == 0)
	{
		if(velv > 0)
			velv -= ACCELERATION;
		if(velv < 0)
			velv += ACCELERATION;
	}
	
	//horizontal
	if(place_meeting(x + velh, y, obj_wall))
	{
		var dif_h = abs(velh) - floor(abs(velh));
		dif_h *= sign(velh);
		if(!place_meeting(x + dif_h, y, obj_wall))
		{
			x += dif_h;
		}

		repeat(abs(velh))
		{
		    if(!place_meeting(x + sign(velh), y, obj_wall))
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
	if(place_meeting(x, y + velv, obj_wall))
	{
		var dif_v = abs(velv) - floor(abs(velv));
		dif_v *= sign(velv);
		if(!place_meeting(x, y + dif_v, obj_wall))
		{
			y += dif_v;
		}
		
		repeat(abs(velv))
		{
		    if(!place_meeting(x, y + sign(velv), obj_wall))
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
}

function player_ray_single(){		
	var input = {
		ray1 : ord("C"),
		ray2 : ord("M"),
	}
	player_ray(input);
}

function player_ray_multplayer1(){	
	var input = {
		ray1 : ord("C"),
		ray2 : ord("C"),
	}
	player_ray(input);
}

function player_ray_multplayer2(){
	var input = {
		ray1 : ord("M"),
		ray2 : ord("M"),
	}
	player_ray(input);
}

function player_ray(input){
	var input_ray = keyboard_check(input.ray1) or keyboard_check(input.ray2);
	
	if(input_ray){
		instance_activate_object(ray);
		if(!audio_is_playing(sound_ray)){
			play_sound(sound_ray, true);
		}
	}
	else{
		instance_deactivate_object(ray);
		if(audio_is_playing(sound_ray)){
			audio_stop_sound(sound_ray);
		}
	}
}