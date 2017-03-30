x_start = argument[0];
y_start = argument[1];

var tile = instance_place(x_start,y_start,obj_hex)
if (tile != noone){
    //tile.sprite_index = spr_valid_hex;
    return tile
} else {
    show_debug_message("WTF!!! There HAS TO BE A TILE");
    return -1;
}
