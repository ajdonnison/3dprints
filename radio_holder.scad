/*
 Hanger for the CFA Tait portable.  Designed to fit in the
 vent of the car/ute.

 Fill: 50% Hex
*/
VentOpening = 30; /* How far apart the clip into the vent needs to be */
VentWidth = 17; /* Max width of internal part of vent */
VentDepth = 19; /* How far we can hang over the vent */
VentHeight = 7; /* How high the spacing between louvres is */
RadioWidth = 30; /* Width of clip on the radio is */
RadioDepth = 17; /* Depth of the clip */
RadioLength = 50; /* How long we want the clip to cover */
Width = 3; /* The width of support structures */
VentSpacing = VentOpening - Width;


/* We need to create a baseplate which is where the clip comes in */
translate([-1*(RadioWidth/2+Width),-1*(RadioLength/2),0]) {
  difference() {
    cube([RadioWidth+2*Width, RadioLength, Width]);
    translate([VentHeight, VentHeight,0]) {
      cube([RadioWidth+2*Width-2*VentHeight, RadioLength-2*VentHeight, Width]);
    }
  }
}

/* Create the clip holder by having an offset wall */
translate([-1*(RadioWidth/2+Width),-1*(VentSpacing/2+VentHeight/2), Width]) {
  cube([Width, VentHeight,RadioDepth]);
}
translate([-1*(RadioWidth/2+Width),VentSpacing/2-VentHeight/2, Width]) {
  cube([Width, VentHeight, RadioDepth]);
}
translate([RadioWidth/2,-1*(VentSpacing/2+VentHeight/2), Width]) {
  cube([Width, VentHeight,RadioDepth]);
}
translate([RadioWidth/2,VentSpacing/2-VentHeight/2, Width]) {
  cube([Width, VentHeight, RadioDepth]);
}
/* Now we need to create the back plates */
translate([-1*(RadioWidth/2+Width),-1*(VentSpacing/2+VentHeight/2), Width+RadioDepth]) {
    difference() {
        cube([RadioWidth+2*Width, VentSpacing+VentHeight,Width]);
        translate([VentHeight,VentHeight,0]){
          cube([RadioWidth+2*Width-2*VentHeight,VentSpacing-VentHeight,Width]);
        }
    }
}

/* The standoffs */
translate([-1*VentWidth/2,-1*(VentSpacing/2+Width/2),Width*2+RadioDepth]) {
  cube([VentWidth, Width, VentDepth]);
}
translate([-1*VentWidth/2,VentSpacing/2-Width/2,Width*2+RadioDepth]) {
  cube([VentWidth, Width, VentDepth]);
}

/* The clippy bits on the standoffs */
translate([-1*VentWidth/2,-1*(VentSpacing/2-Width/2+VentHeight),Width*2+RadioDepth+VentDepth]) {
  cube([VentWidth, VentHeight, Width]);
}
translate([-1*VentWidth/2,VentSpacing/2-Width/2,Width*2+RadioDepth+VentDepth]) {
  cube([VentWidth, VentHeight, Width]);
}
