var x_dst = argument[0];
var y_dst = argument[1];

var tile = instance_place(x_dst, y_dst, obj_hex);
if (tile != noone){
    if (!collision_line(x,y, x_dst, y_dst, obj_blockage, false, false)){
        return tile;
    }
}
return noone;
