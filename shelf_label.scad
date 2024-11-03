/*
 * A shelf label that clips onto a set of metal shelves.
 */

Width = 70;
Height = 29;
Depth = 5;
Thickness = 2;
Overhang = 1;

cube([Width, Height + 2 * Thickness, Thickness]);
translate([0, 0, Thickness]) {
  cube([Width, Thickness, Depth]);
}
translate([0, Height + Thickness, Thickness]) {
  cube([Width, Thickness, Depth]);
}
translate([0, 0, Thickness + Depth]) {
  cube([Width, Thickness + Overhang, Thickness]);
}
translate([0, Height + Thickness - Overhang, Thickness + Depth]) {
  cube([Width, Thickness + Overhang, Thickness]);
}
