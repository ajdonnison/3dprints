/*
 Simple cover to disable a USB port that has been damaged.
 */

XDim = 4.5;
YDim = 12;
ZDim = 8;
Width = 1.2;

cube([XDim, YDim, Width]);
translate([0,0,Width]) {
  cube([Width, YDim, ZDim]);
}
translate([XDim - Width, 0, Width]) {
  cube([ Width, YDim, ZDim]);
}
