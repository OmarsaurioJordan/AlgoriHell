///s_cam_sigue(id_objetivo);

var xx = view_xview[0] + view_wview[0] / 2;
var yy = view_yview[0] + view_hview[0] / 2;
var alt = 90;
if !arte {
    alt = 0;
}
var p = point_distance(xx, yy, argument0.x, argument0.y - alt);
if p > 16 {
    var d = point_direction(xx, yy, argument0.x, argument0.y - alt);
    var v = min(p, 500) * dlt * 2;
    view_xview[0] += lengthdir_x(v, d);
    view_yview[0] += lengthdir_y(v, d);
    view_xview[0] = clamp(view_xview[0], 0, room_width - view_wview[0]);
    view_yview[0] = clamp(view_yview[0], 0, room_height - view_hview[0]);
}

