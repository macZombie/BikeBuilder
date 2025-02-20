# steererTube.rb

class SteererTube < Tube
    


    def initialize(name)
    
        super(name)
        

        
        
        return
        
    end
        
    
        
def drawRect
        
        target(@mySX,@mySY,@mySZ)
        
        @myVX = @myFX - @mySX 
        @myVY = @myFY - @mySY 
        @myVZ = @myFZ - @mySZ 

        
        #print "\nINFO: [ " , @mySX , " , ", @mySY  , " , ", @mySZ ," ] + [ " , @myVX , " , ", @myVY  , " , ", @myVZ ," ]  = [ " , @myFX , " , ", @myFY  , " , ", @myFZ ," ]"
        
        target(@myFX,@myFY,@myFZ)
        
        @myP = Math.sqrt( ( @myVX **2 ) + ( @myVY ** 2 ) ) 
        
        
    
        if ( @myP != 0.0 )
        
            @myTheta = Math.acos( @myVX / @myP ).to_deg 
            
        else
            
            @myTheta = 0.0
            
        end
        
        

        if ( @myVY < 0.00 )
            
            @myTheta = @myTheta * -1.0 
            
        end 
        
        
        @myR = Math.sqrt(  ( @myP ** 2 )  + ( @myVZ ** 2 ) ) 
        

        @myPhi = 90.0 - Math.acos( @myP / @myR ).to_deg
        
        
        
    
        if ( @myVZ < 0.0 )
            
          @myPhi = 360 - @myPhi - 180.0 
            
        end
        
        
        @myInternalStartRadius = @myStartRadius - @myWall
        @myInternalFinishRadius = @myFinishRadius - @myWall

        
        template= ERB.new %q{
        
// <%= @myName %>.drawRect

difference(){
    
    color("#C0C0C0") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] )  scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
    
    translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;

    }

}

        myString = template.result(binding)
        
        $scad.append myString
        
        
        return
    end
    
############################################################################

    def drawPolar
        
    
        @myInternalStartRadius = @myStartRadius - @myWall
        @myInternalFinishRadius = @myFinishRadius - @myWall

 
         template= ERB.new %q{
        
// <%= @myName %>.drawPolar

difference(){
    
   color("#C0C0C0")  translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
 
  translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] )  cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;

    }

}

        myString = template.result(binding)
        
        $scad.append myString   

        
        @myVZ = @myR * Math.sin( 90.0.to_rad - @myPhi.to_f.to_rad ) 
        
        @myP = @myR * Math.cos( 90.0.to_rad -  @myPhi.to_f.to_rad ) 
        
        @myVY = @myP * Math.sin( @myTheta.to_f.to_rad)
        
        @myVX = @myP * Math.cos( @myTheta.to_f.to_rad)
        
        
        @myFX = @mySX + @myVX 
        @myFY = @mySY + @myVY
        @myFZ = @mySZ + @myVZ
    

        return
    
    
    end


############################################################################






end
