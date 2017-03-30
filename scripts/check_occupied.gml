var tile = argument[0];
var x_dst = argument[1];
var y_dst = argument[2];

if (global.turn == "AM"){
    // Ogre moving
    tile.sprite_index = spr_valid_hex;
    
} else if (global.turn == "DM" || global.turn == "DM2"){
    // Defender moving...
    //var ogre = instance_place(x_dst, y_dst, obj_ogre)
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
        tile.sprite_index = spr_valid_hex;
    }
} else if (global.turn == "AA"){

    if (place_meeting(x_dst, y_dst, obj_defender)){
    
        var antipersonnel_selected = false;
        with (obj_antipersonnel){
            if (selected)
                antipersonnel_selected = true;
        }
        
        if (get_selected_unit() == obj_antipersonnel || antipersonnel_selected){
        
            var infantry = instance_place(x_dst, y_dst, obj_infantry);
            if ((infantry != noone && !infantry.been_attacked) || place_meeting(x_dst, y_dst, obj_cp)){
                tile.sprite_index = spr_valid_hex;
            } else {
                tile.sprite_index = spr_hex;
            }
        } else {
            var infantry = instance_place(x_dst, y_dst, obj_infantry);
            if (infantry != noone){
                if (!infantry.been_attacked)
                    tile.sprite_index = spr_valid_hex;
                else 
                    tile.sprite_index = spr_hex;
            } else {
                tile.sprite_index = spr_valid_hex;
            }
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
