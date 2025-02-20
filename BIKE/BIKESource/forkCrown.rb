# forkCrown.rb



class ForkCrown < Tube
    
    @rightBladeX
    @rightBladeY
    @rightBladeZ
    
  
    @leftBladeX
    @leftBladeY
    @leftBladeZ
    
    
    

    def initialize(name)
    
        super(name)
        
        @rightBladeX = 0 
        @rightBladeY = 0 
        @rightBladeZ = 0 
         @leftBladeX = 0 
         @leftBladeY = 0 
         @leftBladeZ = 0 
        
        
        
        
        return
        
    end
    
    def getRightFork
        
        value = Array[3]
        
        value[0] =  @mySX
        value[1] =  @mySY - 45
        value[2] =  @mySZ
        
        return value
        
    end
    
    
    def getLeftFork
        
        value = Array[3]
        
        value[0] =  @mySX
        value[1] =  @mySY + 45
        value[2] =  @mySZ
        
        return value
        
    end
        
        

    def draw
        
        @rightBladeX = @myXS
        @rightBladeY = @myYS 
        @rightBladeZ = @myZS 
        @leftBladeX =  @myXS
        @leftBladeY =  @myYS
        @leftBladeZ =  @myZS
        
        
        

        template= ERB.new %q{

// <%= @myName %>.draw  

color("<%= $colour.get %>") forkCrown( <%= @mySX %> , <%= @mySY %> , <%= @mySZ %> , <%= @myPhi %>  );

}

        myString = template.result(binding)
        
        $scad.append myString
        
        
        end



end
