// simple stop for bottom of loo seat

Height = 60;
Depth = 22;
Width = 22;
Diam = 8;
Sink = 10;
Offset = 10;

difference(){
  cube([Width, Height, Depth]);
  translate([Width/2,Height/2,Depth-Sink]){
  union() {
    translate([0, Height/2-Offset, 0]){
      cylinder(h=Sink, d=Diam);
    }
    translate([0, Offset - Height/2, 0]) {
      cylinder(h=Sink, d=Diam);
    }
  }
  }
}
