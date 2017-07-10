var x_dst = argument[0];
var y_dst = argument[1];

var ignore_blockages = false;
if (get_selected_unit() == obj_ogre || get_selected_unit() == obj_infantry 
    || global.turn == "AA" || global.turn == "DA")
    ignore_blockages = true;
    
//show_debug_message("Start x: " + string(x_dst) + " Start y: " + string(y_dst));

var tile = instance_place(x_dst, y_dst, obj_hex);
if (tile != noone){
    if (!ignore_blockages){
        if (!collision_line(x,y, x_dst, y_dst, obj_blockage, false, false) ){
            //show_debug_message("Tile Found");
            return check_occupied(tile, x_dst, y_dst);
        }
    } else {
        return check_occupied(tile, x_dst, y_dst);
    }
} else {
    if (global.turn == "AA" || global.turn == "DA"){
        var crater = instance_place(x_dst, y_dst, obj_crater);
        if (crater != noone)
            return crater
    }
}
return noone;
