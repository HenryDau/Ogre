var x_start = 400;
var y_start = 300;
var offset = 5;
var text_offset = 32;

with (obj_ogre){
    var i;
    for (i = 0; i < missile_count; i++)
        instance_create(x_start + text_offset * 3 + i * 32, y_start, obj_missile);
    for (i = 0; i < main_battery_count; i++)
        instance_create(x_start + text_offset * 5 + i * 32, y_start + 32, obj_main_battery);
    for (i = 0; i < secondary_battery_count; i++)
        instance_create(x_start + text_offset * 6 + i * 32, y_start + 32 * 2, obj_secondary_battery);
    for (i = 0; i < antipersonnel_count; i++)
        instance_create(x_start + text_offset * 5 + i * 32, y_start + 32 * 3, obj_antipersonnel);
    for (i = 0; i < tread_count; i++)
        instance_create(x_start + text_offset * 3 + (i % 15) * 32, y_start + 32 * (4 + floor(i / 15)), obj_tread);
    
}
