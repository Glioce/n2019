///Si est� tocando el piso

if( izq ) //acelerar a la izquierda
{
    lado = 0;
    if( atq ) velh = max( velh-acel1, -velhmax2 );
    else      velh = max( velh-acel1, -velhmax1 );
    sprite_index = spCorre[lado];
}
if( der ) //acelerar a la derecha
{
    lado = 1;
    if( atq ) velh = min( velh+acel1, velhmax2 );
    else      velh = min( velh+acel1, velhmax1 );
    sprite_index = spCorre[lado];
}
if( !izq and !der ) //detenerse
{
    if( velh > 0 ) velh = max( velh-acel1, 0 );
    if( velh < 0 ) velh = min( velh+acel1, 0 );
    if( velh == 0 ) sprite_index = spPara[lado];
}
if( velh>0 and lado==0 ) //derrapar viendo a la izquierda
{
    velh = max( velh-acel1, 0 );
    sprite_index = spDerrp[lado];
}
if( velh<0 and lado==1 ) //derrapar viendo a la derecha
{
    velh = min( velh+acel1, 0 );
    sprite_index = spDerrp[lado];
}
//------------------------------------
if( slt_prs ) velv = -velsalto; //saltar
