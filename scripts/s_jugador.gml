///s_jugador(id, influencia);

with argument0 {
    if id == jugador and manual {
        var d;
        if keyboard_check(vk_up) or keyboard_check(ord('W')) {
            if keyboard_check(vk_right) or keyboard_check(ord('D')) {
                d = 45;
            }
            else if keyboard_check(vk_left) or keyboard_check(ord('A')) {
                d = 135;
            }
            else {
                d = 90;
            }
        }
        else if keyboard_check(vk_down) or keyboard_check(ord('S')) {
            if keyboard_check(vk_right) or keyboard_check(ord('D')) {
                d = 315;
            }
            else if keyboard_check(vk_left) or keyboard_check(ord('A')) {
                d = 225;
            }
            else {
                d = 270;
            }
        }
        else {
            if keyboard_check(vk_right) or keyboard_check(ord('D')) {
                d = 0;
            }
            else if keyboard_check(vk_left) or keyboard_check(ord('A')) {
                d = 180;
            }
            else {
                d = -1;
            }
        }
        if d != -1 {
            o_control.reloj_manual = 1;
            var v = m_velocidad * dlt * argument1;
            x += lengthdir_x(v, d);
            y += lengthdir_y(v, d);
        }
        return true;
    }
}
return false;

