//
//  adapter between 1 1/2" BSP thread and 50mm straight fitting
//
//  uses metric thread library by Dan Kirshner 
//  note: be patient, building STL takes a while
//

include <threads.scad>

sdia = 63.0;
// sdia = 50.0;
hgt = 25.0;
chamfer = 0.8;
// extra tolerance for threads, also compensate for ABS shrink
tol = 0.35; 

// 1 1/2" BSP aka. G48 ISO thread
bsptpi = 11;
// bspmajor = 1.8820; // inches
bspmajor = 2.3470; // inches

d = 1*0.1;

difference () {
    union () {
        cylinder(d=sdia, h=hgt-chamfer, $fn=180);
        translate([0,0,hgt-chamfer]) {
            cylinder(d1=sdia, d2=sdia-2*chamfer, h=chamfer, $fn=180);
        }
    }
    translate([0,0,-d]) {
        english_thread (diameter=bspmajor+2*tol/25.4, threads_per_inch=bsptpi, length=d+hgt/25.4+d, internal=true);
        cylinder(d1=bspmajor*25.4+2*tol, d2=bspmajor*25.4+2*tol-bspmajor*25.4, h=bspmajor*25.4/2, $fn=180); // thread start cone
    }
}
cylinder(d=sdia, h=5);
