#bottomBracket.rb


class BottomBracket < Tube
    
    @myWidth
    @myRightChainStay
    @myLeftChainStay
    
    def initialize(name)
        
        super(name)
        
        return
        
    end
    
    
    def setWidth(value)
        
        @myWidth = value
        
        @myRightChainStay = 0 - ( @myWidth / 2.0 ) + 15
        
        @myLeftChainStay = ( @myWidth / 2.0 ) - 15
        
        return
        
    end
    
    
    def getRightChainStay
        
        a = ( @mySX - @myStartRadius ) + 10
        
        b = @myRightChainStay
        
        c = @mySZ
        
                
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
    end
    
    
    
    def getLeftChainStay
        
        a = ( @mySX - @myStartRadius ) + 10
        
        b = @myLeftChainStay
        
        c = @mySZ
        
                
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
    end
    
    
    
    def draw
    
        setPolar( [ @myWidth , 90 , 90 ] ) 
        setSY( @myWidth  / -2.0 )
        drawPolar
        
        
        $twoD.colour($BLACK)
        $twoD.drawCircle(getSX,getSZ,  getStartDiameter / 2.0 )
        
                
        $twoD.colour($BLUE)
        $twoD.line( @mySX - 100    , @mySZ - 1      , @mySX + 100    , @mySZ  - 1  )
        $twoD.line( @mySX - 100    , @mySZ          , @mySX + 100    , @mySZ       )
        $twoD.line( @mySX - 100    , @mySZ  + 1     , @mySX + 100    , @mySZ + 1   )
        $twoD.line( @mySX   - 1    , @mySZ - 100    , @mySX   - 1    , @mySZ + 100 )
        $twoD.line( @mySX          , @mySZ - 100    , @mySX          , @mySZ + 100 ) 
        $twoD.line( @mySX   + 1    , @mySZ - 100    , @mySX   + 1    , @mySZ + 100 )
        
        
        
        
        return

    end
    

    
    
    

end

