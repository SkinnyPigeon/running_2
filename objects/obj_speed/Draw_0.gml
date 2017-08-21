/// @description Speed
var cx = camera_get_view_x( view_camera[0]);
var cy = camera_get_view_y( view_camera[0]);

var cw = camera_get_view_width( view_camera[0]);

draw_set_color( c_white );
draw_set_halign( fa_center );
draw_text( cx + ( cw / 2 ), cy + 32, "Speed: " + string( obj_guy.spd ));
draw_text( cx + ( cw / 2 ), cy + 64, "Jump Speed: " + string( obj_guy.jumpSpeed ));
draw_text( cx + ( cw / 2 ), cy + 96, "Distance: " + string( obj_guy.distance ));