//var obj = argument[0];

var obstructed_y = 480;
var crater_y = 224;
//var bottom_y = 672;
var bottom_y = 50;

if (global.turn == "DS"){
    with(obj_hex){
        var attack = get_attack_value();
        //show_debug_message(string(attack));
        if (y <= obstructed_y && (obj_control.f_units - attack) >= 0)
            sprite_index = spr_valid_hex
        else
            sprite_index = spr_hex
            
        if (y < crater_y)
            sprite_index = spr_valid_hex
        
    }

} else if (global.turn == "AS"){
    with(obj_hex){
        if (y >= bottom_y)
            sprite_index = spr_valid_hex
    }
}


