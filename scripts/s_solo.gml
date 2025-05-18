///s_solo(culpa);
// ret: true si la culpa es la unica activa

var tot = 0;
with o_monster {
    if despierto {
        tot++;
    }
    else if culpa == argument0 {
        return false; 
    }
}
return  tot == 1;

