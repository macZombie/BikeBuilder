// tube.scad





module tube(x,y,z, phi , theta , xOval, yOval , zOval , r , startRadius , finishRadius , internalStartRadius , internalFinishRadius ){

    v = 0.01 ;
    
    w = v * 2.0 ;
    
    
    difference(){

        translate( [ x , y , z ] ) rotate( [ 0.0 , phi , theta ] ) scale ( [ xOval, yOval , zOval ] ) cylinder( r  , startRadius , finishRadius ) ;
    
        translate( [ x - v , y - v , z - v ] ) rotate( [ 0.0 , phi , theta ] ) scale ( [ xOval, yOval , zOval ] ) cylinder( r + w , internalStartRadius , internalFinishRadius ) ;
  
    }
    
}
    
