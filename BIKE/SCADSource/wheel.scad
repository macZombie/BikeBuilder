// wheel.scad


module tyre(x,dia){

    rad = dia / 2.0;

    difference(){

        color("#000000" ) translate([  x ,  -12.5 , rad ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( 25.0  ,  rad ,  rad ) ;

        translate([  x ,  -13.5 , rad ] ) rotate( [ -90 , 0 , 0 ] ) cylinder(  27.0 ,  rad - 25  ,  rad - 25 ) ;

    }
        
}
    

    
module rim(x,dia){

    

    rad = dia / 2.0;
    
    z = rad;
    
    


    difference(){

        color("#C0C0C0" ) translate([  x ,  -12.5 , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( 25.0  ,  rad - 25  ,  rad - 25 ) ;

        translate([  x ,  -13.5 , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder(  27.0 ,  rad - 50  ,  rad - 50  ) ;

    }
    
    
}
        

module hub(x,dia,hubWidth){

    z = dia / 2.0;
    
    spindleWidth = hubWidth + 30;
    
    hubStart = hubWidth / -2.0;


    color("#C0C0C0" ) translate([  x ,  hubStart , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( hubWidth  ,  10  ,  10 ) ; // barrel


    color("#C0C0C0" ) translate([  x ,  hubStart + 20.0  , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( 5  ,  40.0  ,  40.0 ) ; // right flange

    color("#C0C0C0" ) translate([  x ,  hubStart + ( hubWidth - 25 ) , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( 5  ,  40.0  ,  40.0 ) ; // left flange


    color("#000000" )  translate([  x , spindleWidth / -2.0  , z ] ) rotate( [ -90 , 0 , 0 ] ) cylinder( spindleWidth  ,  5  ,  5 ) ; // spindle
    
    
}




module spokes(x,dia,hubWidth){

        rad = dia / 2.0 ;
        
        spokeHeadCircle = 40.0;
        
        hubStart = ( hubWidth / -2.0 );
        
        
        opp =  rad - 50.0 - spokeHeadCircle ;
 
        adj = ( hubWidth / 2.0 ) - 15; 
   
        theta =  atan(opp / adj );
        
        hyp = opp / sin(theta);
        
        r = hyp;
        

         
        for ( index = [  0 :  30  : 360 ] ){ 
         
 
            xar = x + ( spokeHeadCircle )  * cos( index  ) ;
            
            yar = rad  + ( spokeHeadCircle )  * sin( index  ) ;
            
     
            xal = x + ( spokeHeadCircle )  * cos( index + 15 ) ;
            
            yal = rad + ( spokeHeadCircle )  * sin( index + 15 ) ;
            
            
            
            color("#C0C0C0" ) translate( [ xar, hubStart + 22.5 , yar ] ) rotate([ theta, ( index * -1.0 ) + 90.0 , 0.0 ] ) cube( [ 1.0,r,1.0 ] );
            
                
            color("#C0C0C0" ) translate( [ xal, hubStart + hubWidth - 22.5 , yal ] ) rotate([ 180 - theta  , ( index * -1.0 ) + 90 - 15 , 0 ] ) cube( [ 1,r,1 ] );
             
   
        }
        
        
        
}





module wheel(x,dia,hubWidth){

    tyre(x,dia);
    
    rim(x,dia);
    
    hub(x,dia,hubWidth);
    
    spokes(x,dia,hubWidth);
    





}


//wheel(0,700,130); // rear

//wheel(0,700,100); // front












