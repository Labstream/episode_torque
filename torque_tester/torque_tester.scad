// torque tester for nema 23

difference(){
    hull(){
        cylinder(r=12, h=15, $fn=200);
        translate([100,0,0])
        cylinder(r=12, h=15, $fn=200);
    }

    // motor d-shaft for 5mm D-shaft
    difference(){
        translate([0,0,-2])
        cylinder(r=5.1/2, h=20, $fn=200);
        translate([-5.1/2,5.1/2-0.5,0])
        cube([6, 0.5, 15]);    
    }

    // motor d-shaft for 6.35mm D-shaft
    /*
    difference(){
        translate([0,0,-2])
        cylinder(r=6.45/2, h=20, $fn=200);
        translate([-6.45/2,6.45/2-0.5,0])
        cube([6, 0.5, 15]);    
    }
    
    // motor d-shaft for 8mm
    #difference(){
        translate([0,0,-2])
        cylinder(r=8.1/2, h=20, $fn=200);
        translate([-8.1/2, 8.1/2-1.0,0])
        cube([8.1, 1, 15]);    
    } 
    */   
    // attachment-holes for weights/scale
    translate([20,0,-1])
    cylinder(r=4.5, h=20, $fn=200);
    
    translate([50,0,-1])
    cylinder(r=4.5, h=20, $fn=200);    
    
    translate([100,0,-1])
    cylinder(r=4.5, h=20, $fn=200);        
}