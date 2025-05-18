///s_cam_zoom(mouse_x, mouse_y);
// arg0: posicion x mouse
// arg1: posicion y mouse
// hace zoom con el mouse

var res = false;
// limites del zoom
var minw = room_width * m_cam_size_p;
var maxw = room_width;
var minh = room_height * m_cam_size_p;
var maxh = room_height;
var velcambio = 0.1;

// hacer el zoom
var rezi = 0;
if mouse_wheel_down() {
    rezi = 1 + velcambio;
}
if mouse_wheel_up() {
    rezi = 1 - velcambio;
}
if rezi != 0 {
    res = true;
    var mx = argument0;
    var my = argument1;
    var cx = (mx - view_xview[0]) / view_wview[0];
    var cy = (my - view_yview[0]) / view_hview[0];
    view_wview[0] = clamp(view_wview[0] * rezi, minw, maxw);
    view_hview[0] = clamp(view_hview[0] * rezi, minh, maxh);
    cx = mx - cx * view_wview[0];
    cy = my - cy * view_hview[0];
    view_xview[0] = clamp(cx, 0, room_width - view_wview[0]);
    view_yview[0] = clamp(cy, 0, room_height - view_hview[0]);
}
return res;

