Width = 60;
Length = 100;
Wall = 2;
Height = 15;

// make a curved bottom part
intersection() {
    cube([Width, Length, Height]);
    translate([Width/2,Length,Width/2+Wall]) {
        rotate([90,0,0]) {
            difference() {
                cylinder(r=Width/2+Wall, h=Length);
                cylinder(r=Width/2, h=Length);
            }
        }
    }
}

// Now put on end plates
translate([0,-1*Wall,0]) {
    difference() {
        cube([Width,Wall,Height]);
        translate([Width/4,0,0]) {
          cube([Width/2,Wall,Wall*2]);
        }
    }
}
translate([0,Length,0]) {
    difference() {
        cube([Width,Wall,Height]);
        translate([Width/4,0,0]) {
          cube([Width/2,Wall,Wall*2]);
        }
    }
}
