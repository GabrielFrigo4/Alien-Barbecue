//create objs
if(!lost && start){
	//create cow
	if(game_points > CREATE_COW2){
		create_cow_time++;
		if(!first_cow_gold){
			first_cow_gold = true;
			instance_create_layer(x,y+4,"Instances",obj_cow_gold);
		}
		
		if(create_cow_time % random_create_cow_time == 0){
			var rand = irandom_range(0,1000);
			if(rand == 1000){
				instance_create_layer(x,y+4,"Instances",obj_cow_gold);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN2,TIME_COW_MAX2)/floor_speed);
			}
			else if(rand <= 110 && rand >= 101){
				instance_create_layer(x,y+4,"Instances",obj_cow_silver);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN2,TIME_COW_MAX2)/floor_speed);
			}
			else if(rand <= 100){
				instance_create_layer(x,y+4,"Instances",obj_cow_bronze);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN2,TIME_COW_MAX2)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_cow);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN2,TIME_COW_MAX2)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_COW_GOLD){
		create_cow_time++;
		if(!first_cow_gold){
			first_cow_gold = true;
			instance_create_layer(x,y+4,"Instances",obj_cow_gold);
		}
		
		if(create_cow_time % random_create_cow_time == 0){
			var rand = irandom_range(0,1000);
			if(rand == 1000){
				instance_create_layer(x,y+4,"Instances",obj_cow_gold);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else if(rand <= 110 && rand >= 101){
				instance_create_layer(x,y+4,"Instances",obj_cow_silver);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else if(rand <= 100){
				instance_create_layer(x,y+4,"Instances",obj_cow_bronze);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_cow);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_COW_SILVER){
		create_cow_time++;
		if(!first_cow_silver){
			first_cow_silver = true;
			instance_create_layer(x,y+4,"Instances",obj_cow_silver);
		}
		
		if(create_cow_time % random_create_cow_time == 0){
			var rand = irandom_range(0,100);
			if(rand == 100){
				instance_create_layer(x,y+4,"Instances",obj_cow_silver);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else if(rand <= 10){
				instance_create_layer(x,y+4,"Instances",obj_cow_bronze);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_cow);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
		}	
	}
	else if(game_points > CREATE_COW_BRONZE){
		create_cow_time++;
		if(!first_cow_bronze){
			first_cow_bronze = true;
			instance_create_layer(x,y+4,"Instances",obj_cow_bronze);
		}
		
		if(create_cow_time % random_create_cow_time == 0){
			var rand = irandom_range(0,10);
			if(rand == 10){
				instance_create_layer(x,y+4,"Instances",obj_cow_bronze);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_cow);
				create_cow_time = 0;
				random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed);
			}
		}	
	}
	else if(game_points > CREATE_COW1){
		create_cow_time++;
		if(create_cow_time % random_create_cow_time == 0){
			instance_create_layer(x,y+4,"Instances",obj_cow);
			create_cow_time = 0;
			random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed)
		}	
	}
	
	//create sheep
	if(game_points > CREATE_SHEEP_BLACK){
		create_sheep_time++;
		if(create_sheep_time % random_create_sheep_time == 0){
			if(!first_black_sheep){
				first_black_sheep = true;
				instance_create_layer(x,y+4,"Instances",obj_black_sheep);
			}
				
			var rand = irandom_range(0,50);
			if(rand == 50){
				instance_create_layer(x,y+4,"Instances",obj_black_sheep);
				create_sheep_time = 0;
				random_create_sheep_time = floor(irandom_range(TIME_SHEEP_MIN,TIME_SHEEP_MAX)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_sheep);
				create_sheep_time = 0;
				random_create_sheep_time = floor(irandom_range(TIME_SHEEP_MIN,TIME_SHEEP_MAX)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_SHEEP){
		create_sheep_time++;
		if(create_sheep_time % random_create_sheep_time == 0){;
			instance_create_layer(x,y+4,"Instances",obj_sheep);
			create_sheep_time = 0;
			random_create_sheep_time = floor(irandom_range(TIME_SHEEP_MIN,TIME_SHEEP_MAX)/floor_speed);
		}
	}
	
	//create pig
	if(game_points > CREATE_PIG){
		create_pig_time++;
		if(create_pig_time % random_create_pig_time == 0){
			instance_create_layer(x,y+4,"Instances",obj_pig);
			create_pig_time = 0;
			random_create_pig_time = floor(irandom_range(TIME_PIG_MIN,TIME_PIG_MAX)/floor_speed);
		}
	}
		
	//create tree
	if(game_points > CREATE_BIG_TREE){
		create_tree_time++;
		if(create_tree_time % random_create_tree_time == 0){
			var rand = irandom_range(0,2);
			if(rand == 0){
				instance_create_layer(x,y+4,"Instances",obj_tree_big);
				create_tree_time = 0;
				random_create_tree_time = floor(irandom_range(TIME_TREE_MIN2,TIME_TREE_MAX2)/floor_speed);
			}
			else{
				instance_create_layer(x,y+4,"Instances",obj_tree_small);
				create_tree_time = 0;
				random_create_tree_time = floor(irandom_range(TIME_TREE_MIN2,TIME_TREE_MAX2)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_SMALL_TREE){
		create_tree_time++;
		if(create_tree_time % random_create_tree_time == 0){
			instance_create_layer(x,y+4,"Instances",obj_tree_small);
			create_tree_time = 0;
			random_create_tree_time = floor(irandom_range(TIME_TREE_MIN1,TIME_TREE_MAX1)/floor_speed);
		}
	}
		
	//create bird
	if(game_points > CREATE_BIRD){
		create_bird_time++;
		if(create_bird_time % random_create_bird_time == 0){
			var y_random = random_range(12,540);
			instance_create_layer(x,y_random,"Instances",obj_bird);
			create_bird_time = 0;
			random_create_bird_time = floor(irandom_range(TIME_BIRD_MIN,TIME_BIRD_MAX)/floor_speed);
		}
	}
		
	//create car
	if(game_points > CREATE_CAR3){
		create_car_time++;
		if(create_car_time % random_create_car_time == 0){
			instance_create_layer(-48,y+4,"Instances",obj_car);
			create_car_time = 0;
			random_create_car_time = floor(irandom_range(TIME_CAR_MIN3,TIME_CAR_MAX3)/floor_speed);
		}
	}
	else if(game_points > CREATE_CAR2){
		create_car_time++;
		if(create_car_time % random_create_car_time == 0){
			instance_create_layer(-48,y+4,"Instances",obj_car);
			create_car_time = 0;
			random_create_car_time = floor(irandom_range(TIME_CAR_MIN2,TIME_CAR_MAX2)/floor_speed);
		}
	}
	else if(game_points > CREATE_CAR1){
		create_car_time++;
		if(create_car_time % random_create_car_time == 0){
			instance_create_layer(-48,y+4,"Instances",obj_car);
			create_car_time = 0;
			random_create_car_time = floor(irandom_range(TIME_CAR_MIN1,TIME_CAR_MAX1)/floor_speed);
		}
	}
	
	//create plane
	if(game_points > CREATE_PLANE3){
		create_plane_time++;
		if(create_plane_time % random_create_plane_time == 0){
			var qrandom = random_range(1,10);
			if(qrandom == 10){
				instance_create_layer(-48,y+y_random - 50,"Instances",obj_plane);
				instance_create_layer(-48,y+y_random,"Instances",obj_plane);
				instance_create_layer(-48,y+y_random + 50,"Instances",obj_plane);
				create_plane_time = 0;
				random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN3,TIME_PLANE_MAX3)/floor_speed);
			}
			else if(qrandom <= 9 && qrandom >= 7){
				instance_create_layer(-48,y+y_random,"Instances",obj_plane);
				instance_create_layer(-48,y+y_random + 50,"Instances",obj_plane);
				create_plane_time = 0;
				random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN3,TIME_PLANE_MAX3)/floor_speed);
			}
			else{
				instance_create_layer(-48,y+y_random,"Instances",obj_plane);
				create_plane_time = 0;
				random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN3,TIME_PLANE_MAX3)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_PLANE2){
		create_plane_time++;
		if(create_plane_time % random_create_plane_time == 0){
			var y_random = random_range(-250,-500);
			var qrandom = random_range(1,5);
			if(qrandom == 5){
				instance_create_layer(-48,y+y_random,"Instances",obj_plane);
				instance_create_layer(-48,y+y_random + 50,"Instances",obj_plane);
				create_plane_time = 0;
				random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN2,TIME_PLANE_MAX2)/floor_speed);
			}
			else{
				instance_create_layer(-48,y+y_random,"Instances",obj_plane);
				create_plane_time = 0;
				random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN2,TIME_PLANE_MAX2)/floor_speed);
			}
		}
	}
	else if(game_points > CREATE_PLANE1){
		create_plane_time++;
		if(create_plane_time % random_create_plane_time == 0){
			var y_random = random_range(-250,-500);
			instance_create_layer(-48,y+y_random,"Instances",obj_plane);
			create_plane_time = 0;
			random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN1,TIME_PLANE_MAX1)/floor_speed);
		}
	}
}