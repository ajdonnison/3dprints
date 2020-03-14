/*
 Button holder for stud-style buttons.
 Button has a stud with 5.5mm diameter ball end with
 a 5.0mm collar about 3.3mm from the top of the ball.
 Total width is 18.5mm
*/

$fa = 1;
$fs = 1;

BackPlateWidth = 12;
CollarWidth = 4.25;
CollarDepth = 2.5;
StudWidth = 5;
StudDepth = 4;
Thickness = 1.5;
Fudge = 9;


/* Create the bottom plate */
difference() {
  cylinder(h=Thickness,r=BackPlateWidth/2);
  translate([-1*(BackPlateWidth/2-Thickness),0,0]) {
    cylinder(h=Thickness,r=Thickness/2);
  }
  translate([(BackPlateWidth/2-Thickness),0,0]) {
    cylinder(h=Thickness,r=Thickness/2);
  }
  translate([0,BackPlateWidth/2-Thickness,0]) {
    cylinder(h=Thickness,r=Thickness/2);
  }
  translate([0,-1*(BackPlateWidth/2-Thickness),0]) {
    cylinder(h=Thickness,r=Thickness/2);
  }
}

SW = StudWidth*(100+Fudge)/100;
CW = CollarWidth*(100+Fudge)/100;
WW = (StudWidth+Thickness)*(100+Fudge)/100;

/* Add the stud holder */
translate([0,0,Thickness]) {
  difference() {
    cylinder(h=StudDepth,d=WW);
    cylinder(h=CollarDepth,d=SW);
    translate([0,0,CollarDepth]) {
      cylinder(h=StudDepth-CollarDepth,d2=SW,d1=CW);
      /*
      translate([-0.5,-1*(SW+Thickness*2)/2,0]) {
        cube([1,SW+Thickness*2,StudDepth-CollarDepth]);
      }
      translate([-1*(SW+Thickness*2)/2,-0.5,0]) {
        cube([SW+Thickness*2,1,StudDepth-CollarDepth]);
      }
      */
    }
  }
}
