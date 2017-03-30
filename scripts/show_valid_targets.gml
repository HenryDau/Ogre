obj_hex.cost = 0;
obj_hex.sprite_index = spr_hex;

if (global.turn == "AA"){
    if (get_selected_unit() != obj_tread){
        var tile = get_tile_at_ogre();
        with (tile){
            //show_debug_message(global.unit_selected + " " + string(get_selected_unit().range));
            var unit = get_selected_unit();
            show_valid_moves(global.combined_attack_range);
            //show_valid_moves(unit.range);
        }
    }
} else if (global.turn == "DA"){
    with(obj_defender){
        //var tile = get_tile_at(x,y);
        /*if (distance_to_object(obj_ogre) < (32 * range - 16) && !has_shot && !disabled){
            var tile = get_tile_at(x,y);
            tile.sprite_index = spr_valid_hex;
        }*/
        var tile = get_tile_at_ogre();
        with (tile){
            //show_debug_message(global.unit_selected + " " + string(get_selected_unit().range));
            show_valid_moves(8);
        }
    }
}
