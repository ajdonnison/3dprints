/*
 * A little collar that can be printed in multiple colours to identify squeeze bottles.
 */
Diam = 45;
Height = 5;

$fa = 1;
$fs = 1;

difference() {
  cylinder(d=Diam+1, h=Height);
  cylinder(d=Diam, h=Height);
}
