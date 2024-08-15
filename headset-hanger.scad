/* Simple clip for hanging headsets on the screen
 */

Depth = 17.5;
Width = 23;
Hang = 22;
Thick = 2;
Length = 25;

cube([Width, Thick, Length ]);
translate([0, -1 * Depth, 0]) {
    cube([Thick, Depth, Length]);
}
translate([Width, -1 * Depth, 0]) {
  cube([Thick, Depth + Thick, Length]);
}
translate([-1 * Hang, -1 * Depth, 0]) {
  cube([Thick, Depth, Length]);
  cube([Width, Thick, Length]);
}
