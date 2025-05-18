///s_fenotipo(ind_gen, adn_array);
// ret: valor a usar

switch argument0 {
    case m_gen_social:
        return lerp(-1, 1, argument1[argument0]);
    case m_gen_errar_reloj:
        return lerp(1, 4, argument1[argument0]);
    case m_gen_errar_mover:
        return random(1) < argument1[argument0];
    case m_gen_errar_quieto:
        return random(1) < argument1[argument0];
}
return 0;

