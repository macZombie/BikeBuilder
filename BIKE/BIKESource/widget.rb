# widget.rb


class Widget

    @myName
    @myX
    @myY
    @myZ
    @myAngle
    @myLength
    @myRadius



    def initialize(name)
        
        @myName = name
        
        return
        
    end
    
    
    
    def setName(value)    ; @myName    = value ; return ; end 
    def setX(value)       ; @myX       = value ; return ; end   
    def setY(value)       ; @myY       = value ; return ; end 
    def setZ(value)       ; @myZ       = value ; return ; end 
    def setAngle(value)   ; @myAngle   = value ; return ; end 
    def setLength(value)  ; @myLength  = value ; return ; end 
    def setRadius(value)  ; @myRadius  = value ; return ; end 
    
    def setStart( value )
        
        size = value.size
        
        
        if ( size != 3 )
        
            print "\nERROR: ",getName,"'s setStart has ",size," arguments instead of 3.\n\n"
            Process.exit(0)
        
        end
        
        @myX =(value[0]).to_f
        @myY =(value[1]).to_f
        @myZ =(value[2]).to_f
        
        
        return
    end
    
    
    
    
    
    
    
    def getName    ; value = @myName    ; return(value) ; end 
    def getX       ; value = @myX       ; return(value) ; end   
    def getY       ; value = @myY       ; return(value) ; end 
    def getZ       ; value = @myZ       ; return(value) ; end 
    def getAngle   ; value = @myAngle   ; return(value) ; end 
    def getLength  ; value = @myLength  ; return(value) ; end 
    def getRadius  ; value = @myRadius  ; return(value) ; end 

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


    def draw
        
        
        template= ERB.new %q{
// widget-   <%= @myName %>.draw                

    widget( <%=  @myX   %>  ,  <%=   @myY  %>  , <%=  @myZ   %>  , <%=  @myAngle  %>  , <%=  @myLength   %>  , <%=  @myRadius   %> ); 
    
    
  



}

        myString = template.result(binding)

        $scad.append myString

        return
    end

        
        
        
     
    




end