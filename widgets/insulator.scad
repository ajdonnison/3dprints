/*
 * Small insulator for electric fences
 */
MajorDiam = 20;
MinDiam = 15;
InternalDiam = 5;
Height = 15;
Step = 5;


$fa =  1;
$fs = 1;

difference() {
  union() {
    cylinder(r=MajorDiam/2, h=Step);
    translate([0, 0, Step]) {
      cylinder(r=MinDiam/2, h=Step);
    }
    translate([0, 0, Step*2]) {
      cylinder(r=MajorDiam/2, h=Step);
    }
  }
  cylinder(r=InternalDiam/2, h=Height);
}
