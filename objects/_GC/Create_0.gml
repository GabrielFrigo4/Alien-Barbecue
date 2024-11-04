//global macros
#macro SIZE_SCALE 2
#macro SIZE_COW_SCALE 3
#macro MAX_SPEED 12
#macro ADD_SPEED 0.002
#macro ANIMAL_SPEED_MIN 1
#macro ANIMAL_SPEED_MAX 3
#macro BIRD_SPEED_MIN 2
#macro BIRD_SPEED_MAX 4
#macro DISTANCE_DESTROY -48

//animals create macros
#macro CREATE_COW1 1
#macro CREATE_COW2 1000
#macro CREATE_COW_BRONZE 750
#macro CREATE_COW_SILVER 1500
#macro CREATE_COW_GOLD 3000
#macro CREATE_SHEEP 50
#macro CREATE_SHEEP_BLACK 1000
#macro CREATE_PIG 300
#macro CREATE_SMALL_TREE 100
#macro CREATE_BIG_TREE 400
#macro CREATE_BIRD 800
#macro CREATE_CAR1 2500
#macro CREATE_CAR2 6000
#macro CREATE_CAR3 11000
#macro CREATE_PLANE1 5000
#macro CREATE_PLANE2 10000
#macro CREATE_PLANE3 15000

//times
//cow
#macro TIME_COW_MIN1 300
#macro TIME_COW_MAX1 900
#macro TIME_COW_MIN2 400
#macro TIME_COW_MAX2 1200
//sheep
#macro TIME_SHEEP_MIN 200
#macro TIME_SHEEP_MAX 600
//pig
#macro TIME_PIG_MIN 600
#macro TIME_PIG_MAX 1800
//tree
#macro TIME_TREE_MIN1 1250
#macro TIME_TREE_MAX1 2500
#macro TIME_TREE_MIN2 1000
#macro TIME_TREE_MAX2 3250
//bird
#macro TIME_BIRD_MIN 3000
#macro TIME_BIRD_MAX 4500
//car
#macro TIME_CAR_MIN1 10000
#macro TIME_CAR_MAX1 12500
#macro TIME_CAR_MIN2 8000
#macro TIME_CAR_MAX2 10000
#macro TIME_CAR_MIN3 6000
#macro TIME_CAR_MAX3 8000
//plane
#macro TIME_PLANE_MIN1 15000
#macro TIME_PLANE_MAX1 20000
#macro TIME_PLANE_MIN2 12000
#macro TIME_PLANE_MAX2 15000
#macro TIME_PLANE_MIN3 10000
#macro TIME_PLANE_MAX3 12500

player();
randomize();
draw_set_color(c_black);

//gc vars
game_points = 0;
floor_speed = 3;
lost = false;
//cow
first_cow_bronze = false;
first_cow_silver = false;
first_cow_gold = false;
create_cow_time = 0;
random_create_cow_time = floor(irandom_range(TIME_COW_MIN1,TIME_COW_MAX1)/floor_speed)
//sheep
first_black_sheep = false;
create_sheep_time = 0;
random_create_sheep_time = floor(irandom_range(TIME_SHEEP_MIN,TIME_SHEEP_MAX)/floor_speed)
//pig
create_pig_time = 0;
random_create_pig_time = floor(irandom_range(TIME_PIG_MIN,TIME_PIG_MAX)/floor_speed)
//tree
create_tree_time = 0;
random_create_tree_time = floor(irandom_range(TIME_TREE_MIN1,TIME_TREE_MAX1)/floor_speed);
//bird
create_bird_time = 0;
random_create_bird_time = floor(irandom_range(TIME_BIRD_MIN,TIME_BIRD_MAX)/floor_speed);
//car
create_car_time = 0;
random_create_car_time = floor(irandom_range(TIME_CAR_MIN1,TIME_CAR_MAX1)/floor_speed);
//plane
create_plane_time = 0;
random_create_plane_time = floor(irandom_range(TIME_PLANE_MIN1,TIME_PLANE_MAX1)/floor_speed);

//background
background_layer_id = layer_get_id ("Background");
layer_hspeed (background_layer_id, 0);

//gc funcs
function lost_game(){
	lost = true;
	if(global.game_record < floor(game_points)){
		global.game_record = floor(game_points);	
	}
	play_sound(snd_game_over, false);
} 

depth -= 10;

start = false;
shiftPress = false;

player1 = instance_create_layer(room_width/2,room_height/2,"Instances",obj_ufo);
player1.typeUFO = PlayerType.Single;
player1.sound_ray = snd_ray1;
player2 = noone;

//player animation
#macro FPS_ANIME 3/60
fpsAnime = 0;