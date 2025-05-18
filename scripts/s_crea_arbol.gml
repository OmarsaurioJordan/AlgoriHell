///s_crea_arbol();

with o_arbol {
    instance_destroy();
}
with o_arbusto {
    instance_destroy();
}
with o_oro {
    instance_destroy();
}
o_control.reloj_oro = 0;
repeat irandom(m_arbol_max) {
    instance_create(
        random(room_width),
        random(room_height),
        o_arbol);
}
repeat irandom(m_arbol_max * 2) {
    instance_create(
        random(room_width),
        random(room_height),
        o_arbusto);
}

