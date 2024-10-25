Points = 12;
Step = 360/Points;
Depth = 5;
Base = 10;
Height = 12;

// Triangle is a 3d isosceles triangle using depth, base and height

module starPoint(base, height, depth) {
tpoints = [ [ 0, 0, 0 ], [ base, 0, 0 ], [ base / 2, height, 0 ],
  [ 0, 0, depth ], [ base, 0, depth ], [ base / 2, height - depth, depth ] ];

tfaces = [ [ 0, 1, 2 ], [ 3, 4, 1, 0 ], [ 4, 5, 2, 1 ], [5, 3, 0, 2 ], [ 5, 4, 3 ] ];

polyhedron(points = tpoints, faces = tfaces, convexity = 10);
}

//starPoint(base=Base, height=Height, depth=Depth);


for ( i = [0:1:Points]) {
    deg = i * Step;
      translate([Base*cos(deg),Base*sin(deg), 0]) {
         rotate(deg-120) {
        starPoint(base=Base, height=Height, depth=Depth);
   }
    }
}
