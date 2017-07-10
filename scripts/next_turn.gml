var x_start = 448;
var y_start = 96;
var offset = 5;

if (global.turn == "DS"){
    // Defender is done 
    
    global.turn = "AS"
    
    obj_hex.sprite_index = spr_hex
    
    with (obj_display)
        instance_destroy();
        
    global.unit_selected = "Ogre"
    
    global.selected_display = instance_create(x_start - 50, y_start - 63, obj_display);
    global.selected_display.sprite_index = spr_ogre;
    global.selected_display.this_unit = "Ogre";

    var disp = instance_create(x_start, y_start, obj_display);
    disp.sprite_index = spr_ogre;
    disp.this_unit = "Ogre";
    
    var disp = instance_create(x_start, y_start + 32, obj_display);
    disp.sprite_index = spr_delete;
    disp.this_unit = "Delete";
    
} else if (global.turn == "AS"){
    // Start the game!
    global.turn = "AM"
    global.unit_selected = "Ogre";
    global.defender = noone;
    
    create_turn_displays();
    
    with (obj_display)
        instance_destroy();
    
    global.selected_display = instance_create(x_start - 50, y_start - 63, obj_display);
    global.selected_display.sprite_index = spr_ogre;
    global.selected_display.this_unit = "Ogre";
    
    create_ogre_displays();
    init_ogre_turn();
    
} else if (global.turn == "AM"){
    global.defender = noone;
    global.turn = "AA";
    with (obj_hex){
        sprite_index = spr_hex;
        cost = 0;
    }
    global.combined_attack_range = 0;
    
} else if (global.turn == "AA"){
    // Defender Turn!
    
    global.turn = "DM"
    global.unit_selected = "None";
    global.defender = noone;
    with (obj_hex){
        sprite_index = spr_hex;
        cost = 0;
    }
    obj_crater.cost = 0;
    obj_outline.visible = false;
    obj_attack_button.visible = false;
    
    global.selected_display.sprite_index = noone;
    global.selected_display.this_unit = "None";
    
    init_defender_turn();
    
} else if (global.turn == "DM"){
    global.turn = "DA"
    with (obj_hex){
        sprite_index = spr_hex;
        cost = 0;
    }
    show_valid_targets();
    
} else if (global.turn == "DA"){
    // Attacker turn!
    with (obj_hex){
        sprite_index = spr_hex;
        cost = 0;
    }
    obj_crater.cost = 0;
    
    with (obj_defender)
        selected = false;
        
    obj_attack_button.visible = false;
    
    if (instance_number(obj_gev) > 0){
        init_special_gev_movement();
        global.turn = "DM2"
    } else {
        global.turn = "AM"
        global.unit_selected = "Ogre";
    
        global.selected_display.sprite_index = spr_ogre;
        global.selected_display.this_unit = "Ogre";
        
        init_ogre_turn();
    }
} else if (global.turn == "DM2"){
    global.turn = "AM"
    global.unit_selected = "Ogre";
    global.defender = noone;
    with (obj_hex){
        sprite_index = spr_hex;
        cost = 0;
    }

    global.selected_display.sprite_index = spr_ogre;
    global.selected_display.this_unit = "Ogre";
    
    init_ogre_turn();
}

if (instance_number(obj_result) > 0)
    with (obj_result)
        instance_destroy();
