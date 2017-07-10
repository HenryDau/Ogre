var tile = argument[0];
var x_dst = argument[1];
var y_dst = argument[2];

if (global.turn == "AM"){
    // Ogre moving
    if (tile == get_tile_at_ogre() && instance_number(obj_multiple_units) == 0) {
    
        // If the ogre isn't on top of another unit, don't let the ogre move onto the same hex
        tile.sprite_index = spr_hex;
    } else {
    
        // Normal Movement
        if ((obj_ogre.rams_this_turn >= obj_ogre.MAX_RAMS && place_meeting(x_dst, y_dst, obj_defender)) && !place_meeting(x_dst, y_dst, obj_infantry))
            tile.sprite_index = spr_hex;
        else
            tile.sprite_index = spr_valid_hex;
        
        // Don't let the Ogre move through units without ramming
        /*if (place_meeting(x_dst, y_dst, obj_defender)) {
            tile.cost = movement + 1;
        }*/
    }
    
} else if (global.turn == "DM" || global.turn == "DM2"){
    // Defender moving...
    if (place_meeting(x_dst, y_dst, obj_defender)){
    
        var unit = instance_place(x_dst, y_dst, obj_infantry);
        if (get_selected_unit() == obj_infantry && unit != noone){
        
            // Infantry moving onto infantry, so check attack values...
            if (global.unit_selected == "Infantry 1" && unit.attack < 3
                || global.unit_selected == "Infantry 2" && unit.attack < 2){
                
                // Can merge...
                tile.sprite_index = spr_valid_hex;
            } else {
            
                // Can't merge
                tile.sprite_index = spr_hex;
            }
        } else {
            // Selected unit isn't infantry, so can't occupy a tile with another defender
            tile.sprite_index = spr_hex;
        }
    } else {
    
        // If there is an ogre, armor units can move onto it (but not through), but not infantry
        var ogre = instance_place(x_dst, y_dst, obj_ogre)
        if (ogre != noone){
            if (get_selected_unit() == obj_infantry)
                tile.sprite_index = spr_hex;
            else {
                tile.sprite_index = spr_valid_hex;
            }
            return noone;
        } else
            tile.sprite_index = spr_valid_hex;
    }
} else if (global.turn == "AA"){

    if (place_meeting(x_dst, y_dst, obj_defender)){
    
        var antipersonnel_selected = false;
        with (obj_antipersonnel){
            if (selected)
                antipersonnel_selected = true;
        }
        
        //if (get_selected_unit() == obj_antipersonnel || antipersonnel_selected){
        if (antipersonnel_selected){
        
            var infantry = instance_place(x_dst, y_dst, obj_infantry);
            if ((infantry != noone && !infantry.been_attacked) || place_meeting(x_dst, y_dst, obj_cp)){
                tile.sprite_index = spr_valid_hex;
            } else {
                tile.sprite_index = spr_hex;
            }
        } else {
            /*var infantry = instance_place(x_dst, y_dst, obj_infantry);
            if (infantry != noone){
                if (!infantry.been_attacked)
                    tile.sprite_index = spr_valid_hex;
                else 
                    tile.sprite_index = spr_hex;
            } else {
                tile.sprite_index = spr_valid_hex;
            }*/
             tile.sprite_index = spr_valid_hex;
        }
    } else {
        tile.sprite_index = spr_hex;
    }

} else if (global.turn == "DA"){
    // TODO
    /*if (place_meeting(x_dst, y_dst, obj_defender)){
        tile.sprite_index = spr_valid_hex;
    } else {
        tile.sprite_index = spr_hex;
    }*/
}

return tile;
