// bike.scad

$fn = 64;

include <wheel.scad>
include <trackEnd.scad>
include <forkEnd.scad>
include <tube.scad>


wheel(400,700,130); // rear

wheel(1400,700,100); // front

trackEnd( 400, -65  , 350 ); 

trackEnd( 400,  65  , 350 ); 

forkEnd(1400,-52.5,350);

forkEnd(1400,50,350);


//tube(x,y,z, phi , theta , xOval, yOval , zOval , r , startRadius , finishRadius , internalStartRadius , internalFinishRadius )    

//tube(20,30,40, 45 , 60 , 1, 1 , 1 , 100 , 15 , 20 , 14.9 , 19.9 ); 


tube(820,0,300, 73 - 90 , 0 , 1, 1 , 1 , 500 , 15 , 15 , 14.9 , 14.9 ); 



