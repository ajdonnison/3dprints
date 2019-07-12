/*
 * Simple set of adapters to convert a standard 90mm PVC downpipe
 * into a rodent bait station.
 */
$fa = 1;
$fs = 1;

difference() {
    cylinder(h=15,r=46);
    cylinder(h=15,r=44.5);
    translate([-46,-1,0]) {
      cube([92,2,15]);
    }
}
translate([-46,-46,0]) {
    cube([92,2,15]);
}

translate([-46,44,0]) {
    cube([92,2,15]);
}
 
difference() {
    cylinder(h=10,r=43.5);
    translate([0,0,2]) {
        cylinder(h=8,r=42);
    }
    translate([-43.5,-1,0]){
        cube([87,2,10]);
        }
 
}

translate([-40,-46,0]) {
    cube([2,23,15]);
}

translate([-40,23,0]) {
    cube([2,21,15]);
}

translate([38,-46,0]) {
    cube([2,23,15]);
}
translate([38,23,0]) {
    cube([2,21,15]);
}
