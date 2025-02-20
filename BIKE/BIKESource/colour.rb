# colour.rb


class Colour

    @myName
    @myColour
    
    def initialize(name)
        
        
        @myName = name
        @myColour = "BLUE"
        
        return
    end
    
    
    def set(value)
        
        case value
            
            when "BLACK"       then @myColour =  "#000000"
            when "BROWN"       then @myColour =  "#6B3C3C"
            when "RED"         then @myColour =  "#FF0000"
            when "ORANGE"      then @myColour =  "#FF7F00"
            when "YELLOW"      then @myColour =  "#FFFF12"
            when "GREEN"       then @myColour =  "#00FF00"
            when "BLUE"        then @myColour =  "#0000FF"
            when "VIOLET"      then @myColour =  "#D503FF"
            when "GREY"        then @myColour =  "#7F7F7F"
            when "WHITE"       then @myColour =  "#FFFFFF"
            when "LIGHT_GREEN" then @myColour =  "#99FF66"
            when "CYAN"        then @myColour =  "#99FFFF"
            else @myColour = "#7F7F7F"
            
        end # case value
        
        #print "\nINFO: ",@myName," is being set to ",value," which is ",@myColour
       
        return
    end
    
    def get ; value = @myColour ; return value ; end 
    





end
