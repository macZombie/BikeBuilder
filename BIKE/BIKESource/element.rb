

class Element


	@myName
	@myVisibility
	@mySX
	@mySY
	@mySZ



	def initialize(  name  )
		@myName = name
		@myVisibility = true
		@mySX = 0.0
		@mySY = 0.0
		@mySZ = 0.0
	end

##### SETTERS #####

	def setName( value )
		@myName = value
		return
	end

	def setVisibility( value )
		@myVisibility = value
		return
	end

	def setSX( value )
		@mySX = value
		return
	end

	def setSY( value )
		@mySY = value
		return
	end

	def setSZ( value )
		@mySZ = value
		return
	end

    
    def set( value )
        @mySX = value[0]
        @mySY = value[1]
        @mySZ = value[2]
        return
    end
    
        
    def setStart( value ) # synonym
        set(value)
        return
    end
    

##### GETTERS #####

	def getName
		value = @myName
		return value
	end

	def getVisibility
		value = @myVisibility
		return value
	end

	def getSX
		value = @mySX
		return value
	end

	def getSY
		value = @mySY
		return value
	end

	def getSZ
		value = @mySZ
		return value
	end




    def get
        
        a = @mySX
        b = @mySY
        c = @mySZ
        
        value = Array[3]
        
        value[0] = a
        value[1] = b
        value[2] = c
        
        return value
  
    end
    
    
    def getStart # synonym
        result = get
        return result
    end
    
    
    
    def visible
        @myVisibility = true
        return
    end
    
    def invisible
        @myVisibility = false
        return
    end
    
    
    def info
        
        print "\n\nName                  = ", @myName             
        print "\nVisibility            = ", @myVisibility
        print "\nSX                    = ", @mySX
        print "\nSY                    = ", @mySY
        print "\nSZ                    = ", @mySZ            
        
        return
    end
    
    


end # of class Element

