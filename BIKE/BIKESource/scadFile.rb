# scadFile.rb

class ScadFile < CustomFile
    
    def initialize(title)
        
        super(title,"openSCAD file")
        
        
        return
        
    end
    

    def writeHeader
        
        fileName = getName
        
        template= ERB.new %q{// Start of <%=fileName%>
$fn = 64 ;


include <./SCADSource/wheel.scad>
include <./SCADSource/trackEnd.scad>
include <./SCADSource/forkEnd.scad>
include <./SCADSource/tube.scad>
include <./SCADSource/forkCrown.scad>
include <./SCADSource/colours.scad>
include <./SCADSource/widget.scad>



}

        myString = template.result(binding)
        
        append myString
        
        return
    end
    


    def writeTail
        
        fileName = getName
        
        template= ERB.new %q{
// End of <%=fileName%>

}

        myString = template.result(binding)
        
        append myString
        
        return
    end



end
