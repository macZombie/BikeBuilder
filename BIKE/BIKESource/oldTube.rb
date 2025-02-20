class Tube


	@myName
    @myVX
    @myVY
    @myVZ
    @myR
    @myTheta
    @myPhi
    @myP 

    @myWall
    @mySX
    @mySY
    @mySZ
    @myFX
    @myFY
    @myFZ
    
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
    
     @visibility
   
    
    
    
    

	def initialize( name   )
		@myName = name
        @myVX = 0.to_f
        @myVY = 0.to_f
        @myVZ = 0.to_f
        @myR = 0.to_f
        @myTheta = 0.to_f
        @myPhi = 0.to_f
        @myP = 0.to_f 	
        @myWall = 0.1
        
        @myDiameter = 29
        @myStartDiameter = @myDiameter
        @myFinishDiameter = @myDiameter
        @myStartRadius = @myStartDiameter / 2.0
        @myFinishRadius = @myFinishDiameter / 2.0
        @myInternalStartRadius = ( @myStartDiameter / 2.0 ) - @myWall
        @myInternalFinishRadius = ( @myFinishDiameter / 2.0 ) - @myWall
        
        @mySX = 0.to_f
        @mySY  = 0.to_f
        @mySZ = 0.to_f
        @myFX = 0.to_f
        @myFY  = 0.to_f
        @myFZ = 0.to_f
        
        
        @myXOval = 1.0.to_f
        @myYOval = 1.0.to_f
        @myZOval = 1.0.to_f
        
        
         @visibility = ""
        

        return
    end

##### SETTERS #####

	def setName( value )
		@myName = value
		return
	end
    
    
    def setDiameter(value)
        @myDiameter = value
        @myStartDiameter = @myDiameter
        @myFinishDiameter = @myDiameter
        @myStartRadius = @myStartDiameter / 2.0
        @myFinishRadius = @myFinishDiameter / 2.0
        @myInternalStartRadius = ( @myStartDiameter / 2.0 ) - @myWall
        @myInternalFinishRadius = ( @myFinishDiameter / 2.0 ) - @myWall
        return
    end
    
    def setStartDiameter(value)
        @myStartDiameter = value
        @myStartRadius = @myStartDiameter / 2.0
        @myInternalStartRadius = ( @myStartDiameter / 2.0 ) - @myWall
        return
    end
    
    
      def setFinishDiameter(value)
        @myFinishDiameter = value
        @myFinishRadius = @myFinishDiameter / 2.0
        @myInternalFinishRadius = ( @myFinishDiameter / 2.0 ) - @myWall
        return
    end
    
    
    
    
    def setWall(value)
        #print "\nDEBUG: setWall to ",value
        @myWall = value.to_f
        return
    end
    
    def setYStart(value)
        @mySY = value
        return
    end
    
    def setYFinish(value)
        @myFY = value
        return
    end
    
    
    
    
    def setStart( value )
        
        size = value.size
        
        
        if ( size != 3 )
        
            print "\nERROR: ",getMyName,"'s setStart has ",size," arguments instead of 3.\n\n"
            Process.exit(0)
        
        end
        
        @mySX =(value[0]).to_f
        @mySY =(value[1]).to_f
        @mySZ =(value[2]).to_f
        
        
        return
    end
    
    
    def setVector( value )
        
        size = value.size
        
        
        if ( size != 3 )
        
            print "\nERROR: ",getMyName,"'s setVector has ",size," arguments instead of 3.\n\n"
            Process.exit(0)
        
        end
        
        @myVX =(value[0])
        @myVY =(value[1])
        @myVZ =(value[2])
        
        
        return
    end
    
    
    def setFinish( value )
        
        size = value.size
        
        
        if ( size != 3 )
        
            print "\nERROR: ",getMyName,"'s setFinish has ",size," arguments instead of 3.\n\n"
            Process.exit(0)
        
        end
        
        @myFX =(value[0])
        @myFY =(value[1])
        @myFZ =(value[2])
        
        
        return
    end
    
    
    
    def setPolar( value )
        
        size = value.size
        
        
        if ( size != 3 )
        
            print "\nERROR: ",getMyName,"'s setPolar has ",size," arguments instead of 3.\n\n"
            Process.exit(0)
        
        end
        
        @myR =(value[0]).to_f
        @myTheta =(value[1]).to_f
        @myPhi =(value[2]).to_f
 

        return
    end


    def setPhi(value)
        @myPhi = value
        return
    end
    
    
    
    def setSX(value) ;    @mySX = value ; return ; end 
    def setSY(value) ;    @mySY = value ; return ; end 
    def setSZ(value) ;    @mySZ = value ; return ; end 
    def setFX(value) ;    @myFX = value ; return ; end 
    def setFY(value) ;    @myFY = value ; return ; end 
    def setFZ(value) ;    @myFZ = value ; return ; end 
    
  
    def setOval( value )
        

        
        @myXOval =(value[0]).to_f
        @myYOval =(value[1]).to_f
        @myZOval =(value[2]).to_f
        
        
        return
    end
    


##### GETTERS #####

	def getMyName
		value = @myName
		return value
	end


    def getStart

        a = @mySX
        b = @mySY
        c = @mySZ
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
        
    end
    
    
    
    def getFinish

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

        a = @myVX
        b = @myVY
        c = @myVZ
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
        
    end
        
        
    def getYStart
        
        value = @mySY
        
        return value
        
    end
    
    
    def getSX ; value =    @mySX ; return(value) ; end 
    def getSY ; value =    @mySY ; return(value) ; end 
    def getSZ ; value =    @mySZ ; return(value) ; end 
    def getFX ; value =    @myFX ; return(value) ; end 
    def getFY ; value =    @myFY ; return(value) ; end 
    def getFZ ; value =    @myFZ ; return(value) ; end 
    def getR ; value = @myR ; return(value); end 
    def getDiameter ; value = @myDiameter ; return(value); end




    def tell
        
        print "\n\nmyName              = " , @myName                       
        print "\nmyVX                = " , @myVX
        print "\nmyVY                = " , @myVY
        print "\nmyVZ                = " , @myVZ
        print "\nmyR                 = " , @myR
        print "\nmyTheta             = " , @myTheta
        print "\nmyPhi               = " , @myPhi
        print "\nmyP                 = " , @myP 
        print "\nmyWall              = " , @myWall
        print "\nmySX                = " , @mySX
        print "\nmySY                = " , @mySY
        print "\nmySZ                = " , @mySZ
        print "\nmyFX                = " , @myFX
        print "\nmyFY                = " , @myFY
        print "\nmyFZ                = " , @myFZ                      
 
        print "\nmyDiameter              = ",    @myDiameter 
        print "\nmyStartDiameter         = ",    @myStartDiameter
        print "\nmyFinishDiameter        = ",    @myFinishDiameter
        print "\nmyStartRadius           = ",    @myStartRadius
        print "\nmyFinishRadius          = ",    @myFinishRadius
        print "\nmyInternalStartRadius   = ",    @myInternalStartRadius
        print "\nmyInternalFinishRadius  = ",    @myInternalFinishRadius

        return
    end
    


    def getTheta
        value = @myTheta
        return value 
    end

    def getPhi
        value = @myPhi
        return value 
    end
    
    
    
    
     def invisible
       
       @visibility = "//"
       
       
       return
   end
   
   
   
    def visible
       
       @visibility = ""
       
       
       return
   end
   




##### MAIN METHODS #####



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
    
<%= @visibility %>    color("<%= $colour.get %>") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] )  scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
    
<%= @visibility %>    translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;

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
    
<%= @visibility %>    color("<%= $colour.get %>") translate( [ <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] ) cylinder( <%= @myR %> , <%= @myStartRadius  %>, <%= @myFinishRadius  %> ) ;
    
<%= @visibility %>    translate( [ <%= @mySX %> - 0.01 , <%= @mySY %> - 0.01 , <%= @mySZ - 0.01 %> ] )  rotate( [0.0  , <%= @myPhi %> , <%= @myTheta %> ] ) scale( [ <%= @myXOval %> , <%= @myYOval %> , <%= @myZOval %> ] )  cylinder( <%= @myR %> + 0.02, <%= @myInternalStartRadius  %>, <%= @myInternalFinishRadius  %> ) ;

    }

}

        myString = template.result(binding)
        
        $scad.append myString   

        
        @myVZ = @myR * Math.sin( 90.0.to_rad - @myPhi.to_rad ) 
        
        @myP = @myR * Math.cos( 90.0.to_rad - @myPhi.to_rad ) 
        
        @myVY = @myP * Math.sin( @myTheta.to_rad)
        
        @myVX = @myP * Math.cos( @myTheta.to_rad)
        
        
        @myFX = @mySX + @myVX 
        @myFY = @mySY + @myVY
        @myFZ = @mySZ + @myVZ
    

        return
    
    
    end


############################################################################


    def target(x,y,z)
           
        template= ERB.new %q{

// <%= @myName %>.target    
color("#FF0000") translate( [ <%= x %> , <%= y %> , <%= z %> ] ) sphere( 5 ) ;
    }

        myString = template.result(binding)
        
        
        if ( $TARGET )
        
            $scad.append myString
            
        end
        

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

