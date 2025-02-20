// forkCrown.scad


forkDia = 22;

forkR = forkDia / 2.0 ;



module forkCrownA(){

   translate([0,0,0]) cylinder(25, 18 , 18 );

   translate([45,0,-10]) cylinder(35, forkR + 1.5 , forkR  + 1.5 );
   
   translate([-45,0,-10]) cylinder(35, forkR  + 1.5 , forkR  + 1.5 );
   
   
   translate([ -45,( forkR *  -1.0 ) - 1.5 ,0 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
    
   translate([ -45,( forkR *  -1.0 ) - 1.5 ,10 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
    
   translate([ -45,( forkR *  -1.0 ) - 1.5 ,20 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
    
    
   translate([ 13,( forkR *  -1.0 ) - 1.5 ,0 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
    
   translate([ 13,( forkR *  -1.0 ) - 1.5 ,10 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
     
   translate([ 13,( forkR *  -1.0 ) - 1.5 ,20 ] ) cube([ 32 , ( forkR * 2.0 )  + 3 , 5 ]) ;
  
   translate([0,0,25 ]) cylinder(4, 18 , 14  );
    

}

module forkCrownRaw(){

    difference(){
    
        forkCrownA();
        
        translate([0,0,-0.01]) cylinder(30, 25.4 / 2.0  , 25.4 / 2.0  );

        translate([45,0,-10.01]) cylinder(33, forkR , forkR );
   
        translate([-45,0,-10.01]) cylinder(33, forkR , forkR  );
        
        translate([ 0 , -20 , 12]) rotate([-90,0,0]) cylinder(40, 3, 3);
        
        translate([ 0 , 10 , 12]) rotate([-90,0,0]) cylinder(40, 4, 4);

        
        
        
    }
    
    
   
    

}



module forkCrown( x , y , z , phi ){

    
    translate([ x, y , z ]) rotate( [ phi  - 180 , 0 , 90 ] ) forkCrownRaw();
    
    
}



