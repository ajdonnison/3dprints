/*
 * A shelf label that clips onto a set of metal shelves.
 */

Width = 70;
Height = 27;
Depth = 5;
Thickness = 2.5;
Overhang = 1.2;

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
