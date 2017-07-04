var start_x = 608;
var start_y = 16;
var space = 8;
var width = 64;

var am = instance_create(start_x, start_y, obj_turn_display);
am.sprite_index = spr_am_button;

var aa = instance_create(start_x + (width + space) * 1, start_y, obj_turn_display);
aa.sprite_index = spr_aa_button;

var dm = instance_create(start_x + (width + space) * 2, start_y, obj_turn_display);
dm.sprite_index = spr_dm_button;

var da = instance_create(start_x + (width + space) * 3, start_y, obj_turn_display);
da.sprite_index = spr_da_button;

var dm2 = instance_create(start_x + (width + space) * 4, start_y, obj_turn_display);
dm2.sprite_index = spr_dm2_button;
