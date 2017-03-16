if (global.unit_selected == "Heavy Tank")
    return obj_heavy_tank
if (global.unit_selected == "Missile Tank")
    return obj_missile_tank
if (global.unit_selected == "GEV")
    return obj_gev
if (global.unit_selected == "Howitzer")
    return obj_howitzer
if (global.unit_selected == "Infantry 1")
    return obj_infantry
if (global.unit_selected == "Infantry 2")
    return obj_infantry
if (global.unit_selected == "Infantry 3")
    return obj_infantry
if (global.unit_selected == "Command Post")
    return obj_cp
if (global.unit_selected == "Ogre")
    return obj_ogre
return noone
    
//show_debug_message("How did this mess up???:  " + string(global.unit_selected))
