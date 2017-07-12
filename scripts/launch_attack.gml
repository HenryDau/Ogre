var chance = get_odds();

if (global.turn == "AA"){

    //Antipersonnel selected (Infantry can not be attacked by antipersonnel more than once per turn)
    var antipersonnel_selected = false;

    // Get the attack and disable weapons
    with (obj_display){
        if (selected){
            audio_play_sound(sound_effect, 1, false);

            outline.visible = false;
            has_shot = true;
            selected = false;
            if (sprite_index == spr_missile && global.selected_display != id)
                instance_destroy();
            if (sprite_index == spr_antipersonnel && global.selected_display != id)
                antipersonnel_selected = true;
        }
    }
    
    show_debug_message("Attcked with antipersonnel: " + string(antipersonnel_selected));
    
    if (global.target.cost_type == "infantry" && antipersonnel_selected)
        global.target.been_attacked = true;

    // Set the range to null
    global.combined_attack_range = 0;
 
} else if (global.turn == "DA"){

    global.target.outline.visible = false;
    global.target.selected = false;

    with (obj_defender){
        if (selected){
            if (global.sound_enabled)
                audio_play_sound( sound_effect, 0, false);
            has_shot = true;
            selected = false;
            var tile = get_tile_at(x,y);
            tile.sprite_index = spr_hex;
        }
    }
} else if (global.turn == "AM"){
    
    // Set the unit being rammed
    var tile = get_tile_at_ogre()
    global.target = instance_place(tile.x, tile.y, obj_defender)
    if (global.target == noone)
        show_debug_message("Launch Attack 38: Error, no target selected");

} else {
    show_debug_message("Why is this availble when no one can attack or ram");
}

// The dice shall judge the victor!
var dice = instance_create(784 - 70, 160, obj_dice);
with (dice){
    disable = chance[0];
    kill = chance[1];
    combined_attack = chance[3];
}



