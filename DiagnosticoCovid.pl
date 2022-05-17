
 % Delcaraci�n de Librearias en prolog

:- use_module(library(pce)).
:- pce_image_directory('./Imagenes').
:- pce_image_directory('./Imagenes/Preguntas').
:- use_module(library(pce_style_item)).

%   Conjunto de imagenes a utilizar

resource(fondo,image,image('Vacuna1.jpg')).
resource(fondo2,image,image('fondo-corazon.jpg')).
resource(fondoMedidas,image,image('protocolo-Fondo2.jpg')).
resource(fondoPreguntas,image,image('f_preguntas.jfif')).
resource(fondoLavadoManos,image,image('f_prevenicion.jpeg')).
resource(fondoDistanciamiento,image,image('fondo-Distanciamiento.jpg')).
resource(fondoMascarilla,image,image('recomendaciones1.jpg')).
resource(fondoGel,image,image('fondo-Gel.jpg')).
resource(fondoIntegrantes,image,image('fondo-Integrantes.jpg')).
resource(logoisi,image,image('LogoISI.jpg')).
resource(logounasam,image,image('LogoUnasam.jpg')).
resource(iconoSalir,image,image('salir.gif')).
resource(iconoIniciar,image,image('check.jpg')).
resource(iconoSiguiente,image,image('IconSiguiente.jpg')).
resource(iconoAtras,image,image('iconoAtras.jpg')).
resource(iconoIntegrantes,image,image('integrantes.jpg')).

%%%%Imagenes para las preguntas

/*resource(fiebreMayor37,image,image('fiebreMayor37.jpg')).
resource(ninoDolorGarganta,image,image('ni�oDolorGarganta.jpg')).
resource(ninosConjuntivitis,image,image('ni�osConjuntivitis.jpg')).
resource(ninosDiarrea,image,image('ni�osDiarrea.jpg')).
resource(ninosDolorCabeza1,image,image('ni�osDolorCabeza1.jpg')).
resource(ninosPerdidaGusto,image,image('ni�osPerdidaGusto.jpg')).
resource(ninosPerdidaOlfato,image,image('ni�osPerdidaOlfato.jpg')).
resource(ninosProblemaRespiracion,image,image('ni�osProblemaRespiracion.jpg')).
resource(ninosTosSeca,image,image('ni�osTosSeca.jpg')).
resource(ninofiebre,image,image('ni�ofiebre.jpg')).
resource(ninosEscalofrio,image,image('ni�osEscalofrio.jpg')).
resource(ninosDolorMuscular,image,image('ni�osDolorMuscular.jpg')).
resource(ninoDolorGarganta2,image,image('ni�oDolorGarganta2.jpg')).
resource(ninosGoteoNasal,image,image('ni�osGoteoNasal.jpg')).
resource(ninosTos,image,image('ni�osTos.jpg')).
resource(ninosSinApetito,image,image('ni�osSinApetito.jpg')).
resource(ninosCansado,image,image('ni�osCansado.jpg')).
resource(ninosCosquilleoGarganta,image,image('ni�osCosquilleoGarganta.jpg')).
resource(ninosCongestion,image,image('ni�osCongestion.jpg')).
resource(ninosEstornudo,image,image('ni�osEstornudo.jpg')).
resource(ninosBuenApetito,image,image('ni�osBuenApetito.jpg')).
resource(ninofiebreBaja,image,image('ni�ofiebreBaja.jpg')).
resource(ninosBuenaEnergia,image,image('ni�osBuenaEnergia.jpg')).*/


/*nueva_imagen(Ventana, Imagen):-new(Figura, figure),
                                new(Bitmap, bitmap(resource(Imagen),@on)),     %On ---> Transparencia
                                send(Bitmap, name, 1),
                                send(Figura, display, Bitmap),
                                send(Figura, status, 1),
                                send(Ventana, display,Figura,point(0,0)).  */

% M�todo para cargar imagenes
nueva_imagen(Ventana, Imagen, Posicion):-new(Figura,  figure),
                                                 new(Bitmap, bitmap(resource(Imagen),@on)),
                                                 send(Bitmap, name, 1),
                                                 send(Figura, display, Bitmap),
                                                 send(Figura, status, 1),
                                                 send(Ventana, display, Figura, Posicion).

% Metodo principal para iniciar la interfaz grafica, declaracion de
% botones, labels, y la pocicion en pantalla.


ventana_inicio:- new(D,dialog('Bienvenido al Sistema Experto Diagnosticador de Arritmias Cardicas')),

          new(Texto1,label(name,'SISTEMA EXPERTO DIAGNOSTICO DE ARRITMIA CARDIACAS',font('arial','bold',18))),
          new(Texto2,label(name,'SISTEMA EXPERTO DIAGNOSTICO DE ARRITMIA CARDIACAS',font('arial','bold',18))),
          new(Texto3,label(name,'    UNIVERSIDAD NACIONAL SANTIAGO\n                  ANTUNEZ DE MAYOLO \n\n\n\n\n
                FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORM�TICA',font('arial','bold',20))),
          new(Texto4,label(name,'    UNIVERSIDAD NACIONAL SANTIAGO\n                  ANTUNEZ DE MAYOLO \n\n\n\n\n
                FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORM�TICA',font('arial','bold',20))),

          new(BtnIniciar,button('INICIAR ____',and(message(@prolog,ventana_principal),message(D,destroy)))),
          new(BtnSalir1,button('SALIR____',and(message(D,destroy)))),
          new(BtnIntegrantes,button('INTEGRANTES_______',message(@prolog,ventana_Integrantes))),
          
          nueva_imagen(D,fondo,point(0,0)),
          nueva_imagen(D,logounasam,point(185,160)),
          nueva_imagen(D,logoisi,point(420,160)),
          


          send(D,display,Texto1,point(60,29)),
          send(D,display,Texto2,point(63,30)),
          send(Texto1,colour(darkred)),
          send(Texto2,colour(white)),

          send(D,display,Texto3,point(115,80)),
          send(D,display,Texto4,point(118,81)),
          send(Texto3,colour(black)),
          send(Texto4,colour(white)),
          %send(D,background(red)),

          send(D,display,BtnIniciar,point(260,390)),
          nueva_imagen(D,iconoSiguiente,point(320,391)),
          send(BtnIniciar,font(bold)),

          send(D,display,BtnSalir1,point(360,392)),
          nueva_imagen(D,iconoSalir,point(420,395)),
          send(BtnSalir1,font(bold)),
          
          send(D,display,BtnIntegrantes,point(290,428)),
          nueva_imagen(D,iconoIntegrantes,point(390,430)),
          send(BtnIntegrantes,font(bold)),
          
          send(D,height(450)),
          send(D,width(720)),
          send(D,open_centered).
          :-ventana_inicio.
          
          
          
%%%%%%%%%%%%%%%%%%%%%%%%%%   INTEGRANTES         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_Integrantes:-new(DIntegrantes,dialog('Integrantes')),
                     new(TxtIntTitulo,label(name,'INTEGRANTES',font('arial','bold',12))),
                     new(TxtIntTexto,label(name,'                     1. Ayala Flores Leo \n
                     2. Magui�a Chavez Nastasha \n
                     3. Melgarejo Pr�ncipe Jescenia \n
                     4. Obregon Depaz Xelene \n
                     5. Pajuelo Morales Arturo\n
                     6. Pineda Quispe Gonzalo \n
                     7. R�mac Quispe Estefany \n
                     8 Rodriguez Vargas Gustavo \n',font('arial','bold',10))),
                     new(BtnIntSalir,button('___________Salir________',message(DIntegrantes,destroy))),
                     
                      nueva_imagen(DIntegrantes,fondoIntegrantes,point(0,0)),
                     
                     send(DIntegrantes,display,TxtIntTitulo,point(150,20)),
                     send(TxtIntTitulo,colour(white)),
                     send(DIntegrantes,display,TxtIntTexto,point(60,75)),
                     send(TxtIntTexto,colour(white)),
                     send(DIntegrantes,display,BtnIntSalir,point(155,250)),
                     nueva_imagen(DIntegrantes,iconoSalir,point(163,254)),
                     
                     send(DIntegrantes,height(300)),
                     send(DIntegrantes,width(400)),
                     send(DIntegrantes,open_centered).




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_principal:- new(MAIN,dialog('Bienvenido al Sistema Experto Diagnosticador de Arritmias Cardiacas')),

          new(Texto1,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',20))),
          new(Texto2,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',20))),
          new(@txt1,label(name,'ARRITIMIAS CARDIACAS',font('arial','bold',14))),
          new(@txt2,label(name,'            \n"DIA MUNDIAL DEL CORAZON - 29 DE SEPTIEMBRE " \nLe pedimos que use el coraz�n para vencer las enfermedades \ncardiacas. Por la sociedad, por tus seres queridos y por ti.',font('arial','bold',12))),
          new(BtnConsultaGeneral,button('CONSULTA GENERAL__________________',message(@prolog,botones2))),
          new(BtnConsultaNinos,button('TIPO DE ARRITMIA ____________________',message(@prolog,botones))),
          %new(BtnPrevencion,button('GRAVEDAD ENFERMEDAD________________',message(@prolog,botones3))),
          new(BtnProtocolo,button('SUGERENCIAS___________________________',and(message(@prolog,ventana_medidasBioseg_principal),message(MAIN,destroy),
          message(@txt1,free),message(@txt2,free)))),
          new(BtnSalir2,button('SALIR_________________________________________',and(message(MAIN,destroy)))),


          nueva_imagen(MAIN,fondo2,point(0,0)),

          send(MAIN,display,Texto1,point(30,31)),
          send(MAIN,display,Texto2,point(30,30)),
          send(Texto1,colour(darkred)),
          send(Texto2,colour(white)),


          send(MAIN,display,@txt1,point(350,105)),
          send(MAIN,display,@txt2,point(350,130)),
          send(@txt1,colour(white)),
          send(@txt2,colour(white)),
          
          %boton consulta general
          send(MAIN,display,BtnConsultaGeneral,point(50,130)),
          nueva_imagen(MAIN,iconoIniciar,point(240,131)),
          send(BtnConsultaGeneral,font(bold)),
          
          %boton tipo de arritmia
          send(MAIN,display,BtnConsultaNinos,point(50,205)),
          nueva_imagen(MAIN,iconoIniciar,point(240,207)),
          send(BtnConsultaNinos,font(bold)),

          %send(MAIN,display,BtnPrevencion,point(50,230)),
          %nueva_imagen(MAIN,iconoIniciar,point(240,230)),
          %send(BtnPrevencion,font(bold)),

          %boton de sugerecias
          send(MAIN,display,BtnProtocolo,point(50,280)),
          nueva_imagen(MAIN,iconoIniciar,point(240,282)),
          send(BtnProtocolo,font(bold)),

          send(MAIN,display,BtnSalir2,point(50,355)),
          nueva_imagen(MAIN,iconoSalir,point(242,358)),
          send(BtnSalir2,colour(red)),
          send(BtnSalir2,font(bold)),
          

          send(MAIN,height(550)),
          send(MAIN,width(800)),
          send(MAIN,open_centered).
          


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%           VENTANA PARA PROTOCOLO BIOSEGURIDAD  %%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_medidasBioseg_principal:-new(Dprotocolo,dialog('Sugerencias')),
                   %new(TxtMedTitulo,label(name,'PROTOCOLOS DE BIOSEGURIDAD',font('arial','bold',16))),
                   new(BtnMedManos,button('PREVENCIONES______________________',and(message(@prolog,ventana_lavadoMano),message(Dprotocolo,destroy)))),
                   new(BtnMedMascarilla,button('RECOMENDACIONES_______________',and(message(@prolog,ventana_usoMascarilla),message(Dprotocolo,destroy)))),
                   %new(BtnMedDistancia,button('Distanciamiento______________________',and(message(@prolog,ventana_Distanciamiento),message(Dprotocolo,destroy)))),
                   %new(BtnGel,button('Alcohol y Gel__________________________',and(message(@prolog,ventana_usoGel),message(Dprotocolo,destroy)))),
                   new(BtnVolverInicio,button('_____VOLVER INICIO',and(message(@prolog,ventana_principal),message(Dprotocolo,destroy)))),
                   
                   nueva_imagen(Dprotocolo,fondoMedidas,point(0,0)),
                    
                   %send(Dprotocolo,display,TxtMedTitulo,point(260,30)),
                   %send(TxtMedTitulo,colour(white)),
                   
                   send(Dprotocolo,display,BtnMedManos,point(40,200)),
                   send(BtnMedManos,font(bold)),
                   send(Dprotocolo,display,BtnMedMascarilla,point(40,300)),
                   send(BtnMedMascarilla,font(bold)),

                   %send(Dprotocolo,display,BtnMedDistancia,point(40,400)),
                   %send(BtnMedDistancia,font(bold)),
                   %send(Dprotocolo,display,BtnGel,point(40,460)),
                   %send(BtnGel,font(bold)),
                   send(Dprotocolo,display,BtnVolverInicio,point(10,50)),
                   send(BtnVolverInicio,font(bold)),
                   send(BtnVolverInicio,colour(black)),
                   
                   nueva_imagen(Dprotocolo,iconoSalir,point(12,52)),
                   
                   nueva_imagen(Dprotocolo,iconoIniciar,point(217,201)),
                   nueva_imagen(Dprotocolo,iconoIniciar,point(217,301)),
                   %nueva_imagen(Dprotocolo,iconoIniciar,point(217,401)),
                   %nueva_imagen(Dprotocolo,iconoIniciar,point(217,461)),
                   
                   send(Dprotocolo,height(550)),
                   send(Dprotocolo,width(800)),
                   send(Dprotocolo,open_centered).
                   
                   
                   
%CORRECTO LAVADO DE MANO - PREVENCION

ventana_lavadoMano:-new(DLavadoMano,dialog('Lavado correcto de las manos')),
                    new(BtnVolverInicio2,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DLavadoMano,destroy)))),
                    
                    nueva_imagen(DLavadoMano,fondoLavadoManos,point(0,0)),
                    
                    send(DLavadoMano,display,BtnVolverInicio2,point(70,513)),
                    nueva_imagen(DLavadoMano,iconoAtras,point(75,515)),

                    
                    send(DLavadoMano,width(800)),
                    send(DLavadoMano,height(550)),
                    send(DLavadoMano,open_centered).
                    
                    
%CORRECTO DISTANCIAMIENTO SOCIAL - RECOMENDACIONES

ventana_Distanciamiento:-new(Ddistanciamiento,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(Ddistanciamiento,destroy)))),

                    nueva_imagen(Ddistanciamiento,fondoDistanciamiento,point(0,0)),

                    send(Ddistanciamiento,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(Ddistanciamiento,iconoAtras,point(75,515)),


                    send(Ddistanciamiento,width(800)),
                    send(Ddistanciamiento,height(550)),
                    send(Ddistanciamiento,open_centered).


%CORRECTO CORRECTO USO DE MASCARILLA

ventana_usoMascarilla:-new(DUsoMascarilla,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DUsoMascarilla,destroy)))),

                    nueva_imagen(DUsoMascarilla,fondoMascarilla,point(0,0)),

                    send(DUsoMascarilla,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(DUsoMascarilla,iconoAtras,point(75,515)),


                    send(DUsoMascarilla,width(800)),
                    send(DUsoMascarilla,height(550)),
                    send(DUsoMascarilla,open_centered).

%CORRECTO  USO DEL ALCOHOL Y GEL

ventana_usoGel:-new(DUsoGel,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DUsoGel,destroy)))),

                    nueva_imagen(DUsoGel,fondoGel,point(0,0)),

                    send(DUsoGel,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(DUsoGel,iconoAtras,point(75,515)),


                    send(DUsoGel,width(800)),
                    send(DUsoGel,height(550)),
                    send(DUsoGel,open_centered).
                                 


%DIAGNOSTICO a la enfermedad  Ni�os


enfermedad_ninos('PELIGRO su hijo padece de COVID-19'):-covid,!.

enfermedad_ninos('Su hijo pareciera tener una gripe comun se
recomienda que visite un centro m�dico para
descartar el COVID-19'):-gripe,!.

enfermedad_ninos('Su hijo solo tiene un resfriado pero en
ocasiones tambi�n puede ser sintoma del
COVID-19 se recomienda visitar un centro
de salud o un especialista.'):-resfriado,!.

enfermedad_ninos('De haber presentado algunas de los
sintomas,se recomienda que visite a
un establecimiento de salud para descartar
indicios de la COVID 19').



%DIAGNOSTICO a la COVID19 - GENERAL


covid_general('PELIGRO!!! usted padece de Arritmia Cardiaca'):-genSiCovid,!.

covid_general('No tiene ARRITMIA CARDIACA pero de presentar
algunas de los sintomas,se recomienda
que visite a un establecimiento de salud
para descartar indicios de la ARRITMIA CARDIACA').


%DIAGNOSTICO GRAVEDAD - COVID19

/*   FUENTE DE LA INFORMACI�N
https://www.msdmanuals.com/es-pe/professional/enfermedades-infecciosas/virus-
respiratorios/coronavirus-y-s%C3%ADndromes-respiratorios-agudos-covid-19-mers-y-sars*/


gravedad_covid('CUIDADO!! TIENE UNA ENFERMEDAD LEVE,
si est� en casa se recomienda visitar
a un especialista o un establecimineto m�s
cercano.'):-covidLeve,!.

gravedad_covid('ADVERTENCIA!! TIENE UNA ENFERMEDAD MODERADA'):-covidModerada,!.

gravedad_covid('PELIGRO!! TIENE UNA ENFERMEDAD GRAVE'):-covidGrave,!.

gravedad_covid('PELIGRO!! TIENE UNA ENFERMEDAD CRITICA'):-covidCritica,!.

gravedad_covid('De  haber presentado
algunas de los sintomas,se recomienda
que visite a un establecimiento de salud
para su debido tratamiento').

/*
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Imagenes con preguntas%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Diagnostico COVID - Ni�os%%%%
id_imagen_preg('�Tiene fiebre m�s de 37 grados?','fiebreMayor37').
id_imagen_preg('�Tiene dolor de cabeza?','ninosDolorCabeza1').
id_imagen_preg('�Tiene dolor de garganta?','ninoDolorGarganta2').
id_imagen_preg('�Tiene problemas de respiraci�n?','ninosProblemaRespiracion').
id_imagen_preg('�Siente perdida del sentido del gusto?','ninosPerdidaGusto').
id_imagen_preg('�Siente perdida del sentido del olfato?','ninosPerdidaOlfato').
id_imagen_preg('�Tiene diarrea?','ninosDiarrea').
id_imagen_preg('�Tiene tos seca?','ninosTosSeca').
id_imagen_preg('�Tiene conjuntivitis?','ninosConjuntivitis').

%%%Diagnostico GRIPE - Ni�os%%%%

id_imagen_preg('�Siente escalofrios?','ninosEscalofrio').
id_imagen_preg('�Tiene dolor de cabeza y dolor muscular?','ninosDolorMuscular').
id_imagen_preg('�Tiene dolor de garganta?','ninoDolorGarganta2').
id_imagen_preg('�Tiene goteo nasal?','ninosGoteoNasal').
id_imagen_preg('�Tiene tos?','ninosTos').
id_imagen_preg('�Tiene fiebre?','ninofiebre').
id_imagen_preg('�No tiene apetito?','ninosSinApetito').
id_imagen_preg('�Se siente cansado?','ninosCansado').


%%%Diagnostico Resfrio - Ni�os%%%%
id_imagen_preg('�Tiene cosquilleo en la garganta?','ninosCosquilleoGarganta').
id_imagen_preg('�Tiene congesti�n o goteo nasal?','ninosCongestion').
id_imagen_preg('�Tiene estornudos?','ninosEstornudo').
id_imagen_preg('�Tiene un buen apetito?','ninosBuenApetito').
id_imagen_preg('�Su fiebre no es muy alta?','ninofiebreBaja').
id_imagen_preg('�Su nivel de energ�a es normal?','ninosBuenaEnergia').

*/


%PREGUNTAS PARA EL DIAGNOSTICO NI�OS

covid:- es_covid,
pregunta('�Tiene fiebre m�s de 37 grados?'),
pregunta('�Tiene dolor de cabeza?'),
pregunta('�Tiene dolor de garganta?'),
pregunta('�Tiene problemas de respiraci�n?'),
pregunta('�Siente perdida del sentido del gusto?'),
pregunta('�Siente perdida del sentido del olfato?'),
pregunta('�Tiene diarrea?'),
pregunta('�Tiene tos seca?'),
pregunta('�Tiene conjuntivitis?').

gripe:-es_gripe,
pregunta('�Siente escalofrios?'),
pregunta('�Tiene dolor de cabeza y dolor muscular?'),
pregunta('�Tiene dolor de garganta?'),
pregunta('�Tiene goteo nasal?'),
pregunta('�Tiene tos?'),
pregunta('�Tiene fiebre?'),
pregunta('�No tiene apetito?'),
pregunta('�Se siente cansado?').

resfriado:-es_resfriado,
pregunta('�Tiene cosquilleo en la garganta?'),
pregunta('�Tiene congesti�n o goteo nasal?'),
pregunta('�Tiene estornudos?'),
pregunta('�Tiene un buen apetito?'),
pregunta('�Su fiebre no es muy alta?'),
pregunta('�Su nivel de energ�a es normal?').

%PREGUNTAS PARA DIAGNOSTICO GENERAL

genSiCovid:-general_es_covid,
pregunta('�Tiene fiebre?'),
pregunta('�Tiene tos seca?'),
pregunta('�Se siente cansado?'),
pregunta('�Siente dolor en la garganta?'),
pregunta('�Siente que esta perdiendo el sentido del gusto?'),
pregunta('�Siente que esta perdiendo el sentido del olfato?').

%PREGUNTAS PARA DIAGNOSTICO DE LA GRAVEDAD DEL COVID

covidLeve:-es_leve,
pregunta('�Tiene fiebre?'),
pregunta('�Tine tos seca?'),
pregunta('�Se siente cansado?'),
pregunta('�Siente dolor en la garganta?'),
pregunta('�Siente que esta perdiendo el sentido del gusto?'),
pregunta('�Siente que esta perdiendo el sentido del olfato?').

covidModerada:-es_moderada,
pregunta('�Tiene una saturaci�n de ox�geno (SpO2) = 94%
en el aire ambiente al nivel del mar?').

covidGrave:-es_grave,
pregunta('�Tiene  frecuencia respiratoria>30 respiraciones por minuto?'),
pregunta('�Su SpO2<94% en el aire ambiente al nivel del mar?'),
pregunta('�(PaO2 / FiO2) < 300 mmHg o infiltrados pulmonares > 50%?').

covidCritica:-es_critica,
pregunta('�Tiene Choque septico?'),
pregunta('�Sufre de insuficiencia Respiratoria?'),
pregunta('�Tiene disfunci�n multiorg�nica?').


%identificador de enfermedad que dirige a las preguntas correspondientes

es_covid:-pregunta('�Tiene fiebre m�s de 37 grados?'),!.
es_gripe:-pregunta('�Siente escalofrios?'),!.
es_resfriado:-pregunta('�Tiene cosquilleo en la garganta?'),!.

general_es_covid:-pregunta('�Tiene fiebre?'),!.

es_leve:-pregunta('�Tiene fiebre?').
es_moderada:-pregunta('�Tiene una saturaci�n de ox�geno (SpO2) = 94%
en el aire ambiente al nivel del mar?').
es_grave:-pregunta('�Tiene  frecuencia respiratoria>30 respiraciones por minuto?').
es_critica:-pregunta('�Tiene Choque septico?').


/*proceso del diagnostico basado en preguntas de si y no, cuando el
usuario dice si, se pasa a la siguiente pregunta del mismo ramo, si
dice que no se pasa a la pregunta del siguiente ramo*/


:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Diagnostico sobre COVID-19')),
new(L2,label(texto,'Responde las siguientes preguntas')),
/*id_imagen_preg(Problema,Imagen),
nueva_imagen(Di,Imagen,point(0,0)),*/

new(La,label(prob,Problema,font('arial','bold',12))),
new(B1,button(si,and(message(Di,return,si)))),
new(B2,button(no,and(message(Di,return,no)))),

nueva_imagen(Di,fondoPreguntas,point(0,0)),

send(Di,gap,size(10,10)),
send(Di,append(L2)),
send(L2,colour(red)),
send(L2,font('bold')),
send(Di,append(La)),
send(Di,append(B1)),
send(Di,append(B2)),

send(Di,default_button,si),
send(Di,open_centered),get(Di,confirm,Answer),
write(Answer),send(Di,destroy),
((Answer==si)->assert(si(Problema));
assert(no(Problema)),fail).


% cada vez que se conteste una pregunta la pantalla se limpia para
% volver a preguntar

pregunta(S):-(si(S)->true; (no(S)->false; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.

% proceso de eleccion de acuerdo al diagnostico basado en las preguntas
% anteriores

botones :- lim,
enfermedad_ninos(Enfermedad),
send(@txt1,selection('DIAGN�STICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
lim :- send(@txt2, selection('')).


botones2 :- limp,
covid_general(Enfermedad),
send(@txt1,selection('DIAGN�STICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp :- send(@txt2, selection('')).


botones3 :- limp2,
gravedad_covid(Enfermedad),
send(@txt1,selection('DIAGN�STICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp2:- send(@txt2, selection('')).

