$fa = 0.1;
$fs = 1;
cylinder(r=13, h=2);
translate([12, -3, 0]){
    difference(){
        cube([15,6,2]);
        translate([5,3,0]) {
        cylinder(r=2, h=2);
        }
    }
}
