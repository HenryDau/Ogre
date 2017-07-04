obj_hex.cost = 0;
obj_hex.sprite_index = spr_hex;

if (global.turn == "AA"){
    if (get_selected_unit() != obj_tread){
        var tile = get_tile_at_ogre();
        with (tile){
            //show_debug_message(global.unit_selected + " " + string(get_selected_unit().range));
            var unit = get_selected_unit();
            show_valid_moves(global.combined_attack_range);

        }
    }
} else if (global.turn == "DA"){
    with(obj_defender){
        var tile = get_tile_at_ogre();
        
        var is_howitzer = false;
        
        with (obj_defender){
            if (sprite_index == spr_howitzer){
                is_howitzer = true;
            }
        } 
        
        with (tile){
            if (is_howitzer){
                show_valid_moves(8);
            } else {
                show_valid_moves(4);
            }
        }
    }
}
