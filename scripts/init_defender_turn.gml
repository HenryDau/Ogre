with(obj_hex)
    sprite_index = spr_hex

global.target = noone;

with(obj_defender){
    selected = false;
    current_movement = movement;
    has_shot = false;
    if (disabled){
        if (!disabled_this_turn){
            disabled = false;
        } else {
            disabled_this_turn = false;
        }
    }
}
