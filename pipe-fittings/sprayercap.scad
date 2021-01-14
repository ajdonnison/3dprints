//
// Replacement cap for sprayer unit.
// Simple design, just to get a lid on it rather than fully
// duplicate the original shape.
//
// Note that this uses the internal width of the original cap
// then uses the pitch to determine the overall dimensions.
// As we subtract a full-diameter thread from an overlapping
// cylinder, we need to add the thread width to the cavity
// diameter to get the thread diamater.
//
include <threads.scad>

Wall = 2;
Internal = 114;
Pitch = 5.5;
Height = 20;

ThreadWidth = Pitch * 0.866;

translate([0,0,Wall+Height]){
  rotate([0,180,0]){
    difference () {
      cylinder(d=Internal+ThreadWidth*2+Wall, h=Wall+Height);
      metric_thread(diameter=Internal+ThreadWidth*2, pitch=Pitch, length=Height, internal=true);
    }
  }
}
