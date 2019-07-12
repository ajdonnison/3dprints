/* Builds a reel hub that handles most common reel sizes.
   For FlashForge Inventor, the reel stand needs to be replaced.
   See reel-holder.scad for details.

   Uses commonly available skate board bearings.
*/

$fa=1;
$fs=1;

BearingDiameter = 22;
BearingID = 8;
BearingHeight = 7;
MinReelDiameter=48;
MaxReelDiameter=55;
MaxIntrusion=10; // Maximum depth to penetrate into the reel hub
WallThickness = 3;

// Inner bearing holder ring
difference(){
    cylinder(r=BearingDiameter/2+WallThickness, h=BearingHeight);
    cylinder(r=BearingDiameter/2, h=BearingHeight);
}

// Outer reel cone and top plate
difference(){
    cylinder(r1=MaxReelDiameter/2, r2=MinReelDiameter/2, h=MaxIntrusion);
    cylinder(r1=MaxReelDiameter/2-WallThickness, r2=MinReelDiameter/2-WallThickness, h=BearingHeight);
    cylinder(r=max(BearingDiameter/4, BearingID/2), h=MaxIntrusion);
}

// Bracing between the two
intersection(){
    for (i = [1:12]){
        rotate(a=360*i/12,v=[0,0,1]){
            difference(){
                cube([WallThickness, MaxReelDiameter/2, BearingHeight]);
                cube([WallThickness, BearingDiameter/2, BearingHeight]);
            }
        }
    }
    difference(){
        cylinder(r1=MaxReelDiameter/2-WallThickness, r2=MinReelDiameter/2-WallThickness, h=MaxIntrusion);
        cylinder(r=BearingDiameter/2+WallThickness, h=MaxIntrusion);
    }
}
