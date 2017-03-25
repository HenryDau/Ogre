var x_start = argument[0]
var y_start = argument[1]
var offset = 5;
var text_offset = 32;

draw_text_color(x_start, y_start - offset, "Missiles: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32, "Main Batteries: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 2, "Secondary Batteries: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 3, "Antipersonnel: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 4, "Treads: ", c_black, c_black, c_black, c_black, 1);

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
    
    draw_text_color(x_start, y_start - offset + 32 * 7, "Movement: " + string(movement), c_black, c_black, c_black, c_black, 1);

}
