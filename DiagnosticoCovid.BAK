
 % Delcaración de Librearias en prolog

:- use_module(library(pce)).
:- pce_image_directory('./Imagenes').
:- pce_image_directory('./Imagenes/Preguntas').
:- use_module(library(pce_style_item)).

%   Conjunto de imagenes a utilizar

resource(fondo,image,image('fondo-presentacion.jpg')).
resource(fondo2,image,image('fondo-corazon1.jpg')).
resource(fondoMedidas,image,image('sugerencias2.jpg')).
resource(fondoPreguntas,image,image('f_preguntas.jfif')).
resource(fondoLavadoManos,image,image('prevencion.jpg')).
resource(fondoDistanciamiento,image,image('fondo-Distanciamiento.jpg')).
resource(fondoMascarilla,image,image('recomendaciones1.jpg')).
resource(fondoGel,image,image('fondo-Gel.jpg')).
resource(fondoIntegrantes,image,image('fondo-Integrantes.jpg')).
%resource(logoisi,image,image('LogoISI.jpg')).
%resource(logounasam,image,image('LogoUnasam.jpg')).
resource(iconoSalir,image,image('salir.gif')).
resource(iconoIniciar,image,image('check.jpg')).
resource(iconoSiguiente,image,image('IconSiguiente.jpg')).
resource(iconoAtras,image,image('iconoAtras.jpg')).
resource(iconoIntegrantes,image,image('integrantes.jpg')).

% Método para cargar imagenes
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
                FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORMÁTICA',font('arial','bold',20))),
          new(Texto4,label(name,'    UNIVERSIDAD NACIONAL SANTIAGO\n                  ANTUNEZ DE MAYOLO \n\n\n\n\n
                FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORMÁTICA',font('arial','bold',20))),
          new(BtnIniciar,button('INICIAR ____',and(message(@prolog,ventana_principal),message(D,destroy)))),
          new(BtnSalir1,button('SALIR____',and(message(D,destroy)))),
          %new(BtnIntegrantes,button('INTEGRANTES_______',message(@prolog,ventana_Integrantes))),
          
          nueva_imagen(D,fondo,point(0,0)),
          %nueva_imagen(D,logounasam,point(185,160)),
          %nueva_imagen(D,logoisi,point(420,160)),
          
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
          
          %send(D,display,BtnIntegrantes,point(290,428)),
          %nueva_imagen(D,iconoIntegrantes,point(390,430)),
          %send(BtnIntegrantes,font(bold)),
          
          send(D,height(450)),
          send(D,width(720)),
          send(D,open_centered).
          :-ventana_inicio.
          
%%%%%%%%%%%%%%%%%%%%%%%%%%   INTEGRANTES         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_Integrantes:-new(DIntegrantes,dialog('Integrantes')),
                     new(TxtIntTitulo,label(name,'GRUPO Nº 1',font('arial','bold',12))),
                     new(TxtIntTexto,label(name,'                     1. Ayala Flores Leo \n
                     2. Maguiña Chavez Nastasha \n
                     3. Melgarejo Príncipe Jescenia \n
                     4. Obregon Depaz Xelene \n
                     5. Pajuelo Morales Arturo\n
                     6. Pineda Quispe Gonzalo \n
                     7. Rímac Quispe Estefany \n
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




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Menu Principal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_principal:- new(MAIN,dialog('Bienvenido al Sistema Experto Diagnosticador de Arritmias Cardiacas')),

          new(Texto1,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',20))),
          new(Texto2,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',20))),
          new(@txt1,label(name,'ARRITIMIAS CARDIACAS',font('arial','bold',14))),
          new(@txt2,label(name,'                    \n"DIA MUNDIAL DEL CORAZON - 29 DE SEPTIEMBRE " \nLe pedimos que use el corazón para vencer las enfermedades cardiacas. Por la sociedad, por tus seres queridos \ny por ti.',font('arial','bold',12))),
          new(BtnConsultaGeneral,button('CONSULTA GENERAL__________________',message(@prolog,botones2))),
          %new(BtnConsultaNinos,button('TIPO DE ARRITMIA ____________________',message(@prolog,botones))),
          new(BtnPrevencion,button('TIPO DE ARRITMIA ____________________',message(@prolog,botones3))),
          new(BtnProtocolo,button('SUGERENCIAS___________________________',and(message(@prolog,ventana_medidasBioseg_principal),message(MAIN,destroy),
          message(@txt1,free),message(@txt2,free)))),
          new(BtnSalir2,button('SALIR_________________________________________',and(message(MAIN,destroy)))),

          nueva_imagen(MAIN,fondo2,point(0,0)),

          send(MAIN,display,Texto1,point(30,31)),
          send(MAIN,display,Texto2,point(30,30)),
          send(Texto1,colour(darkred)),
          send(Texto2,colour(white)),

          send(MAIN,display,@txt1,point(320,105)),
          send(MAIN,display,@txt2,point(50,130)),
          send(@txt1,colour(white)),
          send(@txt2,colour(white)),
          
          %boton consulta general
          send(MAIN,display,BtnConsultaGeneral,point(30,240)),
          nueva_imagen(MAIN,iconoIniciar,point(220,242)),
          send(BtnConsultaGeneral,font(bold)),
          
          %boton tipo de arritmia
          %send(MAIN,display,BtnConsultaNinos,point(50,205)),
          %nueva_imagen(MAIN,iconoIniciar,point(240,207)),
          %send(BtnConsultaNinos,font(bold)),

          %boton tipo de arritmia
          send(MAIN,display,BtnPrevencion,point(280,240)),
          nueva_imagen(MAIN,iconoIniciar,point(472,242)),
          send(BtnPrevencion,font(bold)),

          %boton de sugerecias
          send(MAIN,display,BtnProtocolo,point(530,240)),
          nueva_imagen(MAIN,iconoIniciar,point(720,242)),
          send(BtnProtocolo,font(bold)),

          %boton de sugerecias
          send(MAIN,display,BtnSalir2,point(30,520)),
          nueva_imagen(MAIN,iconoSalir,point(225,522)),
          send(BtnSalir2,colour(red)),
          send(BtnSalir2,font(bold)),
          
          send(MAIN,height(550)),
          send(MAIN,width(800)),
          send(MAIN,open_centered).
          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%    VENTANA DE SUGERENCIAS  %%%%%%%%%%%%%%%%%%%%%%%%%%%

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
                   send(Dprotocolo,display,BtnVolverInicio,point(45,50)),
                   send(BtnVolverInicio,font(bold)),
                   send(BtnVolverInicio,colour(black)),
                   
                   nueva_imagen(Dprotocolo,iconoSalir,point(45,52)),
                   
                   nueva_imagen(Dprotocolo,iconoIniciar,point(217,201)),
                   nueva_imagen(Dprotocolo,iconoIniciar,point(217,301)),
                   %nueva_imagen(Dprotocolo,iconoIniciar,point(217,401)),
                   %nueva_imagen(Dprotocolo,iconoIniciar,point(217,461)),
                   
                   send(Dprotocolo,height(550)),
                   send(Dprotocolo,width(800)),
                   send(Dprotocolo,open_centered).
%PREVENCION

ventana_lavadoMano:-new(DLavadoMano,dialog('Lavado correcto de las manos')),
                    new(BtnVolverInicio2,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DLavadoMano,destroy)))),
                    
                    nueva_imagen(DLavadoMano,fondoLavadoManos,point(0,0)),
                    
                    send(DLavadoMano,display,BtnVolverInicio2,point(70,513)),
                    nueva_imagen(DLavadoMano,iconoAtras,point(75,515)),
                    
                    send(DLavadoMano,width(800)),
                    send(DLavadoMano,height(550)),
                    send(DLavadoMano,open_centered).
                    
                    
%RECOMENDACIONES

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
                                 
%DIAGNOSTICO DE TIPO DE ARRITMIA CARDIACA

enfermedad_ninos('PELIGRO su hijo padece de COVID-19'):-covid,!.

enfermedad_ninos('Su hijo pareciera tener una gripe comun se
recomienda que visite un centro médico para
descartar el COVID-19'):-gripe,!.

enfermedad_ninos('Su hijo solo tiene un resfriado pero en
ocasiones también puede ser sintoma del
COVID-19 se recomienda visitar un centro
de salud o un especialista.'):-resfriado,!.

enfermedad_ninos('De haber presentado algunas de los
sintomas,se recomienda que visite a
un establecimiento de salud para descartar
indicios de la COVID 19').


%DIAGNOSTICO GENERAL

covid_general('\nPELIGRO!!! Usted padece de Arritmias Cardiaca'):-genSiCovid,!.

covid_general('\nNO PRESENTA PROBLEMAS ARRITMÍCOS, pero si continúa con algunos de los síntomas mencionados, se recomienda
acercarse a un centro de salud para la realización de una prueba EGC, ecocardiograma o un EEF, para descartar
alguna complicación.').


%DIAGNOSTICO GRAVEDAD - COVID19

gravedad_covid('CUIDADO!! TIENE UNA ENFERMEDAD LEVE,
si está en casa se recomienda
visitar a un especialista o un establecimineto más
cercano.'):-covidLeve,!.

gravedad_covid('ADVERTENCIA!! TIENE UNA ENFERMEDAD MODERADA'):-covidModerada,!.

gravedad_covid('PELIGRO!! TIENE UNA ENFERMEDAD GRAVE'):-covidGrave,!.

gravedad_covid('PELIGRO!! TIENE UNA ENFERMEDAD CRITICA'):-covidCritica,!.

gravedad_covid('De  haber presentado
algunas de los sintomas,se recomienda
que visite a un establecimiento de salud
para su debido tratamiento').


%PREGUNTAS PARA EL DIAGNOSTICO NIÑOS

covid:- es_covid,
pregunta('¿Tiene fiebre más de 37 grados?'),
pregunta('¿Tiene dolor de cabeza?'),
pregunta('¿Tiene dolor de garganta?'),
pregunta('¿Tiene problemas de respiración?'),
pregunta('¿Siente perdida del sentido del gusto?'),
pregunta('¿Siente perdida del sentido del olfato?'),
pregunta('¿Tiene diarrea?'),
pregunta('¿Tiene tos seca?'),
pregunta('¿Tiene conjuntivitis?').

gripe:-es_gripe,
pregunta('¿Siente escalofrios?'),
pregunta('¿Tiene dolor de cabeza y dolor muscular?'),
pregunta('¿Tiene dolor de garganta?'),
pregunta('¿Tiene goteo nasal?'),
pregunta('¿Tiene tos?'),
pregunta('¿Tiene fiebre?'),
pregunta('¿No tiene apetito?'),
pregunta('¿Se siente cansado?').

resfriado:-es_resfriado,
pregunta('¿Tiene cosquilleo en la garganta?'),
pregunta('¿Tiene congestión o goteo nasal?'),
pregunta('¿Tiene estornudos?'),
pregunta('¿Tiene un buen apetito?'),
pregunta('¿Su fiebre no es muy alta?'),
pregunta('¿Su nivel de energía es normal?').

%PREGUNTAS PARA DIAGNOSTICO GENERAL

genSiCovid:-general_es_covid,
pregunta('¿Presenta dificultad para respirar?'),
pregunta('¿Presenta hinchazón en las piernas?'),
pregunta('¿Ha notado que tiene Latidos cardíacos acelerados o lentos?'),
pregunta('¿Consume sustancias adictivas?'),
pregunta('¿Tiene algún defecto congénito?'),
pregunta('¿Se estresa con frecuencia?'),
pregunta('¿Lleva una alimentación saludable?'),
pregunta('¿Realiza deporte en exceso?'),
pregunta('¿Consume medicamentos en exceso?'),
pregunta('¿Presenta dolor temporal en el pecho?'),
pregunta('¿Tiene sensación de mareos o aturdimientos?').

%PREGUNTAS PARA DIAGNOSTICO DE LA GRAVEDAD DEL COVID

covidLeve:-es_leve,
pregunta('¿Tiene fiebre?'),
pregunta('¿Tine tos seca?'),
pregunta('¿Se siente cansado?'),
pregunta('¿Siente dolor en la garganta?'),
pregunta('¿Siente que esta perdiendo el sentido del gusto?'),
pregunta('¿Siente que esta perdiendo el sentido del olfato?').

covidModerada:-es_moderada,
pregunta('¿Tiene una saturación de oxígeno (SpO2) = 94%
en el aire ambiente al nivel del mar?').

covidGrave:-es_grave,
pregunta('¿Tiene  frecuencia respiratoria>30 respiraciones por minuto?'),
pregunta('¿Su SpO2<94% en el aire ambiente al nivel del mar?'),
pregunta('¿(PaO2 / FiO2) < 300 mmHg o infiltrados pulmonares > 50%?').

covidCritica:-es_critica,
pregunta('¿Tiene Choque septico?'),
pregunta('¿Sufre de insuficiencia Respiratoria?'),
pregunta('¿Tiene disfunción multiorgánica?').


%identificador de enfermedad que dirige a las preguntas correspondientes

es_covid:-pregunta('¿Tiene fiebre más de 37 grados?'),!.
es_gripe:-pregunta('¿Siente escalofrios?'),!.
es_resfriado:-pregunta('¿Tiene cosquilleo en la garganta?'),!.

general_es_covid:-pregunta('¿Presenta Fallos Cardiacos? (Falta de impulsos electrico)'),!.

es_leve:-pregunta('¿Presenta Fallos Cardiacos? (Falta de impulsos electrico)').
es_moderada:-pregunta('¿Tiene una saturación de oxígeno (SpO2) = 94% en el aire ambiente al nivel del mar?').
es_grave:-pregunta('¿Tiene  frecuencia respiratoria>30 respiraciones por minuto?').
es_critica:-pregunta('¿Tiene Choque septico?').


/*proceso del diagnostico basado en preguntas de si y no, cuando el
usuario dice si, se pasa a la siguiente pregunta del mismo ramo, si
dice que no se pasa a la pregunta del siguiente ramo*/

:-dynamic si/1,no/1.
preguntar(Problema):- new(Di,dialog('Diagnostico sobre ARRITMIA CARDIACA')),
new(L2,label(texto,'Responde las siguientes preguntas:')),

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

% cada vez que se conteste una pregunta la pantalla se limpia para volver a preguntar

pregunta(S):-(si(S)->true; (no(S)->false; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.

% proceso de eleccion de acuerdo al diagnostico basado en las preguntas anteriores

botones :- lim,
enfermedad_ninos(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
lim :- send(@txt2, selection('')).

botones2 :- limp,
covid_general(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp :- send(@txt2, selection('')).

botones3 :- limp2,
gravedad_covid(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(green)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp2:- send(@txt2, selection('')).


