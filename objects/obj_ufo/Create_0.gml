player_init();
player();
ativate = false;
typeUFO = 0;
ray = instance_create_layer(x,y,"Instances",obj_ray);
ray.id_ufo = id;
instance_deactivate_object(ray);