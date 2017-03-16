with(obj_hex){
    if (global.turn == "DS"){
        if (has_unit)
            sprite_index = spr_valid_hex
        else    
            sprite_index = spr_hex
    } else if (global.turn == "AS"){
        with(obj_ogre){
            var tile = instance_place(x,y,obj_hex);
            tile.sprite_index = spr_valid_hex
        }
    }
}
