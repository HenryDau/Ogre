
var movement = argument[0];

if (cost <= movement){

    if (global.turn == "DA"){
    
        var range = 4;
        
        if (instance_exists(obj_howitzer))
            range = 8;
        
        var unit = instance_place(x,y,obj_defender);
        if (unit != noone){
            if (range - movement <= unit.range && !unit.disabled)
                sprite_index = spr_valid_hex;
            else
                sprite_index = spr_hex;
        }
    } else if (global.turn == "AM" && movement > 0){
    
        //var infantry = instance_place(x,y,obj_infantry);
        if (instance_number(obj_multiple_units) > 0 && (obj_ogre.rams_this_turn < obj_ogre.MAX_RAMS)){
            sprite_index = spr_valid_hex;
        }

    } else if (global.turn == "AA"){
        if (instance_number(obj_multiple_units) > 0){
            sprite_index = spr_valid_hex;
        }
    }
  
    if (movement > cost)
        cost = movement;
    
    if (movement > 0){
        movement--;
        
        if (global.turn == "AM" && place_meeting(x, y, obj_defender) && id != get_tile_at_ogre()){
        } else {
        
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
}
