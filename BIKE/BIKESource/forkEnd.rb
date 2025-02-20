# forkEnd.rb



class ForkEnd 
    
        @myName  
        @myForkBladeX
        @myForkBladeY
        @myForkBladeZ
    
        @mySX
        @mySY
        @mySZ
     
    def initialize( name ) 

        @myName = name
        @myForkBladeX = 0
        @myForkBladeY = 0 
        @myForkBladeZ = 0 
        
            
        @mySX = 0
        @mySY = 0
        @mySZ = 0

        return
   
    end
    
    
    def setSX(value); @mySX = value ; return ; end 
    def setSY(value); @mySY = value ; return ; end 
    def setSZ(value); @mySZ = value ; return ; end 
    
    
    
    def setPosition(value)
        
        @mySX =(value[0]).to_f
        @mySY =(value[1]).to_f
        @mySZ =(value[2]).to_f
        
        @myForkBladeX = @mySX - 7.5
        @myForkBladeY = @mySY
        @myForkBladeZ = @mySZ + 20.0
        
        return
    end
    
    
    def getForkBlade
        
        value = Array[3]
        
        value[0] = @myForkBladeX
        value[1] = @myForkBladeY
        value[2] = @myForkBladeZ
        
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
    
    



    def draw
        
        
        template= ERB.new %q{

// <%= @myName %>.draw 

<%= @visibility %> color("<%= $colour.get %>") forkEnd(<%= @mySX  %> ,  <%= @mySY   %> , <%= @mySZ %> );

}

        myString = template.result(binding)
        
        $scad.append myString
        
        
        
             
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

    