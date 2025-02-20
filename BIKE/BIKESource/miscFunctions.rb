# miscFunctions.rb


#######################################################################################


def polarToRect( r , theta , phi )
    
    
        z = r * Math.sin( 90.0.to_rad - phi.to_rad ) 
        
        p = r * Math.cos( 90.0.to_rad - phi.to_rad ) 
        
        y = p * Math.sin( theta.to_rad)
        
        x = p * Math.cos( theta.to_rad)
        
    
        value = Array[3]
        
        value[0] = x
        value[1] = y
        value[2] = z
        
        return value
    
    
end


#######################################################################################


def addVectors( a , b )
    
        #print "\na = ",a
        #print "\nb = ",b
        
        
        value = Array[3]

        
        value[0] = a[0] + b[0]
        value[1] = a[1] + b[1]
        value[2] = a[2] + b[2]
    
    return value
    
end

#######################################################################################

