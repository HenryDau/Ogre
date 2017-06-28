var running = argument[0];

if (instance_number(obj_defender) == 0){
    // Complete Ogre win
    show_debug_message("Complete Ogre win");
    
    var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
    win.victory_display = spr_complete_ogre_victory;
}

var cp_destroyed = true;
var attack_points = 0;

with (obj_defender){

    attack_points += attack;
    if (sprite_index == spr_cp)
        cp_destroyed = false;
}

if (running && cp_destroyed){
    // Ogre win
    show_debug_message("Ogre win");
    
    var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
    win.victory_display = spr_ogre_victory;
}

if (cp_destroyed && instance_number(obj_ogre) == 0){
    // Marginal Ogre victory
    show_debug_message("Marginal Ogre win");
    
    var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
    win.victory_display = spr_marginal_ogre_victory;
}

if (!cp_destroyed && running ){
    // Marginal Defense Victory
    show_debug_message("Marginal Defense win");
    
    var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
    win.victory_display = spr_marginal_defense_victory;
}

if (!cp_destroyed && instance_number(obj_ogre) == 0){

    if (attack_points >= 30){
        // Complete Defense Victory
        show_debug_message("Complete Defense win");
        
        var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
        win.victory_display = spr_defense_victory;
    } else {
    
        // Defense Victory
        show_debug_message("Defense win");
        
        var win = instance_create(room_width / 2, room_height / 2, obj_game_over);
        win.victory_display = spr_complete_defense_victory;
    }
}
