module density_test_bar(length, width, h=4, r=10){
    translate([r,r])
    linear_extrude(height=h){
        hull(){
            translate([0,0]) circle(r);
            translate([0,width-2*r]) circle(r);
            translate([length-2*r,0]) circle(r);
            translate([length-2*r,width-2*r]) circle(r);
        }
    }
    *color("red")square([length, width]);
}

*color("red")square([200, 200]);
density_test_bar(100, 30);