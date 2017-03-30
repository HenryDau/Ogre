var odds = -1;
var str_odds = "null";
var combined_attack = 0;
var chances = 0;            // Return value


if (global.turn == "AA"){

    if (global.combined_attack_range != 0){
    
        with (obj_display){
            if (selected){
                combined_attack += attack;
            }
        }
    }
} else if (global.turn == "DA"){

    with(obj_defender){
        if (selected)
            combined_attack += attack;
    }
}

// Display odds
if (combined_attack != 0 && global.target != noone){
    if (global.target.sprite_index != spr_tread){
        if (combined_attack >= global.target.defense){
            odds = floor(combined_attack / global.target.defense);
            if (odds > 5)
                odds = 5;
            str_odds = string(odds) + ":1"
        } else {
            if (combined_attack / global.target.defense < .5){
                odds = 0;
                str_odds = "No Chance"
            } else {
                odds = 0.5;
                str_odds = "1:2";
            }
        }
    } else {
        odds = 1;
        str_odds = "1:1"
    }
}

if (odds == -1){
    chances[0] = -1;
    chances[1] = -1;
} else if (odds == 0){
    chances[0] = 0;
    chances[1] = 0;
} else if (odds == 0.5){
    chances[0] = 1;
    chances[1] = 1;
} else if (odds == 1){
    chances[0] = 2;
    chances[1] = 2;
} else if (odds == 2){
    chances[0] = 2;
    chances[1] = 3;
} else if (odds == 3){
    chances[0] = 2;
    chances[1] = 4;
} else if (odds == 4){
    chances[0] = 1;
    chances[1] = 5;
} else if (odds == 5){
    chances[0] = 0;
    chances[1] = 6;
} else {
    show_debug_message("Odds not recognized: " + string(odds));
}
chances[2] = str_odds;
chances[3] = combined_attack;

return chances;
