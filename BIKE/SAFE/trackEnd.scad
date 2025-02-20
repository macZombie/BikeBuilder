// trackEnd.scad



    
module lug(x,y){

    translate([x ,y - 4,0]) cube([25,8,5]);

    translate([x + 25 ,y,0]) cylinder(5,4,4);

}

module trackEndA(){
    
    translate([90,0,0]) cylinder(5, 20, 20 );

    translate([40,-20,0]) cube([50,40,5]);

    translate([40,0,0]) cylinder(5, 12, 12 );

    lug(90,0);

}

module trackEndB(){

    difference(){
    
        trackEndA();
        
        translate([0,7.2,-1]) rotate([ 0,0, 7.1 ] ) cube([120,40,7]);
        
        translate([0,-47.5,-1]) rotate([ 0,0, -7.4 ] ) cube([120,40,7]);
            
        translate([0,-5,-1]) rotate([ 0,0 , 0 ] ) cube([75,10,7]);
        
        translate([ 75 , 0 , -1 ] ) cylinder(7,5,5);
        
        
        
    }
        
    translate([85,5,0])rotate([ 0, 0 , 60 ] ) lug(0,0);

}

module trackEnd(x,y,z){

translate([x  -75  ,  y + 2.5, z ]) rotate([90,0,0]) trackEndB();

}






