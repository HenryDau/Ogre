var tile_dist = 32;
var tile_height = floor(tile_dist * sin(pi/6));
var tile_width = floor(tile_dist * cos(pi/6)) - 3;

draw_circle(x, (y - tile_dist), 2, 1);
draw_circle(x, (y + tile_dist), 2, 1);
draw_circle(x + tile_width, y - tile_height, 2, 1);
draw_circle(x - tile_width, y - tile_height, 2, 1);
draw_circle(x + tile_width, y + tile_height, 2, 1);
draw_circle(x - tile_width, y + tile_height, 2, 1);
