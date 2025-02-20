// widget.scad



module widget(  x , y , z , angle , length , rad     ){

    difference(){
    
        color("#D503FF") translate( [  x , y , z  ] )  rotate( [0  , 90.0 , 90.0 ] )  rotate( [0  , 0 , angle ] )scale( [ 1.0 , 2.5 , 1.0 ] ) cylinder( length , rad , rad ) ;

                             translate( [  x , y , z - 0.01  ] )  rotate( [0  , 90.0 , 90.0 ] )  rotate( [0  , 0 , angle  ] )scale( [ 1.0 , 2.5 , 1.0 ] ) cylinder( length , rad - 0.1 , rad  - 0.1 ) ;
 
        }
        
        
        
        
        
}


