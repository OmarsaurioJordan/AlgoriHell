///s_limites(id);

with argument0 {
    var vx = x;
    var vy = y;
    x = clamp(x, 64, room_width - 64);
    y = clamp(y, 192, room_height - 32);
    if vx != x or vy != y {
        direction = random(360);
    }
    depth = -y;
}

