// Start of bike.scad
$fn = 64 ;


include <./SCADSource/wheel.scad>
include <./SCADSource/trackEnd.scad>
include <./SCADSource/forkEnd.scad>
include <./SCADSource/tube.scad>
include <./SCADSource/forkCrown.scad>
include <./SCADSource/colours.scad>
include <./SCADSource/widget.scad>




 
 wheel(400 ,700 , 130 );
 
 

            
    // seatTube.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 800 , 0 , 270 ] )  rotate( [0.0  , -14 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 546 , 12.7, 12.7 ) ;
        
        translate( [ 800 - 0.01 , 0 - 0.01 , 269.99 ] )  rotate( [0.0  , -14 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 546 + 0.02, 11.899999999999999, 11.899999999999999 ) ;
    
        }
    
    

            
    // seatTubeTop.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 667.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , -14 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 25 , 12.7, 12.7 ) ;
        
        translate( [ 667.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , -14 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 25 + 0.02, 11.899999999999999, 11.899999999999999 ) ;
    
        }
    
    

            
    // topTube.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 667.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , 90 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 570 , 12.7, 12.7 ) ;
        
        translate( [ 667.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , 90 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 570 + 0.02, 11.899999999999999, 11.899999999999999 ) ;
    
        }
    
    

            
    // headTube.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1237.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 60 , 18.5, 18.5 ) ;
        
        translate( [ 1237.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 60 + 0.02, 17.7, 17.7 ) ;
    
        }
    
    

            
    // headTubeTop.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1237.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , -16 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 25 , 18.5, 18.5 ) ;
        
        translate( [ 1237.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , -16 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 25 + 0.02, 17.7, 17.7 ) ;
    
        }
    
    

            
    // headTubeBottom.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1254.4488863516015 , 0.0 , 742.1057647903949 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 25 , 18.5, 18.5 ) ;
        
        translate( [ 1254.4488863516015 - 0.01 , 0.0 - 0.01 , 742.0957647903949 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 25 + 0.02, 17.7, 17.7 ) ;
    
        }
    
    

            
    // downTube.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1254.4488863516015 , 0.0 , 742.1057647903949 ] )  rotate( [0.0  , 136.09172424683646 , 180.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 655.2920291400884 , 16.5, 16.5 ) ;
        
        translate( [ 1254.4488863516015 - 0.01 , 0.0 - 0.01 , 742.0957647903949 ] )  rotate( [0.0  , 136.09172424683646 , 180.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 655.2920291400884 + 0.02, 15.7, 15.7 ) ;
    
        }
    
    

            
    // bottomBracket.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 800 , -34.0 , 270 ] )  rotate( [0.0  , 90 , 90 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 68 , 20.15, 20.15 ) ;
        
        translate( [ 800 - 0.01 , -34.0 - 0.01 , 269.99 ] )  rotate( [0.0  , 90 , 90 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 68 + 0.02, 18.15, 18.15 ) ;
    
        }
    
    

        
// rightTrackEnd.draw 

 color("#99FFFF") trackEnd( 400 , -65.0  , 350.0 ); 


        
// leftTrackEnd.draw 

 color("#99FFFF") trackEnd( 400 , 65.0  , 350.0 ); 


            
    // rightChainStay.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 440 , -65.0 , 350.0 ] )  rotate( [0.0  , 102.77404241984948 , 7.490562007113994 ] ) scale( [ 1.4 , 1 , 1 ] ) cylinder( 361.81628280109237 , 6.0, 12.5 ) ;
        
        translate( [ 440 - 0.01 , -65.0 - 0.01 , 349.99 ] )  rotate( [0.0  , 102.77404241984948 , 7.490562007113994 ] ) scale( [ 1.4 , 1 , 1 ] )  cylinder( 361.81628280109237 + 0.02, 5.2, 11.7 ) ;
    
        }
    
    

               
// rightChainStay.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 440 , -65.0 , 350.0 ] ) scale( [ 1.4 , 1 , 1.4 ] ) sphere(  6.0  ) ;
    

            
    // leftChainStay.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 440 , 65.0 , 350.0 ] )  rotate( [0.0  , 102.77404241984948 , -7.490562007113994 ] ) scale( [ 1.4 , 1 , 1 ] ) cylinder( 361.81628280109237 , 6.0, 12.5 ) ;
        
        translate( [ 440 - 0.01 , 65.0 - 0.01 , 349.99 ] )  rotate( [0.0  , 102.77404241984948 , -7.490562007113994 ] ) scale( [ 1.4 , 1 , 1 ] )  cylinder( 361.81628280109237 + 0.02, 5.2, 11.7 ) ;
    
        }
    
    

               
// leftChainStay.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 440 , 65.0 , 350.0 ] ) scale( [ 1.4 , 1 , 1.4 ] ) sphere(  6.0  ) ;
    

            
    // rightSeatStay.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 422 , -65.0 , 376.0 ] )  rotate( [0.0  , 31.74391856655636 , 12.556747151409631 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 498.32719132524176 , 7.5, 7.5 ) ;
        
        translate( [ 422 - 0.01 , -65.0 - 0.01 , 375.99 ] )  rotate( [0.0  , 31.74391856655636 , 12.556747151409631 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 498.32719132524176 + 0.02, 6.7, 6.7 ) ;
    
        }
    
    

               
// rightSeatStay.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 422 , -65.0 , 376.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) sphere(  7.5  ) ;
    

            
    // leftSeatStay.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 422 , 65.0 , 376.0 ] )  rotate( [0.0  , 31.74391856655636 , -12.556747151409631 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 498.32719132524176 , 7.5, 7.5 ) ;
        
        translate( [ 422 - 0.01 , 65.0 - 0.01 , 375.99 ] )  rotate( [0.0  , 31.74391856655636 , -12.556747151409631 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 498.32719132524176 + 0.02, 6.7, 6.7 ) ;
    
        }
    
    

               
// leftSeatStay.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 422 , 65.0 , 376.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) sphere(  7.5  ) ;
    

            
    // brakeBridge.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 599.1710917301062 , -25.537975165065212 , 669.3907852184341 ] )  rotate( [0.0  , 90 , 90 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 48.5 , 6.0, 6.0 ) ;
        
        translate( [ 599.1710917301062 - 0.01 , -25.537975165065212 - 0.01 , 669.3807852184341 ] )  rotate( [0.0  , 90 , 90 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 48.5 + 0.02, 5.2, 5.2 ) ;
    
        }
    
    

        
// steererTube.drawPolar

difference(){
    
   color("#C0C0C0")  translate( [ 1237.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 110 , 12.7, 12.7 ) ;
 
  translate( [ 1237.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 110 + 0.02, 11.899999999999999, 11.899999999999999 ) ;

    }


        
// steererTubeTop.drawPolar

difference(){
    
   color("#C0C0C0")  translate( [ 1237.9106450025815 , 0.0 , 799.7814665466941 ] )  rotate( [0.0  , -16 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 100 , 12.7, 12.7 ) ;
 
  translate( [ 1237.9106450025815 - 0.01 , 0.0 - 0.01 , 799.7714665466941 ] )  rotate( [0.0  , -16 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 100 + 0.02, 11.899999999999999, 11.899999999999999 ) ;

    }


        
// steererTubeBottom.drawPolar

difference(){
    
   color("#C0C0C0")  translate( [ 1254.4488863516015 , 0.0 , 742.1057647903949 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 60 , 12.7, 12.7 ) ;
 
  translate( [ 1254.4488863516015 - 0.01 , 0.0 - 0.01 , 742.0957647903949 ] )  rotate( [0.0  , 164 , 0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 60 + 0.02, 11.899999999999999, 11.899999999999999 ) ;

    }



// forkCrown.draw  

color("#99FFFF") forkCrown( 1270.9871277006214 , 0.0 , 684.4300630340958 , 164  );



// rightForkEnd.draw 

 color("#99FFFF") forkEnd(1409.8834051346757 ,  -50.0 , 350.0 );


            
    // rightFork.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1270.9871277006214 , -45.0 , 684.4300630340958 ] )  rotate( [0.0  , 157.305826672203 , -2.179215025407634 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 340.8170275428628 , 11.0, 9.0 ) ;
        
        translate( [ 1270.9871277006214 - 0.01 , -45.0 - 0.01 , 684.4200630340958 ] )  rotate( [0.0  , 157.305826672203 , -2.179215025407634 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 340.8170275428628 + 0.02, 10.2, 8.2 ) ;
    
        }
    
    

               
// rightFork.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 1402.3834051346757 , -50.0 , 370.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) sphere(  9.0  ) ;
    


// leftForkEnd.draw 

 color("#99FFFF") forkEnd(1409.8834051346757 ,  50.0 , 350.0 );


            
    // leftFork.draw
    
    difference(){
        
        color("#99FFFF") translate( [ 1270.9871277006214 , 45.0 , 684.4300630340958 ] )  rotate( [0.0  , 157.305826672203 , 2.179215025407634 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) cylinder( 340.8170275428628 , 11.0, 9.0 ) ;
        
        translate( [ 1270.9871277006214 - 0.01 , 45.0 - 0.01 , 684.4200630340958 ] )  rotate( [0.0  , 157.305826672203 , 2.179215025407634 ] ) scale( [ 1.0 , 1.0 , 1.0 ] )  cylinder( 340.8170275428628 + 0.02, 10.2, 8.2 ) ;
    
        }
    
    

               
// leftFork.ball    XOval needed on Z scale... 
 color("#99FFFF") translate( [ 1402.3834051346757 , 50.0 , 370.0 ] ) scale( [ 1.0 , 1.0 , 1.0 ] ) sphere(  9.0  ) ;
    

 
 wheel(1409.8834051346757 ,700 , 100 );
 
 

// End of bike.scad

