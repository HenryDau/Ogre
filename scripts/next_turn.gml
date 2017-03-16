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
    
    global.selected_display = instance_create(x_start, y_start - 64, obj_display);
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
    global.turn = "A"
    global.unit_selected = "Ogre";
    
    with (obj_display)
        instance_destroy();
    
    global.selected_display = instance_create(x_start, y_start - 64, obj_display);
    global.selected_display.sprite_index = spr_ogre;
    global.selected_display.this_unit = "Ogre";
    
} else if (global.turn == "A"){
    // Defender Turn!
    
    global.turn = "D"
    global.unit_selected = "None";
    
    global.selected_display.sprite_index = noone;
    global.selected_display.this_unit = "None";
    
} else if (global.turn == "D"){
    // Attacker turn!
    
    global.turn = "A"
    global.unit_selected = "Ogre";

    global.selected_display.sprite_index = spr_ogre;
    global.selected_display.this_unit = "Ogre";
}
