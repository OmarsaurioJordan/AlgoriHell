///s_cambia_camara();

if arte {
    view_wview[0] = room_width * m_cam_size_p;
    view_hview[0] = room_height * m_cam_size_p;
    background_visible[0] = true;
    with o_control {
        if jugador != noone {
            if instance_exists(jugador) {
                view_xview[0] = jugador.x - view_wview[0] / 2;
                view_yview[0] = jugador.y - 90 - view_hview[0] / 2;
                view_xview[0] = clamp(view_xview[0], 0,
                    room_width - view_wview[0]);
                view_yview[0] = clamp(view_yview[0], 0,
                    room_height - view_hview[0]);
            }
        }
    }
    with o_boton {
        visible = tipo >= 24;
    }
    var a = audio_play_sound(a_musica, 100, true);
    audio_sound_gain(a, 0.5, 0);
}
else {
    view_xview[0] = 0;
    view_yview[0] = 0;
    view_wview[0] = room_width;
    view_hview[0] = room_height;
    background_visible[0] = false;
    with o_visible {
        visible = true;
    }
    with o_boton {
        visible = tipo <= 23;
    }
    audio_stop_sound(a_musica);
}
s_help();
s_see_puzzle(false);
o_control.ver_libro = false;

