/*
 * Simple set of adapters to convert a standard 90mm PVC downpipe
 * into a rodent bait station.
 */
$fa = 1;
$fs = 1;

PipeID = 87;
PipeOD = 90;
Width = 2;
StandWidth = 20;
StandLength = 120;
PlateWidth = 12;

IR = PipeID/2;
OR = PipeOD/2;

// Stand circular part 
difference() {
    cylinder(h=StandWidth,r=OR+Width);
    cylinder(h=StandWidth,r=OR);
    translate([-1*StandLength/2,-1*Width/2,0]) {
      cube([StandLength,Width,StandWidth]);
    }
}

// Lower stand base
translate([-1*StandLength/2,-1*(OR+Width),0]) {
    cube([StandLength,Width,StandWidth]);
}

// Upper stand base
translate([-1*StandLength/2,OR,0]) {
    cube([StandLength,Width,StandWidth]);
}
 
// Inner plate
difference() {
    cylinder(h=PlateWidth,r=IR);
    translate([0,0,Width]) {
        cylinder(h=PlateWidth-Width,r=IR-Width);
    }
    translate([-1*IR,-1*Width/2,0]){
        cube([PipeID,Width,PlateWidth]);
        }
 
}

// Stand uprights
// Note the StandLength/5 is completely arbitrary, but
// works with the default parameters.  Should be geometrically
// determined based on the point of the circle it touches.
translate([-1*StandLength/3,-1*OR,0]) {
    cube([Width,StandLength/5-Width,StandWidth]);
}

translate([-1*StandLength/3,StandLength/5,0]) {
    cube([Width,StandLength/5-Width,StandWidth]);
}

translate([StandLength/3-Width,-1*OR,0]) {
    cube([Width,StandLength/5-Width,StandWidth]);
}
translate([StandLength/3-Width,StandLength/5,0]) {
    cube([Width,StandLength/5-Width,StandWidth]);
}
