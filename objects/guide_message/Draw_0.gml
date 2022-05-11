/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xx_ = camera_get_view_width(view_camera[0])
//var yy_ = camera_get_view_height(view_camera[0])
var camera_xscale = obj_camera.v_x/1280

w_alpha += (-0.01 - w_alpha)*0.1

draw_set_alpha(0.6*image_alpha)
draw_set_color(c_black)
draw_rectangle(xx+xx_*0.5-camera_xscale*200,yy,xx+xx_*0.5+camera_xscale*200,yy+camera_xscale*150,0)

draw_set_alpha(w_alpha)
draw_set_color(c_white)
draw_rectangle(xx+xx_*0.5-camera_xscale*200,yy,xx+xx_*0.5+camera_xscale*200,yy+camera_xscale*150,0)

draw_set_alpha(image_alpha)
draw_text_kl_scale(xx+xx_*0.5,yy+camera_xscale*32,title,16,99999,image_alpha,$FF1E9DFF,0,0,font0,1/2*camera_xscale,1/2*camera_xscale,image_angle)
draw_text_kl_scale(xx+xx_*0.5,yy+camera_xscale*64,text,16,99999,image_alpha,c_white,0,0,font0,1/3*camera_xscale,1/3*camera_xscale,image_angle)

if obj_camera.last_say > 0
{
draw_text_kl_scale(xx+xx_*0.5+camera_xscale*180,yy+camera_xscale*120,"["+string(floor((1200-obj_camera.last_say)/60))+"]",16,99999,image_alpha,$FF6D19FF,0,1,font0,1/3*camera_xscale,1/3*camera_xscale,image_angle)
}