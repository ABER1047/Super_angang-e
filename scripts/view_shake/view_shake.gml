///@param camera_zoom
///@param shake_view
///@param view_angle_shake

var zoom_scale = argument0
var shake_scale = argument1
var angle_shake_ = argument2/10
global.shake_time = 0
if shake_scale*7 < global.t_shake_x
{
global.t_shake_x = shake_scale*7;
}
else
{
global.t_shake_x += shake_scale*3;
}

if shake_scale*0.7 < global.t_shake_y
{
global.t_shake_y = shake_scale*0.7;
}
else
{
global.t_shake_y += shake_scale*0.3;
}
global.shake_x = choose(-1,1)
global.shake_y = choose(-1,1)


global.view_angle_ = choose(-1,1)*angle_shake_

if instance_number(obj_camera) > 0
{
obj_camera.v_x -= zoom_scale*1.28
obj_camera.v_y -= zoom_scale*0.72
}
