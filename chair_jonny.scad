translate([0,-0,18])
cube([19 , 20, 2, ], center = true);

translate([10, 0, 20 * sin(90)])


rotate([0, 95, 0]) translate ([-9 ,9 ,-1]) cube([21, 2, 1], center = true);
rotate([0, -85, 0])
translate ([29 ,-9 ,-7.5]) cube([20, 2, 1], center = true);
rotate([0, 95, 0]) translate ([-38 ,0 ,7.3]) cube([5.5, 20, 1.3], center = true);


translate([-8.7, 8.8, 0])


cylinder(r1=1, r2=1, h=18);

translate([8.6,8.8,0])

cylinder(r1=1, r2=1, h=18);

translate([8.6,-8.8,0])

cylinder(r1=1, r2=1, h=18);

translate([-8.7,-8.8,0])

cylinder(r1=1, r2=1, h=18);
