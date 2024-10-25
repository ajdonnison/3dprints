/**
 * Bearing blank for checking prints while
 * waiting for bearings to be delivered.
 *
 * Emulates the typical skateboard bearing
 * External diameter 22mm
 * Internal diameter 8mm
 * Bearing width 7mm
 */
$fa = 1;
$fs = 1;
difference(){
    cylinder(r=11,h=7);
    cylinder(r=4,h=7);
}
