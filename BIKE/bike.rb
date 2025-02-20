#! /usr/bin/ruby

require 'erb'
require "./BIKESource/customFile.rb"
require "./BIKESource/scadFile.rb"
require "./BIKESource/extendFloat.rb"
require "./BIKESource/wheel.rb"
require "./BIKESource/trackEnd.rb"
require "./BIKESource/forkEnd.rb"
require "./BIKESource/miscFunctions.rb"
require "./BIKESource/element.rb"
require "./BIKESource/tube.rb"
require "./BIKESource/headTube.rb"
require "./BIKESource/bottomBracket.rb"
require "./BIKESource/forkCrown.rb" 
require "./BIKESource/fork.rb"
require "./BIKESource/colour.rb"
require "./BIKESource/steererTube.rb"
require "./BIKESource/widget.rb" 
require './BIKESource/genericFunctions.rb'
require './BIKESource/extendString.rb'
require './BIKESource/font.rb'
require './BIKESource/diagram.rb'




#######################################################################################


# GLOBAL CONSTANTS

$BRAKE_CLEARANCE = ( -25 + 20 )
$X_OFFSET = 400 # was -402 
$SEAT_ANGLE = 76
$HEAD_ANGLE = 74
$TARGET = false
$BRAKE_BRIDGE_FACTOR = 0.25 # Not yet properly automated , approx scale for its length
$SEAT_STAY_DROP = 0    # The brake bridge may need compensation depending on where the seat stays end.
$TOP_TUBE_SLOPE = 90
$TOP_TUBE_DROP = 0


#######################################################################################

# GLOBAL VARIABLES


$spicer # special mods for Spicer Triple Triangle 
$noWheels
$noFork



#######################################################################################

def writeSummary
    
    print "\nHead Angle            = ",$HEAD_ANGLE," degrees"
    print "\nSeat Angle            = ",$SEAT_ANGLE," degrees"
    print "\nSeat Tube             = ",$seatTube.getR," mm"
    print "\nTop Tube              = ",$topTube.getR," mm"
    print "\nBottom Bracket Height = ",$bottomBracket.getStart[2]," mm"
    print "\nStand Over            = ",$topTube.getStart[2] + ( $topTube.getDiameter / 2.0 ) ," mm"
    print "\nWheelbase             = ",$frontWheel.getX - $rearWheel.getX , " mm"
    print "\nFront Centre          = ",$frontWheel.getX - $bottomBracket.getStart[0] , " mm"
    print "\nRear Centre           = ",$bottomBracket.getStart[0] - $rearWheel.getX , " mm"
    print "\nSeat Tube Diameter    = ",$seatTube.getDiameter," mm"
    print "\nTop Tube Diameter     = ",$topTube.getDiameter," mm"
    print "\nHead Tube Diameter    = ",$headTube.getDiameter," mm"
    print "\nDown Tube Diameter    = ",$downTube.getDiameter," mm"
    print "\nFork Rake             = ",$fork.getForkRake," mm"
    
    return
end



#######################################################################################
#######################################################################################
#######################################################################################
#######################################################################################

BEGIN { print "\nINFO: Start of ",$PROGRAM_NAME }

    startingTime = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    fillSineCache # build lookup table for trig functions first
    
    fillFontCache # setup the font for 2D plotting
    
    
    $twoD = Diagram.new("bike",2000,1000)
	
    $twoD.drawGraphPaper


    $scad = ScadFile.new("bike.scad")
    
    $scad.create
    
    $scad.writeHeader
    
    $colour = Colour.new("colour")
    
    #$colour.set("VIOLET")
    
    $colour.set("BLUE")
    
    #print "\ncolour is ",$colour.get
    
    
    #######################################################################################
    
    seatTubeLength = 546
    
    topTubeLength = 570
    
    headTubeLength = 60
    
    bottomBracketHeight = 270 
    
    forkRake = 43
    
    $spicer = false
    
    $noWheels = false
    
    $noFork = false
    
    
    
    
    #######################################################################################

    if ( $spicer )
        
        $colour.set("VIOLET")
        
    else
    
        $colour.set("CYAN")
        
    end
    

    #######################################################################################


    $rearWheel = Wheel.new( $X_OFFSET , "rearWheel"   ) # The position of the rear hub defines the origin of the frame
    $rearWheel.setTyreDiameter(700)
    
    if ( $noWheels ) 
        $rearWheel.invisible
    end
    
    $rearWheel.draw
    
    $frontWheel = Wheel.new( $X_OFFSET + 1020  , "frontWheel"   ) # place marker for later
    $frontWheel.setHubWidth(100)
    $frontWheel.setTyreDiameter(700)
    #$frontWheel.draw  # don't draw it yet
    
    $seatTube = Tube.new("seatTube")
    $seatTube.setPolar( [ seatTubeLength , 0 , 0 - ( 90 - $SEAT_ANGLE)  ]) 
    $seatTube.setStart( [ $X_OFFSET + 400, 0 , bottomBracketHeight  ] )
    $seatTube.setDiameter(25.4)
    $seatTube.drawPolar
    

    $seatTubeTop = Tube.new("seatTubeTop")
    $seatTubeTop.setStart( $seatTube.getFinish )
    $seatTubeTop.setPolar([ 25 , 0 , 0 - ( 90 - $SEAT_ANGLE) ] )
    $seatTubeTop.setDiameter(25.4)
    $seatTubeTop.drawPolar
    
    $topTube = Tube.new("topTube")
    $topTube.setStart( $seatTube.getFinish )
    $topTube.setSZ( $topTube.getSZ - $TOP_TUBE_DROP )
    $topTube.setPolar( [ topTubeLength , 0 , $TOP_TUBE_SLOPE ] )
    $topTube.setDiameter(25.4)
    $topTube.drawPolar
    
    $headTube = HeadTube.new("headTube")
    $headTube.setDiameter(37.0)
    $headTube.setStart( $topTube.getFinish )
    $headTube.setPolar([ headTubeLength , 0 , 90 + $HEAD_ANGLE ] )
    $headTube.drawPolar
    
    $headTubeTop = Tube.new("headTubeTop")
    $headTubeTop.setDiameter(37.0)
    $headTubeTop.setStart( $topTube.getFinish )
    $headTubeTop.setPolar([ 25, 0 , 0 - ( 90 -  $HEAD_ANGLE ) ] )
    $headTubeTop.drawPolar
    
    $headTubeBottom = Tube.new("headTubeBottom")
    $headTubeBottom.setDiameter(37.0)
    $headTubeBottom.setStart( $headTube.getFinish )
    $headTubeBottom.setPolar([ 25, 0 , 90 +  $HEAD_ANGLE ] )
    $headTubeBottom.drawPolar  

    $downTube = Tube.new("downTube")
    $downTube.setDiameter(33.0)
    $downTube.setStart( $headTube.getFinish )   
    $downTube.setFinish( $seatTube.getStart )
    $downTube.drawRect

    $bottomBracket = BottomBracket.new("bottomBracket") 
    $bottomBracket.setWall(2.0)
    $bottomBracket.setWidth(68)
    $bottomBracket.setDiameter(40.3)
    $bottomBracket.setStart( $seatTube.getStart )
    $bottomBracket.draw
      
    $rightTrackEnd = TrackEnd.new("rightTrackEnd")
    $rightTrackEnd.setStart( $rearWheel.getStart   )
    $rightTrackEnd.setY( $rearWheel.getHubWidth / -2.0 )
    $rightTrackEnd.draw
    
    $leftTrackEnd = TrackEnd.new("leftTrackEnd")
    $leftTrackEnd.setStart( $rearWheel.getStart   )
    $leftTrackEnd.setY( $rearWheel.getHubWidth / 2.0 )
    $leftTrackEnd.draw
    
    $rightChainStay = Tube.new("rightChainStay")
    $rightChainStay.setStartDiameter(12)
    $rightChainStay.setFinishDiameter(25)
    $rightChainStay.setStart( $rightTrackEnd.getChainStay )   
    $rightChainStay.setFinish( $bottomBracket.getRightChainStay )
    $rightChainStay.setOval([ 1.4 , 1 , 1 ])
    $rightChainStay.drawRect
    $rightChainStay.startBall
    
    $leftChainStay = Tube.new("leftChainStay")
    $leftChainStay.setStartDiameter( 12 )
    $leftChainStay.setFinishDiameter( 25 )
    $leftChainStay.setStart( $leftTrackEnd.getChainStay )   
    $leftChainStay.setFinish( $bottomBracket.getLeftChainStay )
    $leftChainStay.setOval([ 1.4 , 1 , 1])
    $leftChainStay.drawRect
    $leftChainStay.startBall
    
  #  $rightSeatStay = Tube.new("rightSeatStay")
  #  $rightSeatStay.setDiameter(15.0)
  #  $rightSeatStay.setStart( $rightTrackEnd.getSeatStay ) 



   
#  if ( $spicer )
#      
#      # Spicer Triple Rear Triangle
#      
#      $rightSeatStay = Tube.new("rightSeatStay")
#      $rightSeatStay.setDiameter(15.0)
#      $rightSeatStay.setStart( $rightTrackEnd.getSeatStay ) 
#      $rightSeatStay.setFinish( $seatTube.getFinish )
#      $rightSeatStay.setFZ($rightSeatStay.getFZ  )
#      $rightSeatStay.setFX($rightSeatStay.getFX + 195 )
#      $rightSeatStay.setFY( -6)
#      #   $rightSeatStay.invisible
#      $rightSeatStay.drawRect
#      $rightSeatStay.startBall
#      
#      $leftSeatStay = Tube.new("leftSeatStay")
#      $leftSeatStay.setDiameter(15.0)
#      $leftSeatStay.setStart( $leftTrackEnd.getSeatStay )   
#      $leftSeatStay.setFinish( $seatTube.getFinish )
#      $leftSeatStay.setFZ($leftSeatStay.getFZ - 40 )
#      $leftSeatStay.setFX($leftSeatStay.getFX + 10 )
#      $leftSeatStay.setFY( 8 )
#      $leftSeatStay.drawRect
#      $leftSeatStay.startBall
#      
#      
#      
#      
#      $leftChainStay = Tube.new("leftChainStay")
#      $leftChainStay.setStartDiameter( 12 )
#      $leftChainStay.setFinishDiameter( 25 )
#      $leftChainStay.setStart( $leftTrackEnd.getChainStay )   
#      $leftChainStay.setFinish( $bottomBracket.getLeftChainStay )
#      $leftChainStay.setOval([ 1.4 , 1 , 1])
#      $leftChainStay.drawRect
#      $leftChainStay.startBall
#      
#      
#  
#      $brakeBridge = Tube.new("brakeBridge")
#      $brakeBridge.setDiameter( 12 )
#      $brakeBridge.setStart( [ -143 , - 33 , 602.5 ])  
#      $brakeBridge.setPolar([ 50 , 90 , 90  ] )
#      $brakeBridge.drawPolar
#      
#  
#      $rightBridge = Widget.new("rightBridge")    
#      $rightBridge.setStart( [ -95 , -27 , 650 ])  
#      $rightBridge.setAngle(-42)
#      $rightBridge.setLength(20)
#      $rightBridge.setRadius(6)
#      $rightBridge.draw
#      
#      
#      $leftBridge = Tube.new("leftBridge")
#      $leftBridge.setDiameter( 12 )
#      $leftBridge.setStart([ -65 , 8 , 517] )
#      $leftBridge.setFinish( [  -190  ,  25  ,  655  ])
#      $leftBridge.drawRect
#  
#  else
        
        # Conventional Rear Triangle
        $rightSeatStay = Tube.new("rightSeatStay")
        $rightSeatStay.setDiameter(15.0)
        $rightSeatStay.setStart( $rightTrackEnd.getSeatStay ) 
        $rightSeatStay.setFinish( $seatTube.getFinish )
        $rightSeatStay.setFZ($rightSeatStay.getFZ - $SEAT_STAY_DROP )
        $rightSeatStay.setFX($rightSeatStay.getFX + 10 )
        $rightSeatStay.setFY( -8)
        #   $rightSeatStay.invisible
        $rightSeatStay.drawRect
        $rightSeatStay.startBall

        $leftSeatStay = Tube.new("leftSeatStay")
        $leftSeatStay.setDiameter(15.0)
        $leftSeatStay.setStart( $leftTrackEnd.getSeatStay )   
        $leftSeatStay.setFinish( $seatTube.getFinish )
        $leftSeatStay.setFZ($leftSeatStay.getFZ - $SEAT_STAY_DROP )
        $leftSeatStay.setFX($leftSeatStay.getFX + 10 )
        $leftSeatStay.setFY( 8 )
        $leftSeatStay.drawRect
        $leftSeatStay.startBall
    
        $brakeBridge = Tube.new("brakeBridge")
        $brakeBridge.setDiameter( 12 )
        a = polarToRect( ( $rearWheel.getTyreDiameter / 2.0 )  + $BRAKE_CLEARANCE , $rightSeatStay.getTheta , $rightSeatStay.getPhi )
        b = $rightSeatStay.getStart
        c = addVectors( a , b )
        $brakeBridge.setStart( c  )
        top = ($rightSeatStay.getFinish[1]).abs
        bottom = ($rightSeatStay.getStart[1]).abs
        len = ( top + $BRAKE_BRIDGE_FACTOR * bottom )  * 2
        $brakeBridge.setPolar([ len , 90 , 90  ] )
        $brakeBridge.drawPolar
        
 #   end
    
    
    
  
    
     $fork = Fork.new("fork")
     $fork.setSteererTubeDiameter( 25.4 )
     $fork.setSteererTubeLength( 110)  
     $fork.setHeadAngle( $HEAD_ANGLE )          
     $fork.setForkStartDiameter( 22 )  
     $fork.setForkFinishDiameter( 18 ) 
     $fork.setForkRake( forkRake )
    
     if ( $noFork == false )
        $fork.draw

        $frontWheel.setStart( $rightForkEnd.getStart) # only when we know where the forks end
   
        if ( $noWheels )    
            $frontWheel.invisible
        end

        $frontWheel.draw
        
    end
 


    #######################################################################################
    
    $twoD.finish

    $scad.writeTail
    
    
    writeSummary

    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    
    elapsed = ending - startingTime
    
END { print "\nINFO: End of ",$PROGRAM_NAME," after ", sprintf("%0.5f", elapsed )  ," seconds\n\n" }



