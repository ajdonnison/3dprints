$fa = 1;
$fs = 1;
Diameter = 13;

Height = 2.2 * Diameter;
Top = 1.5 * Diameter;
Bottom = 2.5 * Diameter;
Shoulder = 2 * Diameter;
Base = 0.75 * Diameter;

difference() {
  union() {
    cylinder(h=Diameter, d1=Bottom, d2=(Bottom+Shoulder)/2);
    translate([0,0,Diameter]) {
      cylinder(h=Height-Diameter, d1=Shoulder, d2=Top);
    }
  }
  translate([0,0,Base]) {
    cylinder(h=Height-Base, d=Diameter);
  }
}
