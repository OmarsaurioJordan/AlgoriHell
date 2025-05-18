///s_voz(x, y, culpa, esmonster);

if !arte { exit; }
if argument3 {
    if random(1) < 0.5 { exit; }
    var a = noone;
    switch argument2 {
        case m_culpa_gula: a = monster_gula; break;
        case m_culpa_codicia: a = monster_codicia; break;
        case m_culpa_orgullo: a = monster_orgullo; break;
        case m_culpa_envidia: a = monster_envidia; break;
        case m_culpa_pereza: a = monster_pereza; break;
        case m_culpa_ira: a = monster_ira; break;
        case m_culpa_lujuria: a = monster_lujuria; break;
        case m_culpa_ninguna: a = monster_rey; break;
    }
    if a != noone {
        if audio_is_playing(a) {
            exit;
        }
        audio_play_sound_at(a, argument0, argument1, -150,
            32, view_wview[0], 1, false, 50);
    }
}
else {
    var a = noone;
    switch argument2 {
        case m_culpa_gula: a = alma_gula; break;
        case m_culpa_codicia: a = alma_codicia; break;
        case m_culpa_orgullo: a = alma_orgullo; break;
        case m_culpa_envidia: a = alma_envidia; break;
        case m_culpa_pereza: a = alma_pereza; break;
        case m_culpa_ira: a = alma_ira; break;
        case m_culpa_lujuria: a = alma_lujuria; break;
        case m_culpa_ninguna: a = alma_rey; break;
    }
    if a != noone {
        a = audio_play_sound_at(a, argument0, argument1, -150,
            32, view_hview[0], 1, false, 10);
        audio_sound_gain(a, 0.7, 0);
    }
}

