#include "colors.inc" 
#include "textures.inc"
#include "golds.inc"
#include "metals.inc"
#include "woods.inc"

// Axis reference
cone{ <0,3,0>, 1, <5,3,0>, 0 pigment{color rgb<1,0,0>} } // x-axis 
cone{ <0,3,0>, 1, <0,8,0>, 0 pigment{color rgb<0,0,1>} } // y-axis
cone{ <0,3,0>, 1, <0,3,5>, 0 pigment{color rgb<0,1,0>} } // z-axis
                                                         
// This set of x?? and y?? defines all corners on the Hall bar.
#declare x01 =  0.00;
#declare x02 =  8.00;
#declare x03 =  9.00;
#declare x04 = 13.75;
#declare x05 = 14.00;
#declare x06 = 16.00;
#declare x07 = 16.25;
#declare x08 = 21.00;
#declare x09 = 22.00;
#declare x10 = 30.00;
        
#declare y01 = -3.00;
#declare y02 =  0.00;
#declare y03 =  3.00;
#declare y04 =  4.00;
#declare y05 =  7.00;
#declare y06 =  7.80;
#declare y07 =  8.00;
#declare y08 = 10.00;
#declare y09 = 11.00;
#declare y10 = 13.00;
#declare y11 = 13.20;
#declare y12 = 14.00;
#declare y13 = 17.00;
#declare y14 = 18.00;
#declare y15 = 21.00;
#declare y16 = 24.00;
        
#declare zI  =  0.00;
#declare zF  =  1.00;  

#declare sample_texture = texture{ Cork}//T_Wood10 }
                                                                                                                 
// Substrate definition.                                                                                        
#declare substrate = box{ <-2.5,-5.5,-5.0>, <32.5,26.5,0> texture{ sample_texture } }

// Hall-bar definition.
#declare bH = union{
                                
        box{ <x01,y02,zI>, <x02,y05,zF> }
        box{ <x03,y01,zI>, <x08,y03,zF> }
        box{ <x09,y02,zI>, <x10,y05,zF> }
        box{ <x05,y02,zI>, <x06,y15,zF> } 
        box{ <x01,y04,zI>, <x04,y08,zF> }
        box{ <x07,y04,zI>, <x10,y08,zF> }
        box{ <x03,y06,zI>, <x08,y07,zF> }  
        box{ <x01,y09,zI>, <x04,y13,zF> }
        box{ <x07,y09,zI>, <x10,y13,zF> }
        box{ <x03,y10,zI>, <x08,y11,zF> } 
        box{ <x01,y12,zI>, <x02,y15,zF> }
        box{ <x09,y12,zI>, <x10,y15,zF> }
        box{ <x03,y14,zI>, <x08,y16,zF> }
        
        texture{ sample_texture }
}                                                                             
 
// Gate definition.
#declare gate = union{
                                     
        #local gate_radius    = 5.00;                                     
        #local gate_thickness = 0.20;
        #local gate_texture   = texture{ T_Gold_5B }
                                
        // Upper circle.
        difference{
                cylinder { <15,10.5,zF>, <15,10.5,zF + gate_thickness>, gate_radius }
                box { <x02,y08,zF-0.0001>, <x05,y09,zF+gate_thickness+0.0001> }                
                box { <x04,y04,zF-0.0001>, <x05,y06,zF+gate_thickness+0.0001> }
                box { <x04,y07,zF-0.0001>, <x05,y10,zF+gate_thickness+0.0001> }
                box { <x04,y11,zF-0.0001>, <x05,y13,zF+gate_thickness+0.0001> }
                
                box { <x06,y08,zF-0.0001>, <x09,y09,zF+gate_thickness+0.0001> }
                box { <x06,y04,zF-0.0001>, <x07,y06,zF+gate_thickness+0.0001> }
                box { <x06,y07,zF-0.0001>, <x07,y10,zF+gate_thickness+0.0001> }
                box { <x06,y11,zF-0.0001>, <x07,y13,zF+gate_thickness+0.0001> }                
        }                                                                    
        
        // Lower circle
        cylinder { <15,10.5,zI>, <15,10.5,zI + gate_thickness>, gate_radius }
        
          
        // The vertical walls.
        #local delta = 0.01;
        box { <15-gate_radius,y09,zF>, <x04+delta,y09-delta,gate_thickness> }
        box { <15-gate_radius,y08,zF>, <x04+delta,y08+delta,gate_thickness> }
        box { <15+gate_radius,y08,zF>, <x07-delta,y08+delta,gate_thickness> }
        box { <15+gate_radius,y09,zF>, <x07-delta,y09-delta,gate_thickness> }
        
        box { <x04,y07,zF>, <x05,y07+delta,gate_thickness> }
        box { <x04,y10,zF>, <x05,y10-delta,gate_thickness> }
        box { <x07,y07,zF>, <x06,y07+delta,gate_thickness> }
        box { <x07,y10,zF>, <x06,y10-delta,gate_thickness> }
        
        box { <x04,y07,zF>, <x04+delta,y08+delta,gate_thickness> }
        box { <x04,y10,zF>, <x04+delta,y09-delta,gate_thickness> }
        box { <x07,y07,zF>, <x07-delta,y08+delta,gate_thickness> }
        box { <x07,y10,zF>, <x07-delta,y09-delta,gate_thickness> }
                                                                 
        box { <x06,y07,zF>, <x06+delta,y10-delta,gate_thickness> }
        box { <x05,y07,zF>, <x05-delta,y10,gate_thickness> }                                                                                                                                  
        
        box { <x04,y11,zF>, <x04+delta,15.3412,gate_thickness> }
        box { <x05,y11,zF>, <x05-delta,15.3992,gate_thickness> }
        box { <x04,y11,zF>, <x05,y11+delta,gate_thickness> }
                                 
        box { <x04,y06,zF>, <x04+delta,5.6588,gate_thickness> }
        box { <x05,y06,zF>, <x05-delta,5.6010,gate_thickness> }
        box { <x04,y06,zF>, <x05,y06-delta,gate_thickness> }                         
        
        box { <x07,y11,zF>, <x07-delta,15.3412,gate_thickness> }
        box { <x06,y11,zF>, <x06+delta,15.3992,gate_thickness> }
        box { <x07,y11,zF>, <x06,y11+delta,gate_thickness> }
          
        box { <x07,y06,zF>, <x07-delta,5.6588,gate_thickness> }
        box { <x06,y06,zF>, <x06+delta,5.6010,gate_thickness> }
        box { <x06,y06,zF>, <x07,y06-delta,gate_thickness> }                         
        
        texture{ gate_texture }
}                         
 
// Contacts and terminals definition.
#declare contacts = union{
    
    // Wire diameter.                     
    #local d = 0.3;                         
    
    // This macro builds one single contact at (x0,y0).
    // Each contact is an elipsoid given by (x - x0)^2/rX^2 + (y - y0)^2/rY^2 + (z - z0)^2/rZ^2 = 1.
    // Converting this equation to the form requested by the command "quadric" one obtains the A, B... J given below.
    #macro contact( x0, y0 )
        union{        
            #local z0 = 1.00;            
            #local rX = 2.5;
            #local rY = 2.5;
            #local rZ = 0.5;
        
            #local A = pow(rY*rZ,2);
            #local B = pow(rX*rZ,2);
            #local C = pow(rX*rY,2);       
            #local D = 0;
            #local E = 0;
            #local F = 0;
            #local G = -2*x0*A;
            #local H = -2*y0*B;
            #local I = -2*z0*C;
            #local J = pow(x0*rY*rZ,2)+pow(y0*rX*rZ,2)+pow(z0*rX*rY,2)-pow(rX*rY*rZ,2);
        
            quadric{ <A,B,C>, <D,E,F>, <G,H,I>, J }
        }
    #end 

    // Contact #1 (source)
    contact( x05 + 1.0, y01 + 2.5 )    
    // Contact #2
    contact( x01 + 2.5, y02 + 2.5 ) 
    // Contact #3
    contact( x01 + 2.5, y15 - 2.5 )
    // Contact #4 (drain)
    contact( x05 + 1.0, y16 - 2.5 )    
    // Contact #5
    contact( x10 - 2.5, y15 - 2.5 )    
    // Contact #6
    contact( x10 - 2.5, y02 + 2.5 )   
    // Contact #7 (gate)
    contact( x07 + 2.5, y08 - 2.5 )
                                                       
    // Wire of contact #1
    cylinder{ <x05 + 1.0, y01 + 2.5, 1.0>, <x05 + 1.0, y01 -  5.5, 1.0>, d }                 
    // Wire of contact #2                
    cylinder{ <x01 + 2.5, y02 + 2.5, 1.0>, <x01 - 5.5, y02 +  2.5, 1.0>, d }
    cylinder{ <x01 - 5.5, y02 + 2.5, 1.0>, <x01 - 5.5, y02 -  5.5, 1.0>, d }
    sphere{ <x01 - 5.5, y02 + 2.5, 1.0>, d }
    // Wire of contact #3
    cylinder{ <x01 + 2.5, y15 - 2.5, 1.0>, <x01 - 5.5, y15 -  2.5, 1.0>, d } 
    cylinder{ <x01 - 5.5, y15 - 2.5, 1.0>, <x01 - 5.5, y15 +  5.5, 1.0>, d }
    sphere{ <x01 - 5.5, y15 - 2.5, 1.0>, d }
    // Wire of contact #4
    cylinder{ <x05 + 1.0, y16 - 2.5, 1.0>, <x05 + 1.0, y16 + 10.5, 1.0>, d }
    // Wire of contact #5
    cylinder{ <x10 - 2.5, y15 - 2.5, 1.0>, <x10 + 5.5, y15 -  2.5, 1.0>, d }
    cylinder{ <x10 + 5.5, y15 - 2.5, 1.0>, <x10 + 5.5, y15 +  5.5, 1.0>, d }    
    sphere{ <x10 + 5.5, y15 - 2.5, 1.0>, d }
    // Wire of contact #6
    cylinder{ <x10 - 2.5, y02 + 2.5, 1.0>, <x10 + 5.5, y02 +  2.5, 1.0>, d }
    cylinder{ <x10 + 5.5, y02 + 2.5, 1.0>, <x10 + 5.5, y02 -  5.5, 1.0>, d }
    sphere{ <x10 + 5.5, y02 + 2.5, 1.0>, d }                             
    // Wire of contact #7
    cylinder{ <x07 + 2.5, y08 - 2.5, 1.0>, <38.0, y08 - 2.5, 1.0>, d }   
                                
    texture { Aluminum }
}

// Magnetic field arrow definition.
#declare B = union{                                    
    cylinder{ <15.0, 10.5, 2.0>, <15.0, 10.5, 5.0>, 0.4 }
    cone{ <15.0, 10.5, 5.0>, 0.7, <15.0, 10.5, 7.0>, 0.0 }
    pigment{ color rgb<1,0,0> }
} 

// Electric current arrow definition.
#declare I = union{
    cylinder{ <15.0, 30.0, 3.0>, <15.0, 26.0, 3.0>, 0.4 }
    cone{ <15.0, 26.0, 3.0>, 0.7, <15.0, 24.0, 3.0>, 0.0 }
    pigment{ color rgb<1,1,0> }
}
  
// -----------------------------
// Putting the objects in scene.
// -----------------------------
    
// Background.
background { color White }           

// Illumination. 
light_source{ <-50, 100, -10> White fade_distance 50 fade_power 2}
light_source{ < 50,  50,   0> White fade_distance 75 fade_power 2}
light_source{ < 50,  0,   -20> White fade_distance 40 fade_power 2 }

// Camera.
camera { location < 40, 40, -15> look_at  < 20, 10, -20> }
        
// The objects.        
object{ substrate rotate -90*x rotate 45*y }      
object{ bH        rotate -90*x rotate 45*y }
object{ gate      rotate -90*x rotate 45*y }
object{ contacts  rotate -90*x rotate 45*y }        
object{ B         rotate -90*x rotate 45*y }
object{ I         rotate -90*x rotate 45*y }