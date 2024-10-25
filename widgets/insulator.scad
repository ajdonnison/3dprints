/*
 * Small insulator for electric fences
 */
MajorDiam = 25;
MinDiam = 18;
InternalDiam = 6;
Height = 20;
Flat = 5;
Step = (Height - Flat * 2) / 3;


$fa =  1;
$fs = 1;

difference() {
  union() {
    cylinder(r=MajorDiam/2, h=Flat);
    translate([0, 0, Flat]) {
      cylinder(r2=MinDiam/2, r1=MajorDiam/2, h=Step);
    }
    translate([0, 0, Flat + Step]) {
      cylinder(r=MinDiam/2, h = Step);   
    }
    translate([0, 0, Flat + (Step* 2) ]) {
      cylinder(r1=MinDiam/2, r2=MajorDiam/2, h=Step);
    }
    
    translate([0, 0, Flat + Step*3]) {
      cylinder(r=MajorDiam/2, h=Flat);
    }
  }
  cylinder(r=InternalDiam/2, h=Height);
}
