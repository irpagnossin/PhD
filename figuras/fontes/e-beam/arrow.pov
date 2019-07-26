#include "colors.inc"                
              
#macro axis ( x0, y0, z0 )
    #local L = 1.0;
    #local D = L / 10;
    
    union{
    
        // x-axis arrow.
        text{
            ttf "timrom.ttf" "x" D, 0
            pigment{ Red }
            rotate -135*y            
            translate <x0 + 2*L,y0,z0>
        }
        cylinder{ <x0 + D,y0,z0>, <x0 + D + L,y0,z0>, D pigment{ color rgb<1,0,0> }}
        cone{ <x0 + D + L,y0,z0>, 2*D, <x0 + 1.5*L,y0,z0>, 0.0 pigment{ Red }}
                                   
        // y-axis arrow.
        cylinder{ <x0,y0 + D,z0>, <x0,y0 + D + L,z0>, D pigment{ color rgb<0,1,0> }}
        cone{ <x0,y0 + D + L,z0>, 2*D, <x0,y0 + 1.5*L,z0>, 0.0 pigment{ Green }}
        text{
            ttf "timrom.ttf" "y" D, 0
            pigment{ Green }
            rotate -135*y
            translate <x0,y0 + 2*L,z0>

        }        
        
        // z-axis arrow.
        cylinder{ <x0,y0,z0 + D>, <x0,y0,z0 + D + L>, D pigment{ color rgb<0,0,1> }}
        cone{ <x0,y0,z0 + D + L>, 2*D, <x0,y0,z0 + 1.5*L>, 0.0 pigment{ Blue }}
        text{
            ttf "timrom.ttf" "z" D, 0
            pigment{ Blue }
            rotate -135*y
            translate <x0,y0,z0 + 2*L>
        }        

    }
#end
         
// e.g.:                      
//background { color White } 
//light_source{ <5,5,5> White}
//camera{ location <5,5,5> look_at <0,0,0>}
//object{ axis(0,0,0) scale 1 }
