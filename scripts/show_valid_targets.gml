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
        
        with (tile){
            if (instance_exists(obj_howitzer)){
                show_valid_moves(8);
            } else {
                show_valid_moves(4);
            }
        }
    }
}
