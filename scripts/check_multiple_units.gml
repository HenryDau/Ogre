
with (obj_multiple_units)
    instance_destroy();

var ogre_tile = get_tile_at_ogre();
var defender = instance_place(ogre_tile.x,ogre_tile.y,obj_defender);
var ogre = instance_place(x,y,obj_ogre);

if (ogre != noone && defender != noone){
    
    // Multiple Units found
    instance_create(x,y,obj_multiple_units);
} 
