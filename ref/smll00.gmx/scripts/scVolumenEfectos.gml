///Cambia el volumen de los efectos de sonido

valor = sqrt( vol_efc/10);

sound_volume( snAliento,   valor );
sound_volume( snAtacar,    valor );
sound_volume( snCaer,      valor );
sound_volume( snCaja,      valor );
sound_volume( snEscalera,  valor );
sound_volume( snExplosion, valor );
sound_volume( snMeta,      valor );
sound_volume( snMoneda,    valor );
sound_volume( snPatear,    valor );
sound_volume( snPausa,     valor );
sound_volume( snPisar,     valor );
sound_volume( snPoder,     valor );
sound_volume( snRomper,    valor );
sound_volume( snSalto1,    valor );
sound_volume( snSalto2,    valor );
sound_volume( snTopar,     valor );
sound_volume( snTubo,      valor );
sound_volume( snVida,      valor );

ini_open( "smll.ini" );
ini_write_real( "Sonido", "efectos", vol_efc );
ini_close();
