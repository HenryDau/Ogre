with (obj_ogre){
    var tile = instance_place(x,y,obj_hex)
    if (tile != noone){
        //tile.sprite_index = spr_valid_hex;
        return tile
    } else {
        show_debug_message("WTF!!! There HAS TO BE A TILE");
        return -1;
    }
}
