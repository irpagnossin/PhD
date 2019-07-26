#include "colors.inc"
#include "textures.inc"
#include "golds.inc"
#include "metals.inc"
//FUNDO
//background { color Gray90 }
background { color White }
//ILUMINAÇÃO 
//light_source { <50, 30, 100> White }
//light_source { <20, 30, 50> White }
light_source { <100, 100, 200> White }
light_source { <100, 100, 200> White }  
//CÂMERA
camera {
location <35, 50, 35>
look_at <0, -7, 0> }
//substrato
//box {<-20,0,-20>, <20,8.9,20> pigment { color rgb<0.9, 0.9, 0.9> }}  
//box {<-20,0,-20>, <20,8.9,20> pigment { color rgb<0.9, 0.5, 0.5> }}
//box {<-20,8.9,-20>, <20,9,20> pigment { color rgb<0.9, 0.5, 0.5> }}
box {<-20,0,-20>, <20,8.9,20> pigment { color rgb<0, 0.9, 0.9> }}
box {<-20,8.9,-20>, <20,9,20> pigment { color rgb<0, 0.9, 0.9> }}
//barra
box {<-18,9,-3>, <18,10,3> pigment { color rgb<0.9, 0.5, 0.5> }} 
//contatos de corrente
box {<-18,9,-5>, <-12,10,5> pigment { color rgb<0.8, 0.5, 0.5> }}
box {<18,9,-5>, <12,10,5> pigment { color rgb<0.8, 0.5, 0.5> }}
//canais de voltagem
box {<10,9,-6>, <9.5,10,6> pigment { color rgb<0.8, 0.5, 0.5> }}
box {<-10,9,-6>, <-9.5,10,6> pigment { color rgb<0.8, 0.5, 0.5> }}
//contatos de voltagem
box {<-16,9,-6>, <-9.5,10,-15> pigment { color rgb<0.8, 0.5, 0.5> }}
box {<16,9,-6>, <9.5,10,-15> pigment { color rgb<0.8, 0.5, 0.5> }}
box {<16,9,6>, <9.5,10,15> pigment { color rgb<0.8, 0.5, 0.5> }}
box {<-16,9,6>, <-9.5,10,15> pigment { color rgb<0.8, 0.5, 0.5> }}
//porta
box {< -7.9, 10, -3>, <7.9,10.2,3> texture{T_Gold_5B}}
box {< -7.9,  9, -3>, <7.9,10.2,-3.2> texture{T_Gold_5B}}
box {< -7.9,  9, -3>, <7.9,9.2,-4.5> texture{T_Gold_5B}}
box {< -7.9,  9,  3>, <7.9,10.2,3.2> texture{T_Gold_5B}}
cylinder {<0,0>,<0,.2>,8.5 texture{T_Gold_5B} translate 9*y}
//setas
#declare seta1=lathe{linear_spline 5,<0,2>,<1,4>,<0.5,4>,<0.5,8>,<0,8> pigment{Red}finish{ambient.3 phong.75}} 
#declare seta2=lathe{linear_spline 5,<0,2>,<.5,4>,<0.25,4>,<0.25,8>,<0,8> pigment{Green}finish{ambient.3 phong.75}} 
object { seta1 rotate 180*x translate 21*y} //translate 15*x}
object { seta2 rotate -90*z translate 11*y translate 5*x}
//esferas de contato
quadric{<2,15,1>,<0,0,0>,<0,0,0>,-9 pigment {P_Silver1} translate 10*y translate 16*x}
quadric{<2,15,1>,<0,0,0>,<0,0,0>,-9 pigment {P_Silver1} translate 10*y translate -16*x}
quadric{<1,15,1>,<0,0,0>,<0,0,0>,-5 pigment {P_Silver1} translate 10*y translate -14*x translate -13*z}
quadric{<1,15,1>,<0,0,0>,<0,0,0>,-5 pigment {P_Silver1} translate 10*y translate -14*x translate 13*z}
quadric{<1,15,1>,<0,0,0>,<0,0,0>,-5 pigment {P_Silver1} translate 10*y translate 14*x translate -13*z}
quadric{<1,15,1>,<0,0,0>,<0,0,0>,-5 pigment {P_Silver1} translate 10*y translate 14*x translate 13*z}
quadric{<1,15,1>,<0,0,0>,<0,0,0>,-5 pigment {P_Silver1} translate 9.2*y translate 6*z}
//terminais de contato
cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate 90*x translate 9.5*y translate 7*z}
cylinder{<0,0>,<0,6>,.3 pigment{P_Chrome4} rotate 90*x translate 10.2*y translate 14*z translate 14*x}
cylinder{<0,0>,<0,6>,.3 pigment{P_Chrome4} rotate 90*x translate 10.2*y translate 14*z translate -14*x}
cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate 90*x rotate 90*y translate 10.2*y translate 13.8*x translate 20*z}
cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate -90*x rotate 90*y translate 10.2*y translate -13.8*x translate 20*z}

cylinder{<0,0>,<0,8>,.3 pigment{P_Chrome4} rotate 90*x translate 10.2*y translate -20*z translate 14*x}
cylinder{<0,0>,<0,8>,.3 pigment{P_Chrome4} rotate 90*x translate 10.2*y translate -20*z translate -14*x}
cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate 90*x rotate 90*y translate 10.2*y translate 13.8*x translate -20*z}
cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate -90*x rotate 90*y translate 10.2*y translate -13.8*x translate -20*z}

cylinder{<0,0>,<0,20>,.3 pigment{P_Chrome4} rotate 90*x rotate 90*y translate 10.2*y translate 17*x}
cylinder{<0,0>,<0,35>,.3 pigment{P_Chrome4} rotate 90*x rotate 90*y translate 10.2*y translate -50*x}
