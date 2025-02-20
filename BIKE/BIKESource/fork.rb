# fork.rb



class Fork
    
    @myName 
    
    @mySteererTubeDiameter
    @mySteererTubeLength
    @myHeadAngle
    @myForkStartDiameter
    @myForkFinishDiameter
    @myForkRake

    
    
    
    
    
    def initialize(name)
        
        @myName = name
        @visibility = ""
        @visible = true
        
        
        return
        
    end
    
    
    def setSteererTubeDiameter( value ) ;  @mySteererTubeDiameter = ( value ) ; return ; end 
    def setSteererTubeLength( value )   ;  @mySteererTubeLength   = ( value ) ; return ; end 
    def setHeadAngle( value )           ;  @myHeadAngle           = ( value ) ; return ; end 
    def setForkStartDiameter( value )   ;  @myForkStartDiameter   = ( value ) ; return ; end     
    def setForkFinishDiameter( value )  ;  @myForkFinishDiameter  = ( value ) ; return ; end          
    def setForkRake(value )             ;  @myForkRake            = ( value ) ; return ; end 
    
    
    def getForkRake
        value = @myForkRake
        return value
    end
    
        
  
    
    
    
    def draw
        
        $steererTube = SteererTube.new("steererTube")
        $steererTube.setDiameter(@mySteererTubeDiameter )
        $steererTube.setStart( $topTube.getFinish )

        $steererTube.setPolar([ @mySteererTubeLength, 0 , 90 + @myHeadAngle ] )
     
        
        $steererTube.drawPolar
        $steererTubeTop = SteererTube.new("steererTubeTop")
        $steererTubeTop.setDiameter(@mySteererTubeDiameter)
        $steererTubeTop.setStart( $topTube.getFinish )
        $steererTubeTop.setPolar([ 100, 0 , 0 - ( 90 - @myHeadAngle   ) ] )

        
        
        $steererTubeTop.drawPolar
        $steererTubeBottom = SteererTube.new("steererTubeBottom")
        $steererTubeBottom.setDiameter(@mySteererTubeDiameter)
        $steererTubeBottom.setStart( $headTube.getFinish )
        $steererTubeBottom.setPolar([ 60, 0 , 90 + @myHeadAngle   ] )
        


        $steererTubeBottom.drawPolar  
    
        $forkCrown = ForkCrown.new("forkCrown")
        $forkCrown.setStart( $steererTubeBottom.getFinish )
        $forkCrown.setPhi( 90 + @myHeadAngle   )
        $forkCrown.draw 

        $rightFork = Tube.new("rightFork")
        $rightFork.setDiameter(@myForkStartDiameter)
        $rightFork.setStartDiameter( @myForkStartDiameter )
        $rightFork.setFinishDiameter(@myForkFinishDiameter )
        $rightFork.setStart( $forkCrown.getRightFork )
        xa = $forkCrown.getRightFork[0]
        ya = $forkCrown.getRightFork[1]
        za = $forkCrown.getRightFork[2]
        hubZ  = $frontWheel.getTyreDiameter / 2.0 
        opp = za - hubZ
        hyp = opp / Math.sin( @myHeadAngle.to_f.to_rad )
        adj = hyp * Math.cos( @myHeadAngle.to_f.to_rad )
        xb = xa + adj + @myForkRake
        yb = $frontWheel.getHubWidth  / -2.0
        zb = za - opp
        $rightFork.setFinish( [ xb, yb, zb ] )  # this changes before its drawn
        $rightForkEnd = ForkEnd.new("rightForkEnd")
        $rightForkEnd.setPosition($rightFork.getFinish)
        $rightForkEnd.setSY($frontWheel.getHubWidth  / -2.0 )
        $rightForkEnd.draw
        $rightFork.setFinish( $rightForkEnd.getForkBlade )
        $rightFork.drawRect
        $rightFork.finishBall
        
       
        $leftFork = Tube.new("leftFork")
        $leftFork.setDiameter(@myForkStartDiameter)
        $leftFork.setStartDiameter( @myForkStartDiameter )
        $leftFork.setFinishDiameter(@myForkFinishDiameter )
        $leftFork.setStart( $forkCrown.getLeftFork )
        xa = $forkCrown.getLeftFork[0]
        ya = $forkCrown.getLeftFork[1]
        za = $forkCrown.getLeftFork[2]
        hubZ  = $frontWheel.getTyreDiameter / 2.0 
        opp = za - hubZ
        hyp = opp / Math.sin( @myHeadAngle.to_f.to_rad )
        adj = hyp * Math.cos( @myHeadAngle.to_f.to_rad )
        xb = xa + adj + @myForkRake
        yb = $frontWheel.getHubWidth  / 2.0
        zb = za - opp
        $leftFork.setFinish( [ xb, yb, zb ] )  # this changes before its drawn
        $leftForkEnd = ForkEnd.new("leftForkEnd")
        $leftForkEnd.setPosition($leftFork.getFinish)
        $leftForkEnd.setSY($frontWheel.getHubWidth  / 2.0 )
        $leftForkEnd.draw
        $leftFork.setFinish( $leftForkEnd.getForkBlade )
        $leftFork.drawRect
        $leftFork.finishBall


        
        return
        
    end
    
        
        
    
    
    
    
end
