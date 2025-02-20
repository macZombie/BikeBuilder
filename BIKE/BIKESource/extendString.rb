#!/usr/bin/ruby

# extendString.rb

class String

    def suball(originalString,replacementString)
             
        outputString = self
             
             
        begin
                     
            count = outputString.count(originalString)
                             
            outputString = outputString.sub(originalString,replacementString)
                              
        end while ( count > 0 )


        return outputString
             
    end
         
         
         
    def truncate(max)
        
        myString = self
        
        result = myString.length > max ? "#{myString[0...max]}" : myString
        
        return(result)
   
   end
  
  
  
    def leading
    
        myString = self

        result = myString.truncate(1)
	
        return(result)
	
    end
	


	

    def isLower
        
        value = self

        result = false

        c = value.leading


        if ( c >= 'a' ) && ( c <= 'z' )
	
            result = true
		
        else 	
		
            result = false
		
        end
	
        return(result)
	
    end


	
	
    def isUpper
        
        value = self

        result = false

        c = value.leading


        if ( c >= 'A' ) && ( c <= 'Z' )
	
            result = true
		
        else 	
		
            result = false
		
        end
	
        return(result)
	
    end






	
	





    def toUpper
        
        value = self

        result = "dummy"
	
	
        if ( value.isLower ) 
		
            result = value
		
            c = result.leading
		
            cCode = c.ord - 32 
		
            cChar = cCode.chr

            result[0] = cChar

		
        else
	
            result = value
		
		
        end
		

        return(result)
	
	
    end




	
    def toLower
        
        value = self

        result = "dummy"
	
	
        if ( value.isUpper )
		
            result = value
		
            c = result.leading
		
            cCode = c.ord + 32 
		
            cChar = cCode.chr

            result[0] = cChar

		
        else
	
            result = value
		
		
        end
		

        return(result)
	
	
    end
	
	


     
         
        
                

end ; # of class String
