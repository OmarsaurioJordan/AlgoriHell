///s_triunfo();

// poner informaciones en su lugar
with o_hoja {
    if tipo == m_hoj_libro {
        datos = verificar;
    }
}

// ejecutar cosas al ganar
o_control.triunfo = true;
audio_play_sound(a_triunfo, 100, false);
ini_open("configuracion.ini");
ini_write_string("config", "triunfo", "1");
ini_close();
with o_hoja {
    if tipo == m_hoj_pool {
        instance_destroy();
    }
}

