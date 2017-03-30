with(obj_ogre){
    // Find out the ogre's current movement
    var ratio = instance_number(obj_tread) / tread_count;
    
    //show_debug_message("Treads: " + string(instance_number(obj_tread)) + " Total: " + string(tread_count) + " Ratio: " + string(ratio));
    if (ratio > 2/3){
        movement = 3;
    } else if (ratio > 1/3){
        movement = 2;
    } else if (ratio > 0){
        movement = 1;
    } else {
        movement = 0;
    }
    current_movement = movement;
}
var tile = get_tile_at_ogre()
with (tile){
    show_valid_moves(obj_ogre.current_movement);
    global.tile = id;
}

global.target = noone;

with(obj_missile){
    has_shot = false;
}

with(obj_main_battery){
    has_shot = false;
}

with(obj_secondary_battery){
    has_shot = false;
}

with(obj_antipersonnel){
    has_shot = false;
}

with(obj_infantry){
    been_attacked = false;
}
