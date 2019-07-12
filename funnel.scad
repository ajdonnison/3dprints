/**
 * Drygoods measuring/dispensing funnel
 *
 * Provides an easy to fill measuring cup with a
 * dispensing funnel with a rotating slide.
 *
 * TODO:
 * - better slide design to improve stregth and ergonomy
 * - Pareterise slide design (currently hard coded for default values of funnel)
 */
$fa = 1;
$fs = 1;

Thickness = 2; // Wall Thickness
TopRadius = 40; // Radius of top cylinder
TopHeight = 50; // Height of top cylinder
BottomRadius = 13; // Radius of cylindrical bottom
BottomHeight = 30;  // Height of bottom cylinder
ShoulderHeight = 40; // Height of connecting cone
HandleWidth = 15; // Width of handle
HandleLength = 20; // Size both out and down
LipWidth = 1.5; // Width of lip below slide

// Large cylinder
difference(){
    cylinder(h=TopHeight,r=TopRadius+Thickness);
    cylinder(h=TopHeight,r=TopRadius);
}

// Handle
difference() {
    translate([TopRadius,-1*HandleWidth/2,0]) {
        cube([HandleLength+Thickness,HandleWidth,Thickness]);
    }
    cylinder(h=Thickness, r=TopRadius);
}
translate([TopRadius+HandleLength+Thickness,-1*HandleWidth/2,0]) {
    cube([Thickness,HandleWidth,HandleLength]);
}

// Conical connection
translate([0,0,TopHeight]){
    difference(){
        cylinder(h=ShoulderHeight,r2=BottomRadius+Thickness,r1=TopRadius+Thickness);
        cylinder(h=ShoulderHeight,r2=BottomRadius,r1=TopRadius);
    }
}

// Small cylinder
translate([0,0,TopHeight+ShoulderHeight]){
    difference(){
        cylinder(h=BottomHeight,r=BottomRadius+Thickness);
        cylinder(h=BottomHeight,r=BottomRadius);
        translate([0,-1*(BottomRadius+Thickness),0]) {
            // Cut out for slide
            cube([BottomRadius*2,BottomRadius*2,Thickness*1.1]);
        }
    }
    // stabilising ring below slide
    translate([0,0,Thickness*1.1]) {
        difference(){
            cylinder(h=LipWidth,r=BottomRadius);
            cylinder(h=LipWidth,r=BottomRadius-LipWidth/2);
        }
    }
}

// TODO - Figure this out based on the geometry of the device
// Pin for slide
translate([8,-15.2,84.5]){
    cylinder(r=Thickness*0.95,h=7);
}

// Slide
translate([TopRadius+Thickness,TopRadius+Thickness,0]){
    cylinder(r=BottomRadius, h=Thickness);
    translate([12, -3, 0]){
        difference(){
            cube([15,6,2]);
            translate([5,3,0]) {
            cylinder(r=Thickness, h=Thickness);
            }
        }
    }
}
