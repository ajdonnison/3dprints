/*
 * Simple gasket for glass jars.
 *
 */

ID = 76;
OD = 90;
Width = 4;

$fa = 1;
$fs = 1;

difference(){
    cylinder(r=OD/2, h=Width);
    cylinder(r=ID/2, h=Width);
}
