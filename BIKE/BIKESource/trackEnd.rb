# trackEnd.rb



class TrackEnd
    
        @myName
        @myX
        @myY
        @myZ
        @myChainStayX
        @myChainStayY
        @myChainStayZ
        @mySeatStayX
        @mySeatStayY
        @mySeatStayZ
        
        
        def initialize(name)
            @myName = name     
  
            setX(0)
            setY(0)
            setZ(0)
            
            return
            
        end
        
 
        def setName(value)          ;       @myName        = value  ; return ; end 
        
        def setX(value)             
            @myX           = value
            @myChainStayX  = value + 40
            @mySeatStayX   = value + 22
            return 
        end
        
        def setY(value)              
            @myY           = value  
            @myChainStayY  = value
            @mySeatStayY   = value
            return 
        end
        
        
        def setZ(value)    
            @myZ           = value 
            @myChainStayZ  = value
            @mySeatStayZ   = value + 26
            return
        end
        
        
        
        
        def setChainStayX(value)    ;       @myChainStayX  = value  ; return ; end
        
        def setChainStayY(value)    ;       @myChainStayY  = value  ; return ; end
        
        def setChainStayZ(value)    ;       @myChainStayZ  = value  ; return ; end
        
        def setSeatStayX(value)     ;       @mySeatStayX   = value  ; return ; end
        
        def setSeatStayY(value)     ;       @mySeatStayZ   = value  ; return ; end          
        
        def getName          ;  value =     @myName        ; return value ; end           
        def getX             ;  value =     @myX           ; return value ; end
        def getY             ;  value =     @myY           ; return value ; end
        def getZ             ;  value =     @myZ           ; return value ; end
        def getChainStayX    ;  value =     @myChainStayX  ; return value ; end
        def getChainStayY    ;  value =     @myChainStayY  ; return value ; end
        def getChainStayZ    ;  value =     @myChainStayZ  ; return value ; end
        def getSeatStayX     ;  value =     @mySeatStayX   ; return value ; end
        def getSeatStayY     ;  value =     @mySeatStayZ   ; return value ; end  
        
        def setStart( value )

            size = value.size
        
            if ( size != 3 )
                print "\nERROR: ",getMyName,"'s setStart has ",size," arguments instead of 3.\n\n"
                Process.exit(0)
            end
        
            setX(value[0])
            setY(value[1])
            setZ(value[2])
        
        
            return
        end
        
        
        
        
            
        def getStart

            a = @myX
            b = @myY
            c = @myZ
        
            value = Array[3]
        
            value[0] = a
            value[1] = b
            value[2] = c
        
            return value
        
        end
    
        def getChainStay

            a = @myChainStayX
            b = @myChainStayY
            c = @myChainStayZ
        
            value = Array[3]
        
            value[0] = a
            value[1] = b
            value[2] = c
        
            return value
        
        end
    
        def getSeatStay

            a = @mySeatStayX
            b = @mySeatStayY
            c = @mySeatStayZ
        
            value = Array[3]
        
            value[0] = a
            value[1] = b
            value[2] = c
        
            return value
        
        end
        
        
        
        def tell
            
            print "\nmyName        = ", @myName                       
            print "\nmyX           = ", @myX              
            print "\nmyY           = ", @myY              
            print "\nmyZ           = ", @myZ              
            print "\nmyChainStayX  = ", @myChainStayX              
            print "\nmyChainStayY  = ", @myChainStayY              
            print "\nmyChainStayZ  = ", @myChainStayZ              
            print "\nmySeatStayX   = ", @mySeatStayX              
            print "\nmySeatStayY   = ", @mySeatStayY              
            print "\nmySeatStayZ   = ", @mySeatStayZ                  
            
            return
        end
        
        
    
        
        
        
        def draw

            template= ERB.new %q{
        
// <%= @myName %>.draw 

<%= @visibility %> color("<%= $colour.get %>") trackEnd( <%= @myX %> , <%= @myY %>  , <%= @myZ %> ); 

}


        myString = template.result(binding)
        
        $scad.append myString
        
        
        $twoD.colour($BLUE)
        $twoD.line( @myX - 100    , @myZ - 1      , @myX + 100 , @myZ  - 1  )
        $twoD.line( @myX - 100    , @myZ          , @myX + 100 , @myZ       )
        $twoD.line( @myX - 100    , @myZ  + 1     , @myX + 100 , @myZ + 1   )
        $twoD.line( @myX   - 1    , @myZ - 100 , @myX   - 1    , @myZ + 100 )
        $twoD.line( @myX          , @myZ - 100 , @myX          , @myZ + 100 ) 
        $twoD.line( @myX   + 1    , @myZ - 100 , @myX   + 1    , @myZ + 100 )
        

        return
    
    end  
        






end
