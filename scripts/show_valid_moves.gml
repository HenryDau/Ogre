
var movement = argument[0];

if (cost > movement){
} else {

    if (global.turn == "DA"){
        var unit = instance_place(x,y,obj_defender);
        if (unit != noone){
            if (8 - movement <= unit.range && !unit.disabled)
                sprite_index = spr_valid_hex;
            else
                sprite_index = spr_hex;
        }
    }
  
    if (movement > cost)
        cost = movement;
    
    if (movement > 0){
        movement--;
        find_adjacent_tiles();
        
        /*show_debug_message("North: " + string(north) + " South: " + string(south) + " Southeast : " 
                        + string(southeast) + " Southwest: " + string(southwest) + 
                        " Northeast : " + string(northeast) + " Northwest: " + string(northwest));
        */
        if (north != noone){
            with (north)
                show_valid_moves(movement);
        }
        if (south != noone){
             with (south)
                show_valid_moves(movement); 
        }
        if (northeast != noone){
             with (northeast)
                show_valid_moves(movement);
        }
        if (northwest != noone){
             with (northwest)
                show_valid_moves(movement);
        }
        if (southeast != noone){
            with (southeast)
                show_valid_moves(movement);
        }
        if (southwest != noone){
             with (southwest)
                show_valid_moves(movement); 
        }
    }
}
