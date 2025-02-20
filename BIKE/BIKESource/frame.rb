# frame.rb



class Frame
    
    
    @name
    
    @startX
    @startZ
    
    @seatTubeDiameter
    @seatTubeLength
    @seatAngle
    @topTubeDiameter
    @topTubeLength
    @topTubeAngle  
    @headTubeDiameter
    @headTubeLength
    @headTubeAngle
    @downTubeDiameter
    @bottomBracketWidth
    @bottomBracketDiameter
    
    
    
    @chainStayStartDiameter
    @chainStayFinishDiameter
    @chainStayOvalX
    @chainStayOvalY
    @chainStayOvalZ
    @seatStayStartDiameter
    @seatStayFinishDiameter
    @brakeClearance
    @brakeBridgeDiameter
    
    

    def initialize(name)
        
        @name = name
    
    
    
        return
        
    end
    
    
    def setSeatTubeDiameter(value)      ;   @seatTubeDiameter      = value ; return ; end
    def setSeatTubeLength(value)        ;   @seatTubeLength        = value ; return ; end
    def setSeatAngle(value)             ;   @seatAngle             = value ; return ; end
    def setTopTubeDiameter(value)       ;   @topTubeDiameter       = value ; return ; end
    def setTopTubeLength(value)         ;   @topTubeLength         = value ; return ; end
    def setTopTubeAngle(value)          ;   @topTubeAngle          = value ; return ; end
    def setHeadTubeDiameter(value)      ;   @headTubeDiameter      = value ; return ; end
    def setHeadTubeLength(value)        ;   @headTubeLength        = value ; return ; end
    def setHeadAngle(value)             ;   @headTubeAngle         = value ; return ; end
    def setDownTubeDiameter(value)      ;   @downTubeDiameter      = value ; return ; end
    def setBottomBracketWidth(value)    ;   @bottomBracketWidth    = value ; return ; end
    def setBottomBracketDiameter(value) ;   @bottomBracketDiameter = value ; return ; end 
    
   
    def setChainStayStartDiameter(value)  ;   @chainStayStartDiameter   = value ; return ; end                   
    def setChainStayFinishDiameter(value) ;   @chainStayFinishDiameter  = value ; return ; end       
    def setChainStayOvalX(value)          ;   @chainStayOvalX           = value ; return ; end 
    def setChainStayOvalY(value)          ;   @chainStayOvalY           = value ; return ; end 
    def setChainStayOvalZ(value)          ;   @chainStayOvalZ           = value ; return ; end 
    def setSeatStayStartDiameter(value)   ;   @seatStayStartDiameter    = value ; return ; end     
    def setSeatStayFinishDiameter(value)  ;   @seatStayFinishDiameter   = value ; return ; end      
    def setBrakeClearance(value)          ;   @brakeClearance           = value ; return ; end            
    def setBrakeBridgeDiameter( value )   ;   @brakeBridgeDiameter      = value ; return ; end


    
    
    
    
    def setStart( value )
        
        @startX = value[0]
        @startZ = value[1]
        return
        
    end
    
        
    
    def drawMainTriangle
        
        
        $seatTube = Tube.new("seatTube")
        $seatTube.setDiameter(@seatTubeDiameter)
        $seatTube.setStart( [ @startX, 0 , @startZ ] )
        $seatTube.setPolar( [ @seatTubeLength , 0 , 0 - ( 90 - @seatAngle )  ]) 
        $seatTube.drawPolar
        
        $seatTubeTop = Tube.new("seatTubeTop")
        $seatTubeTop.setDiameter(@seatTubeDiameter)
        $seatTubeTop.setStart( $seatTube.getFinish )
        $seatTubeTop.setPolar([ 25, 0 , 0 - ( 90 - @seatAngle) ] )
        $seatTubeTop.drawPolar
        
        $topTube = Tube.new("topTube")
        $topTube.setDiameter(@topTubeDiameter)
        $topTube.setStart( $seatTube.getFinish )
        $topTube.setPolar( [ @topTubeLength , 0 , @topTubeAngle ] )
        $topTube.drawPolar
        
        $headTube = HeadTube.new("headTube")
        $headTube.setDiameter(37.0)
        $headTube.setStart( $topTube.getFinish )
        $headTube.setPolar([ @headTubeLength, 0 , 90 + @headTubeAngle ] )
        $headTube.drawPolar
       
        
        $headTubeTop = Tube.new("headTubeTop")
        $headTubeTop.setDiameter(37.0)
        $headTubeTop.setStart( $topTube.getFinish )
        $headTubeTop.setPolar([ 25, 0 , 0 - ( 90 - @headTubeAngle ) ] )
        $headTubeTop.drawPolar
        
        $headTubeBottom = Tube.new("headTubeBottom")
        $headTubeBottom.setDiameter(37.0)
        $headTubeBottom.setStart( $headTube.getFinish )
        $headTubeBottom.setPolar([ 25, 0 , 90 + @headTubeAngle] )
        $headTubeBottom.drawPolar  
            
        $downTube = Tube.new("downTube")
        $downTube.setDiameter(33.0)
        $downTube.setStart( $headTube.getFinish )   
        $downTube.setFinish( $seatTube.getStart )
        $downTube.drawRect
        
        $bottomBracket = BottomBracket.new("bottomBracket") 
        $bottomBracket.setDiameter(@bottomBracketDiameter)
        $bottomBracket.setWall(2.0)
        $bottomBracket.setWidth(@bottomBracketWidth)
        $bottomBracket.setStart( $seatTube.getStart )
        $bottomBracket.draw
        
        
        return

    end
    
    
    def drawRearTriangle
        
        print "\nrear wheel is at ",$rearWheel.getStart
        
        $rightTrackEnd = TrackEnd.new("rightTrackEnd")
        $rightTrackEnd.setStart( $rearWheel.getStart   )
        $rightTrackEnd.setY( $rearWheel.getHubWidth / -2.0 )
        $rightTrackEnd.draw
        $rightTrackEnd.tell
        
        
        $leftTrackEnd = TrackEnd.new("leftTrackEnd")
        $leftTrackEnd.setStart( $rearWheel.getStart   )
        $leftTrackEnd.setY( $rearWheel.getHubWidth / 2.0 )
        $leftTrackEnd.draw
        
        
        $rightChainStay = Tube.new("rightChainStay")
        $rightChainStay.setStartDiameter(@chainStayStartDiameter)
        $rightChainStay.setFinishDiameter(@chainStayFinishDiameter)
        $rightChainStay.setStart( $rightTrackEnd.getChainStay )   
        $rightChainStay.setFinish( $bottomBracket.getRightChainStay )
        $rightChainStay.setOval([ @chainStayOvalX ,  @chainStayOvalY , @chainStayOvalZ  ])
        $rightChainStay.drawRect
        
        
        $leftChainStay = Tube.new("leftChainStay")
        $leftChainStay.setStartDiameter( @chainStayStartDiameter )
        $leftChainStay.setFinishDiameter(@chainStayFinishDiameter)
        $leftChainStay.setStart( $leftTrackEnd.getChainStay )   
        $leftChainStay.setFinish( $bottomBracket.getLeftChainStay )
        $leftChainStay.setOval([ @chainStayOvalX ,  @chainStayOvalY , @chainStayOvalZ  ])
        $leftChainStay.drawRect
        
        $rightSeatStay = Tube.new("rightSeatStay")
        $rightSeatStay.setDiameter(15.0)
        $rightSeatStay.setStartDiameter(@seatStayStartDiameter)
        $rightSeatStay.setFinishDiameter(@seatStayFinishDiameter)
        $rightSeatStay.setStart( $rightTrackEnd.getSeatStay )   
        
        $rightSeatStay.setFinish( $seatTube.getFinish )
        $rightSeatStay.setFZ($rightSeatStay.getFZ - 40 )
        $rightSeatStay.setFX($rightSeatStay.getFX + 10 )
        $rightSeatStay.setFY( -10)
        $rightSeatStay.drawRect
        

        
        $leftSeatStay = Tube.new("leftSeatStay")
        $leftSeatStay.setDiameter(15.0)
        $leftSeatStay.setStartDiameter(@seatStayStartDiameter)
        $leftSeatStay.setFinishDiameter(@seatStayFinishDiameter)
        $leftSeatStay.setStart( $leftTrackEnd.getSeatStay )   
        $leftSeatStay.setFinish( $seatTube.getFinish )
        $leftSeatStay.setFZ($leftSeatStay.getFZ - 40 )
        $leftSeatStay.setFX($leftSeatStay.getFX + 10 )
        $leftSeatStay.setFY( 10 )
        $leftSeatStay.drawRect


        $brakeBridge = Tube.new("brakeBridge")
        $brakeBridge.setDiameter(@brakeBridgeDiameter)
        a = polarToRect( ( $rearWheel.getTyreDiameter / 2.0 )  + @brakeClearance  , $rightSeatStay.getTheta , $rightSeatStay.getPhi )
        b = $rightSeatStay.getStart
        c = addVectors( a , b )
        $brakeBridge.setStart( c  )
        $brakeBridge.setPolar([ 40 , 90 , 90  ] )
        $brakeBridge.drawPolar


        return
    end
    
    












end
