
var x_start = 400;
var y_start = 300;
var offset = 5;
var text_offset = 32;

draw_text_color(x_start, y_start - offset - 32, "Ogre Deatils", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset, "Missiles: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32, "Main Batteries: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 2, "Secondary Batteries: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 3, "Antipersonnel: ", c_black, c_black, c_black, c_black, 1);
draw_text_color(x_start, y_start - offset + 32 * 4, "Treads: ", c_black, c_black, c_black, c_black, 1);

with (obj_ogre)
    draw_text_color(x_start, y_start - offset + 32 * 7, "Movement: " + string(current_movement), c_black, c_black, c_black, c_black, 1);

