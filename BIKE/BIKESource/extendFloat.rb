#extendFloat.rb



class Float


    def to_deg
        
        value = self
        
        value = value / Math::PI  * 180.0 
        
        return value

    end
    
    
    
    def to_rad
        
        value = self
        
        value = value / 180.0 * Math::PI
        
        return value

    end
    
    
    
end


