//
post_d = 7.3;

post_d2 = 13;

post_above = 3;

post_under = 15;

pinhole_z = 3;
pinhole_d = 2;
$fs = 0.5;
$fa = 5.1;


bodyriser();
module bodyriser() {
    
    difference() {
        union() {
            hull() {
                translate([0,0,-5]) cylinder(d=post_d, h=1);
                translate([0,0,post_above+1]) sphere(d=post_d);
            }
            
            hull() {
                translate([0,0,-1]) rotate([15,0,0]) cylinder(d=post_d2, h=1);
                translate([0,0,-post_under]) cylinder(d=post_d2, h=1);
            }
            
        }
        translate([-50,0,post_above]) rotate([0,90,0]) cylinder(d=pinhole_d, h=100);
        
        translate([0,0,-post_under-1]) cylinder(d=post_d, h=post_under);
        translate([0,0,-post_under-0.1]) cylinder(d1=post_d+1, d2=post_d, h=1);
        
        translate([-50,0,-2-5.5]) rotate([0,90,0]) cylinder(d=pinhole_d, h=100);
        %translate([-50,0,-2-5.5-5.5]) rotate([0,90,0]) cylinder(d=pinhole_d, h=100);
        
    }
    
}