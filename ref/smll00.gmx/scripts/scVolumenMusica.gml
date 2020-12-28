///Cambia el volumen de la m�sica

valor = sqrt( vol_mus/10 );

sound_volume( msExterior,        valor );
sound_volume( msSubsuelo,        valor );
sound_volume( msEstrella,        valor );
sound_volume( msCastillo,        valor );
sound_volume( msNivelCompletado, valor );
sound_volume( msMundoCompletado, valor );
sound_volume( msFinal,           valor );
sound_volume( msAdvertencia,     valor );
sound_volume( msExterior2,       valor );
sound_volume( msSubsuelo2,       valor );
sound_volume( msEstrella2,       valor );
sound_volume( msCastillo2,       valor );
sound_volume( msPerder,          valor );
sound_volume( msPerder2,         valor );

ini_open( "smll.ini" );
ini_write_real( "Sonido", "musica", vol_mus );
ini_close();
