#wheel.rb


class Wheel
    
    @name
	@x
	@y
	@z
	@hubDiameter
    @visibility



    


  	def initialize(  x , theName )

        @name = theName
        @tyreDiameter = 700.0
		@x = x
		@y = @tyreDiameter / 2.0 
		@z = 0
		@hubWidth = 130
        @visiblity = ""
        return
        
    end
    
    
    ##### SETTERS #####

	def setName( value )
		@name = value
		return
	end

	def setX( value )
		@x = value
		return
	end

	def setY( value )
		@y = value
		return
	end

	def setZ( value )
		@z = value
		return
	end
    
    def setTyreDiameter(value)
        @tyreDiameter = value
        @z = value / 2.0
        return
    end
    

	def setHubWidth( value )
		@hubWidth = value
		return
	end
    
    
    def setStart(value)
        
        @x = value[0]
        @z = value[1]       # because y and z are transposed
        @y = value[2]
        return
        
    end
    
        

##### GETTERS #####

	def getName
		value = @name
		return value
	end

	def getX
		value = @x
		return value
	end

	def getY
		value = @y
		return value
	end

	def getZ
		value = @z
		return value
	end

	def getTyreDiameter
		value = @tyreDiameter
		return value
	end

	def getHubWidth
		value = @hubWidth
		return value
	end

    
    def getStart

        a = @x
        b = @y
        c = @z
        
        value = Array[3]
        
       #value[0] = a
       #value[1] = c
       #value[2] = b # because y and z were swapped
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        
        
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
   
   
   
    
    
    def draw

        #print "\ndraw : ",@x," ",@y," ",@z

        template= ERB.new %q{
 
<%= @visibility %> wheel(<%= @x %> ,<%= @tyreDiameter %> , <%= @hubWidth %> );
 
 }

        myString = template.result(binding)
        
        $scad.append myString
        
        $twoD.colour($BLACK)
        $twoD.drawCircle(@x,@y,@tyreDiameter / 2.0 )
        
        

    end # of draw
    
    
end # of class



