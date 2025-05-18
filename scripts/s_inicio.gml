///s_inicio();

with o_control {
    reloj_almas = random(1);
    for (var i = m_pid_long - 1; i >= 0; i--) {
        error[i] = 0;
    }
    despierto = true;
    pid[0] = 0.2;
    pid[1] = 0.1;
    pid[2] = 0.05;
    for (var i = m_pid_historial - 1; i >= 0; i--) {
        historial[i] = 0;
    }
}
s_crea_arbol();
with o_flor {
    instance_destroy();
}
with o_monster {
    x = random(room_width);
    y = random(room_height);
}
s_crea_almas(o_control.referencia);

