/*
 * Small Spacer
 */
MajorDiam = 25;
InternalDiam = 6;
Height = 5;


$fa =  1;
$fs = 1;

difference() {
  cylinder(r=MajorDiam/2, h=Height);
  union() {
    translate([-InternalDiam/4, 0, 0]) {
      cube([InternalDiam/2, MajorDiam, Height]);
    }
    cylinder(r=InternalDiam/2, h=Height);
  }
}
