///Obtiener eventos globales de control

//Izquierda o derecha, pero no ambas
if( izq and der ) {izq = 0; der = 0; }

//Presi�n de los botones
izq_prs = (izq and !izq_prv);
der_prs = (der and !der_prv);
slt_prs = (slt and !slt_prv);
atq_prs = (atq and !atq_prv);
psa_prs = (psa and !psa_prv);

//Liberaci�n de los botones
izq_lib = (!izq and izq_prv);
der_lib = (!der and der_prv);
slt_lib = (!slt and slt_prv);
atq_lib = (!atq and atq_prv);
psa_lib = (!psa and psa_prv);

//Estado previo de los botones
izq_prv = izq;
der_prv = der;
slt_prv = slt;
atq_prv = atq;
psa_prv = psa;
