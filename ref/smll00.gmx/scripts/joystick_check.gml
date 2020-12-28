///Similar a keyboard_check

//argument0: �ndice del joystick
//argument1: constante (a evaluar)

//El �ndice es un argumento para hacer el scrip de uso m�s general.

//Es un bot�n
if( argument1 >= j_button1 and argument1 <= j_button32 )
    return joystick_check_button( argument0, argument1 );
    
//Es un eje o POV
switch( argument1 )
{
    case j_xp: return ( joystick_xpos(argument0) >=  0.5 );
    case j_yp: return ( joystick_ypos(argument0) >=  0.5 );
    case j_zp: return ( joystick_zpos(argument0) >=  0.5 );
    case j_rp: return ( joystick_rpos(argument0) >=  0.5 );
    case j_up: return ( joystick_upos(argument0) >=  0.5 );
    case j_vp: return ( joystick_vpos(argument0) >=  0.5 );
    case j_xn: return ( joystick_xpos(argument0) <= -0.5 );
    case j_yn: return ( joystick_ypos(argument0) <= -0.5 );
    case j_zn: return ( joystick_zpos(argument0) <= -0.5 );
    case j_rn: return ( joystick_rpos(argument0) <= -0.5 );
    case j_un: return ( joystick_upos(argument0) <= -0.5 );
    case j_vn: return ( joystick_vpos(argument0) <= -0.5 );
    
    case j_pov0  : return ( joystick_pov(argument0) == 0 );
    case j_pov90 : return ( joystick_pov(argument0) == 90 );
    case j_pov180: return ( joystick_pov(argument0) == 180 );
    case j_pov270: return ( joystick_pov(argument0) == 270 );
    
    default: return false; //o -1
}
