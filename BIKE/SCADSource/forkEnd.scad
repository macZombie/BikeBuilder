// forkEnd.scad



module forkEndA(){

    translate([0,0,0])  scale ( [ 1.5 , 1 , 1 ] ) cylinder( 5 , 12 , 12 );

    translate( [ -10 , 0 , 0 ] ) rotate( [ 0 , 0 , 72 ] )  cube( [ 8 , 20 , 5 ]  ) ;
    
    translate( [ -28 , 10 , 0 ] ) cylinder( 5 , 4 , 4 );
    
    translate( [ 10, 5 , 0 ] ) cube( [ 6 , 5, 5 ] );
    
}


module flatForkEnd(){

    difference(){
    
        forkEndA();
        
        translate([0,0,-0.01])  cylinder( 5.02 , 5 , 5 );
        
        translate( [ 0 , -5 , -0.01 ] ) cube( [ 20, 10 , 5.02 ] );
        
        translate( [ 20, 10 , -0.01 ] ) rotate([ 0 ,0 , 90 + 60 ] ) cube( [ 10 , 5, 5.02 ] );
         
        translate( [ -20 , 7.5 , -5  ] ) cylinder( 15 , 2 , 2 );   
        
    }
    
}


module forkEnd(x,y,z){

    xa = x;
    ya = y - 2.5;
    za = z;

    translate ( [ xa  , ya , za   ] ) rotate([ 0 , 90 , 90 ] ) flatForkEnd();
    
}


