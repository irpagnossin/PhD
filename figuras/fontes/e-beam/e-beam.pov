#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
#include "metals.inc"
#include "glass.inc"
     
// FUNDO
background { color White }  

// ILUMINAÇÃO 
//light_source { <10, 10, 10> White }
light_source { <5,5,10> White }
light_source { <7,7,10> White }
light_source { <7,7,-10> White }

// CÂMERA
camera {
        location < 2,  2.5,  2>  
        look_at  < 0.9,  0.6,  0> 
        }
                  
                 
#declare xI = function( x0, r ){ x0 - r - 0.0001 };
#declare xF = function( x0, r ){ x0 + r + 0.0001 };
#declare yI = function( y0, r ){ y0 - r - 0.0001 };
#declare yF = function( y0, r ){ y0              };
#declare zI = function( h     ){ -0.0001         };
#declare zF = function( h     ){ h + 0.0001      };
                      
                  
#declare SAMPLE = box { <-0.2,-0.2,-0.2>, <2.0,1.7588,0.0> texture{ Cork } }
                  
#declare PMMA = difference{
                              
        #local y1 = 0.0000;
        #local y2 = 0.5196;
        #local y3 = 1.0392;
        #local y4 = 1.5576;
          
        box { <0.0, 0.0000, 0.01>, <1.8, 1.5576, 0.29> pigment { color rgb<1, 0, 0> }}                  
        
        // y = 0
        cylinder { <0.3, y1, 0>, <0.3, y1, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <0.9, y1, 0>, <0.9, y1, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.5, y1, 0>, <1.5, y1, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        
        // y = 0.5196         
        cylinder { <0.0, y2, 0>, <0.0, y2, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <0.6, y2, 0>, <0.6, y2, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.2, y2, 0>, <1.2, y2, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.8, y2, 0>, <1.8, y2, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        
        // y = 1.0392        
        cylinder { <0.3, y3, 0>, <0.3, y3, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <0.9, y3, 0>, <0.9, y3, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.5, y3, 0>, <1.5, y3, 0.3>, .2 pigment { color rgb<1, 0, 0> }} 
        
        // y = 1.5576        
        cylinder { <0.0, y4, 0>, <0.0, y4, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <0.6, y4, 0>, <0.6, y4, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.2, y4, 0>, <1.2, y4, 0.3>, .2 pigment { color rgb<1, 0, 0> }}
        cylinder { <1.8, y4, 0>, <1.8, y4, 0.3>, .2 pigment { color rgb<1, 0, 0> }}        
        }
    
#declare GATE = merge{
          
        box { <0,0,0.3>, <1.8,0.5196,0.4> texture{T_Gold_1A}}        
        
        cylinder { <0.0, 0.5196, 0>, <0.0, 0.5196, 0.4>, .2 texture{T_Gold_1A}}         
        cylinder { <0.6, 0.5196, 0>, <0.6, 0.5196, 0.4>, .2 texture{T_Gold_1A}}
        cylinder { <1.2, 0.5196, 0>, <1.2, 0.5196, 0.4>, .2 texture{T_Gold_1A}}

        difference{
                cylinder { <1.8, 0.5196, 0>, <1.8, 0.5196, 0.4>, .2 texture{T_Gold_1A}}        
                //box{ <1.8001,0,-0.0001>, <2.2,1,0.4001>  texture{T_Gold_1A}}
        }

                                 
        difference{
                #local x0 = 0.3;
                #local y0 = 0.0;
                #local r  = 0.2;
                #local h  = 0.4;
        
                // Don't change.
                #local x_I = xI( x0, r );
                #local x_F = xF( x0, r );
                #local y_I = yI( y0, r );
                #local y_F = yF( y0, r );
                #local z_I = zI( h );
                #local z_F = zF( h );
        
                cylinder{ <x0,y0,0>, <x0,y0,h>, r  texture{T_Gold_1A}}
                box{ <x_I,y_I,z_I>, <x_F,y_F,z_F>  texture{T_Gold_1A}}
        }     
   
        difference{
                #local x0 = 0.9;
                #local y0 = 0.0;
                #local r  = 0.2;
                #local h  = 0.4;
        
                // Don't change.
                #local x_I = xI( x0, r );
                #local x_F = xF( x0, r );
                #local y_I = yI( y0, r );
                #local y_F = yF( y0, r );
                #local z_I = zI( h );
                #local z_F = zF( h );
        
                cylinder{ <x0,y0,0>, <x0,y0,h>, r  texture{T_Gold_1A}}
                box{ <x_I,y_I,z_I>, <x_F,y_F,z_F>  texture{T_Gold_1A}}
        }     

        difference{
                #local x0 = 1.5;
                #local y0 = 0.0;
                #local r  = 0.2;
                #local h  = 0.4;
        
                // Don't change.
                #local x_I = xI( x0, r );
                #local x_F = xF( x0, r );
                #local y_I = yI( y0, r );
                #local y_F = yF( y0, r );
                #local z_I = zI( h );
                #local z_F = zF( h );
        
                cylinder{ <x0,y0,0>, <x0,y0,h>, r  texture{T_Gold_1A}}
                box{ <x_I,y_I,z_I>, <x_F,y_F,z_F>  texture{T_Gold_1A}}
        }    
}
   
SAMPLE
PMMA
GATE      

    