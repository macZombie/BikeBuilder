# tube.rb


class Tube < Element


	@myVX
	@myVY
	@myVZ
	@myFX
	@myFY
	@myFZ
	@myR
	@myTheta
	@myPhi
	@myP
	@myWall
	@myDiameter
	@myStartDiameter
	@myFinishDiameter
	@myStartRadius
	@myFinishRadius
	@myInternalStartRadius
	@myInternalFinishRadius
	@myXOval
	@myYOval
	@myZOval
    @myHollowness
    @myHollowString
    @myProcessed


	def initialize( name   )
        super(name)
		@myVX                        = 0.0
		@myVY                        = 0.0
		@myVZ                        = 0.0
		@myFX                        = 0.0
		@myFY                        = 0.0
		@myFZ                        = 0.0
		@myR                         = 0.0
		@myTheta                     = 0.0
		@myPhi                       = 0.0
		@myP                         = 0.0
		@myWall                      = 0.8
		@myDiameter                  = 10.0
		@myStartDiameter             = @myDiameter
		@myFinishDiameter            = @myDiameter
		@myStartRadius               = @myDiameter / 2.0
		@myFinishRadius              = @myDiameter / 2.0
		@myInternalStartRadius       = @myStartRadius - @myWall
		@myInternalFinishRadius      = @myStartRadius - @myWall
		@myXOval = 1.0
		@myYOval = 1.0
		@myZOval = 1.0
        @myHollowness = true
        @myHollowString = ""
        @myProcessed = false
	end

##### SETTERS #####

	def setVX( value )
		@myVX = value
		return
	end

	def setVY( value )
		@myVY = value
		return
	end

	def setVZ( value )
		@myVZ = value
		return
	end

	def setFX( value )
		@myFX = value
		return
	end

	def setFY( value )
		@myFY = value
		return
	end

	def setFZ( value )
		@myFZ = value
		return
	end

	def setR( value )
		@myR = value
		return
	end

	def setTheta( value )
		@myTheta = value
		return
	end

	def setPhi( value )
		@myPhi = value
		return
	end

	def setP( value )
		@myP = value
		return
	end

	def setWall( value )
		@myWall = value
		return
	end

	def setDiameter( value )
        
        #print "\n",@myName," ",value
		@myDiameter = value
        setStartDiameter(value)
        setFinishDiameter(value)
		return
	end

	def setStartDiameter( value )
		@myStartDiameter = value
        radA = value / 2.0
        radB = radA - @myWall
        @myStartRadius = radA
        @myInternalStartRadius = radB
		return
	end


    
    def setFinishDiameter( value )
		@myFinishDiameter = value
        radA = value / 2.0
        radB = radA - @myWall
        @myFinishRadius = radA
        @myInternalFinishRadius = radB
		return
	end
    

	def setXOval( value )
		@myXOval = value
		return
	end

	def setYOval( value )
		@myYOval = value
		return
	end

	def setZOval( value )
		@myZOval = value
		return
	end
    
    def setV( value )
        @myVX = value[0]
        @myVY = value[1]
        @myVZ = value[2]
        return
    end
    
    def setF( value )
        @myFX = value[0]
        @myFY = value[1]
        @myFZ = value[2]
        return
    end
    
    def setOval( value )
        @myXOval = value[0]
        @myYOval = value[1]
        @myZOval = value[2]
        return
    end
    
    
    def setVector(value)
        setV(value)
        return
    end
    
    def setFinish(value)
        setF(value)
        return
    end
    
    def setPolar( value )
        setR(value[0])
        setTheta(value[1])
        setPhi(value[2])
        return
    end
    
    

##### GETTERS #####

	def getVX
		value = @myVX
		return value
	end

	def getVY
		value = @myVY
		return value
	end

	def getVZ
		value = @myVZ
		return value
	end

	def getFX
		value = @myFX
		return value
	end

	def getFY
		value = @myFY
		return value
	end

	def getFZ
		value = @myFZ
		return value
	end

	def getR
		value = @myR
		return value
	end

	def getTheta
		value = @myTheta
		return value
	end

	def getPhi
		value = @myPhi
		return value
	end

	def getP
		value = @myP
		return value
	end

	def getWall
		value = @myWall
		return value
	end

	def getDiameter
		value = @myDiameter
		return value
	end

	def getStartDiameter
		value = @myStartDiameter
		return value
	end

	def getFinishDiameter
		value = @myFinishDiameter
		return value
	end

	def getStartRadius
		value = @myStartRadius
		return value
	end

	def getFinishRadius
		value = @myFinishRadius
		return value
	end

	def getInternalStartRadius
		value = @myInternalStartRadius
		return value
	end

	def getInternalFinishRadius
		value = @myInternalFinishRadius
		return value
	end

	def getXOval
		value = @myXOval
		return value
	end

	def getYOval
		value = @myYOval
		return value
	end

	def getZOval
		value = @myZOval
		return value
	end


    def getV
        
        a = @myVX
        b = @myVY
        c = @myVZ
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
  
    end
    
    def getF
        
        a = @myFX
        b = @myFY
        c = @myFZ
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
  
    end
    
    
    def getVector
        result = getV
        return result
    end
    
    def getFinish
        result = getF
        return result
    end
    
    
    
    def getOval
        
        a = @myXOval
        b = @myYOval
        c = @myZOval
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
  
    end
    
    
        
    def getPolar
        
        a = @myR
        b = @myTheta
        c = @myPhi
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
  
    end
    
    
    def hollow
        @myHollowness = true
        @myHollowString = ""
        return
    end
    
    def solid
        @myHollowness = false
        @myHollowString = " // "
        return
    end
    
    
    
    def tell
        
        info
            
            
            
        print "\nVX                    = ",  @myVX                                        
        print "\nVY                    = ",  @myVY
        print "\nVZ                    = ",  @myVZ
        print "\nFX                    = ",  @myFX
        print "\nFY                    = ",  @myFY
        print "\nFZ                    = ",  @myFZ
        print "\nR                     = ",  @myR
        print "\nTheta                 = ",  @myTheta
        print "\nPhi                   = ",  @myPhi
        print "\nP                     = ",  @myP
        print "\nWall                  = ",  @myWall
        print "\nDiameter              = ",  @myDiameter
        print "\nStartDiameter         = ",  @myStartDiameter
        print "\nFinishDiameter        = ",  @myFinishDiameter
        print "\nStartRadius           = ",  @myStartRadius
        print "\nFinishRadius          = ",  @myFinishRadius
        print "\nInternalStartRadius   = ",  @myInternalStartRadius
        print "\nInternalFinishRadius  = ",  @myInternalFinishRadius
        print "\nXOval                 = ",  @myXOval
        print "\nYOval                 = ",  @myYOval
        print "\nZOval                 = ",  @myZOval  
        print "\nHollowness            = ",  @myHollowness
        print "\nProcessed             = ",  @myProcessed
        print "\n"
        
        
        return
    end
    
    
    def polarToRect(polarVector)
        
        r = polarVector[0].to_f
        theta = polarVector[1].to_f
        phi = polarVector[2].to_f
        
        #print "\nINFO: polarToRect ",r," ,",theta," , ",phi
        
        
        p = r * Math.cos(90.0.to_rad - phi.to_rad.to_f)
        
        #print "\nINFO: p = ",p
        
        setP(p)
        
        z = r * Math.sin(90.0.to_rad - phi.to_rad.to_f)
        
        #print "\nINFO: z = ",z
        
        setVZ(z)
        
        x = p * Math.cos(theta.to_rad.to_f)
        
        #print "\nINFO: x = ",x
        
        setVX(x)
        
        
        y = p * Math.sin(theta.to_rad.to_f)
        
        #print "\nINFO: y = ",y
        
        setVY(y)
        
        
        
        
        return
    end
    
    
    
    
    def rectToPolar

      #  @myVX = @myFX - @mySX 
      #  @myVY = @myFY - @mySY 
      #  @myVZ = @myFZ - @mySZ 

        
        #print "\nINFO: [ " , @mySX , " , ", @mySY  , " , ", @mySZ ," ] + [ " , @myVX , " , ", @myVY  , " , ", @myVZ ," ]  = [ " , @myFX , " , ", @myFY  , " , ", @myFZ ," ]"
        
        x = getVX
        y = getVY
        z = getVZ
      
        
        p = Math.sqrt( ( x ** 2 ) + ( y ** 2 ) ) 
        
        
        
        if ( p != 0.0 )
        
            theta = Math.acos( x / p ).to_deg 
            
        else
            
            theta = 0.0
            
        end
        
        
        
        if ( y < 0.00 )
            
            theta = theta * -1.0 
            
        end 
        
        
        r = Math.sqrt(  ( p ** 2 )  + ( z ** 2 ) ) 
        
        
        phi = 90.0 - Math.acos( p / r ).to_deg
        
        
        
        
        if ( z < 0.0 )
            
            phi = 360 - phi - 180.0 
            
        end
        
        setP(p)
        
        setR(r)
        setTheta(theta)
        setPhi(phi)
        
        
        #tell
        
        
        return
        
    end
    
    
    
    
    def calculateVector
        
        setVX( getFX - getSX )
        setVY( getFY - getSY )
        setVZ( getFZ - getSZ )

        return
    end
    
    
    def calculateFinish
        
        setFX( getSX + getVX )
        setFY( getSY + getVY )
        setFZ( getSZ + getVZ )

        return
    end
    
    
    
    

    


    def drawPolar

        polarVector = getPolar
        #print "\nINFO: polar vector is ",polarVector
        polarToRect(polarVector) # updates vector attributes, rather than return values
        calculateFinish          # updates finish attributes, rather than return values
        
        
             
        #print "\n",@myName,"  ",@myStartRadius, " ", @myFinishRadius
        
        
        template= ERB.new %q{
            
    // <%= @myName %>.draw
    
    difference(){
        
    <%= @visibility %>    color("<%= $colour.get %>") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
        
    <%= @visibility %>  <%= @myHollowString %>  translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] )  cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;
    
        }
    
    }
    
        myString = template.result(binding)
    
        $scad.append myString
    
    
        $twoD.colour($BLACK)
        $twoD.line(getSX,getSZ,getFX.to_i,getFZ.to_i)
        
        return
        
    end
    
    
    

    def drawRect
        
        
        calculateVector
        
        vector = getVector
        
        #print "\nINFO: rectangular vector is ",vector
        
        rectToPolar                 # updates polar attributes, rather than return values
   
        template= ERB.new %q{
            
    // <%= @myName %>.draw
    
    difference(){
        
    <%= @visibility %>    color("<%= $colour.get %>") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
        
    <%= @visibility %>  <%= @myHollowString %>  translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] )  cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;
    
        }
    
    }
    
        myString = template.result(binding)
    
        $scad.append myString
    
        
    
        $twoD.colour($BLACK)
        
        $twoD.line(getSX,getSZ,getFX.to_i,getFZ.to_i)
        
        return
        
    end



    def startBall
        
        template= ERB.new %q{
               
// <%= @myName %>.ball    XOval needed on Z scale... 
<%= @visibility %> color("<%= $colour.get %>") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myXOval %> ] ) sphere(  <%= @myStartRadius  %>  ) ;
    }

        myString = template.result(binding)

        $scad.append myString

        return
    end
    
    
    def finishBall
        
        template= ERB.new %q{
               
// <%= @myName %>.ball    XOval needed on Z scale... 
<%= @visibility %> color("<%= $colour.get %>") translate( [ <%= @myFX %> , <%= @myFY %> , <%= @myFZ %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myXOval %> ] ) sphere(  <%= @myFinishRadius  %>  ) ;
    }

        myString = template.result(binding)

        $scad.append myString

        return
    end









end # of class Tube

