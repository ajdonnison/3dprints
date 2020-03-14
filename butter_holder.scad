/*
 * Butter Holder
 */

T = 3;
H = 27;
W = 79;
L = 158;
difference() {
    cube(W, L, H);
    translate(T, T, T) {
      cube(W-(2*T),L-(2*T),H-T);
    }
}


