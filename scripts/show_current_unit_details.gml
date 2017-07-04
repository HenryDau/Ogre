//var x_start = 400;
//var y_start = 50;

var x_start = argument[0];
var y_start = argument[1];

if (get_selected_unit() == obj_ogre){
    
} else if (get_selected_unit() == obj_missile || get_selected_unit() == obj_main_battery ||
            get_selected_unit() == obj_secondary_battery || get_selected_unit() == obj_antipersonnel){
            // Show ogre weapon stats
            draw_text_color(x_start, y_start + 32 * 1, "Attack: " + string(get_selected_unit().attack), c_black, c_black, c_black, c_black, 1);
            draw_text_color(x_start, y_start + 32 * 2, "Range: " + string(get_selected_unit().range), c_black, c_black, c_black, c_black, 1);
            draw_text_color(x_start, y_start + 32 * 3, "Defense: " + string(get_selected_unit().defense), c_black, c_black, c_black, c_black, 1);
        
} else {
    // If it's not an ogre selected, show the defender stats
    if (global.defender != noone){
        draw_text_color(x_start, y_start, "Name: " + string(global.defender.name), c_black, c_black, c_black, c_black, 1);
        draw_text_color(x_start, y_start + 32, "Attack: " + string(global.defender.attack), c_black, c_black, c_black, c_black, 1);
        draw_text_color(x_start, y_start + 32 * 2, "Range: " + string(global.defender.range), c_black, c_black, c_black, c_black, 1);
        draw_text_color(x_start, y_start + 32 * 3, "Defense: " + string(global.defender.defense), c_black, c_black, c_black, c_black, 1);
        draw_text_color(x_start, y_start + 32 * 4, "Movement: " + string(global.defender.movement), c_black, c_black, c_black, c_black, 1);
        draw_text_color(x_start, y_start + 32 * 5, "Movement Left: " + string(global.defender.current_movement), c_black, c_black, c_black, c_black, 1);
    }
}




