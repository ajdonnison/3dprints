/* Replacement hub for shopping trolley.
*/

$fa = 2;
$fs = 2;

Fudge              = 2;
AxleDiameter       = 9;
AxleDepth          = 32;
AxleWidth          = 20;
OuterDiameter      = 131;
LipHeight          = 4;
LipWidth           = 3;
Solidity           = 5;
Depth              = 27;

RadiusFactor       = (1 + Fudge / 100) / 2;

AxleRadius = AxleDiameter * RadiusFactor;
AxleOuterRadius = AxleWidth * RadiusFactor;

FullRadius = OuterDiameter * RadiusFactor;
HubRadius = FullRadius - LipHeight;
HubInnerRadius = HubRadius - Solidity;

// Inner axle hub
difference(){
  cylinder(r=AxleOuterRadius, h=AxleDepth);
  cylinder(r=AxleRadius, h=AxleDepth);
}

// Bottom Ring
difference(){
  cylinder(r=FullRadius, h=LipWidth);
  cylinder(r=HubRadius, h=LipWidth);
}

// Hub wall
difference(){
  cylinder(r=HubRadius, h=Depth);
  cylinder(r=HubInnerRadius, h=Depth);
}

// Top Lip
translate([0,0,Depth - LipWidth]){
  difference(){
    cylinder(r=FullRadius, h=LipWidth);
    cylinder(r=HubRadius, h=LipWidth);
  }
}

// Ribs
intersection(){
  for (i = [1:8]){
    rotate(a=360*i/8,v=[0,0,1]) {
      translate([-Solidity/2, 0,0 ]){
      difference(){
        cube([Solidity, HubInnerRadius, Depth]);
        cube([Solidity, AxleOuterRadius - Solidity, Depth]);
      }
    }
    }
  }
  difference(){
    cylinder(r=HubInnerRadius, h=Depth);
    cylinder(r=AxleOuterRadius, h=Depth);
  }
}
