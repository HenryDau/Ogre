///Find the tiles adjacent to the current one
var tile_dist = 32;
var tile_height = floor(tile_dist * sin(pi/6));
var tile_width = floor(tile_dist * cos(pi/6)) - 3;


north = hex_and_valid_path(x, y - tile_dist);
south = hex_and_valid_path(x, y + tile_dist);
northeast = hex_and_valid_path(x + tile_width, y - tile_height);
northwest = hex_and_valid_path(x - tile_width, y - tile_height);
southeast = hex_and_valid_path(x + tile_width, y + tile_height);
southwest = hex_and_valid_path(x - tile_width, y + tile_height);


