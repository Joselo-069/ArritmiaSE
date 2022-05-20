
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

ventana_inicio:- new(D,dialog('Sistema Experto Diagnosticador de Arritmias Cardicas')),
          %new(Texto1,label(name,'SISTEMA EXPERTO DIAGNOSTICO DE ARRITMIA CARDIACAS',font('arial','bold',18))),
          %new(Texto2,label(name,'SISTEMA EXPERTO DIAGNOSTICO DE ARRITMIA CARDIACAS',font('arial','bold',18))),
          %new(Texto3,label(name,'    UNIVERSIDAD NACIONAL SANTIAGO\n                  ANTUNEZ DE MAYOLO \n\n\n\n\n
           %     FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORMÁTICA',font('arial','bold',20))),
          %new(Texto4,label(name,'    UNIVERSIDAD NACIONAL SANTIAGO\n                  ANTUNEZ DE MAYOLO \n\n\n\n\n
          % FACULTAD DE CIENCIAS \n ESCUELA  PROFESIONAL DE INGENIERIA \n          DE SISTEMAS E INFORMÁTICA',font('arial','bold',20))),
          new(BtnIniciar,button('INICIAR ____',and(message(@prolog,ventana_principal),message(D,destroy)))),
          new(BtnSalir1,button('SALIR____',and(message(D,destroy)))),
          
          nueva_imagen(D,fondo,point(0,0)),
          
          %send(D,display,Texto1,point(60,29)),
          %send(D,display,Texto2,point(63,30)),
          %send(Texto1,colour(darkred)),
          %send(Texto2,colour(blue)),

          %send(D,display,Texto3,point(115,80)),
          %send(D,display,Texto4,point(118,81)),
          %send(Texto3,colour(black)),
          %send(Texto4,colour(blue)),
          %send(D,background(red)),

          send(D,display,BtnIniciar,point(560,390)),
          nueva_imagen(D,iconoSiguiente,point(620,391)),
          send(BtnIniciar,font(bold)),

          send(D,display,BtnSalir1,point(800,392)),
          nueva_imagen(D,iconoSalir,point(860,395)),
          send(BtnSalir1,font(bold)),

          
          send(D,height(600)),
          send(D,width(950)),
          send(D,open_centered).
          :-ventana_inicio.
          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Menu Principal %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_principal:- new(MAIN,dialog('Bienvenido al Sistema Experto Diagnosticador de Arritmias Cardiacas')),

          new(Texto1,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',23))),
          new(Texto2,label(name,'SISTEMA EXPERTO - DIAGNOSTICO DE ARRITMIAS CARDIACAS',font('arial','bold',23))),
          new(@txt1,label(name,'ARRITIMIAS CARDIACAS',font('arial','bold',16))),
          new(@txt2,label(name,'                    \n"DIA MUNDIAL DEL CORAZON - 29 DE SEPTIEMBRE " \nLe pedimos que use el corazón para vencer las enfermedades cardiacas. Por la sociedad, por tus seres queridos \ny por ti.',font('arial','bold',14))),
          new(BtnConsultaNinos,button('CONSULTA GENERAL__________________',message(@prolog,botones))),
          %new(BtnConsultaNinos,button('TIPO DE ARRITMIA ____________________',message(@prolog,botones))),
          new(BtnPrevencion,button('TIPO DE ARRITMIA ____________________',message(@prolog,botones3))),
          new(BtnProtocolo,button('SUGERENCIAS___________________________',and(message(@prolog,ventana_medidasBioseg_principal),message(MAIN,destroy),
          message(@txt1,free),message(@txt2,free)))),
          new(BtnSalir2,button('SALIR_________________________________________',and(message(MAIN,destroy)))),

          nueva_imagen(MAIN,fondo2,point(0,0)),

          send(MAIN,display,Texto1,point(50,31)),
          send(MAIN,display,Texto2,point(50,30)),
          send(Texto1,colour(darkred)),
          send(Texto2,colour(white)),

          send(MAIN,display,@txt1,point(360,105)),
          send(MAIN,display,@txt2,point(50,130)),
          send(@txt1,colour(white)),
          send(@txt2,colour(white)),
          
          %boton consulta general
          
          send(MAIN,display,BtnConsultaNinos,point(90,260)),
          nueva_imagen(MAIN,iconoIniciar,point(280,262)),
          send(BtnConsultaNinos,font(bold)),

          %boton tipo de arritmia
          send(MAIN,display,BtnPrevencion,point(360,260)),
          nueva_imagen(MAIN,iconoIniciar,point(552,262)),
          send(BtnPrevencion,font(bold)),

          %boton de sugerecias
          send(MAIN,display,BtnProtocolo,point(630,260)),
          nueva_imagen(MAIN,iconoIniciar,point(820,262)),
          send(BtnProtocolo,font(bold)),

          %boton de salir
          send(MAIN,display,BtnSalir2,point(70,560)),
          nueva_imagen(MAIN,iconoSalir,point(265,562)),
          send(BtnSalir2,colour(red)),
          send(BtnSalir2,font(bold)),
          
          send(MAIN,height(600)),
          send(MAIN,width(950)),
          send(MAIN,open_centered).
          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%    VENTANA DE SUGERENCIAS  %%%%%%%%%%%%%%%%%%%%%%%%%%%

ventana_medidasBioseg_principal:-new(Dprotocolo,dialog('Sugerencias')),
                   %new(TxtMedTitulo,label(name,'PROTOCOLOS DE BIOSEGURIDAD',font('arial','bold',16))),
                   new(BtnMedManos,button('PREVENCIONES______________________',and(message(@prolog,ventana_lavadoMano),message(Dprotocolo,destroy)))),
                   new(BtnMedMascarilla,button('RECOMENDACIONES_______________',and(message(@prolog,ventana_usoMascarilla),message(Dprotocolo,destroy)))),
                   %new(BtnMedDistancia,button('Distanciamiento______________________',and(message(@prolog,ventana_Distanciamiento),message(Dprotocolo,destroy)))),
                   %new(BtnGel,button('Alcohol y Gel__________________________',and(message(@prolog,ventana_usoGel),message(Dprotocolo,destroy)))),
                   new(BtnVolverInicio,button('___VOLVER INICIO',and(message(@prolog,ventana_principal),message(Dprotocolo,destroy)))),
                   
                   nueva_imagen(Dprotocolo,fondoMedidas,point(0,0)),
                   
                   send(Dprotocolo,display,BtnMedManos,point(60,200)),
                   send(BtnMedManos,font(bold)),
                   send(Dprotocolo,display,BtnMedMascarilla,point(60,300)),
                   send(BtnMedMascarilla,font(bold)),

                   send(Dprotocolo,display,BtnVolverInicio,point(60,50)),
                   send(BtnVolverInicio,font(bold)),
                   send(BtnVolverInicio,colour(black)),
                   
                   nueva_imagen(Dprotocolo,iconoSalir,point(60,52)),
                   
                   nueva_imagen(Dprotocolo,iconoIniciar,point(237,201)),
                   nueva_imagen(Dprotocolo,iconoIniciar,point(237,301)),
                   
                   send(Dprotocolo,height(600)),
                   send(Dprotocolo,width(950)),
                   send(Dprotocolo,open_centered).
%PREVENCION

ventana_lavadoMano:-new(DLavadoMano,dialog('Lavado correcto de las manos')),
                    new(BtnVolverInicio2,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DLavadoMano,destroy)))),
                    
                    nueva_imagen(DLavadoMano,fondoLavadoManos,point(0,0)),
                    
                    send(DLavadoMano,display,BtnVolverInicio2,point(70,513)),
                    nueva_imagen(DLavadoMano,iconoAtras,point(75,515)),
                    
                    send(DLavadoMano,width(950)),
                    send(DLavadoMano,height(600)),
                    send(DLavadoMano,open_centered).
                    
                    
%RECOMENDACIONES

ventana_Distanciamiento:-new(Ddistanciamiento,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(Ddistanciamiento,destroy)))),
                    
                    nueva_imagen(Ddistanciamiento,fondoDistanciamiento,point(0,0)),

                    send(Ddistanciamiento,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(Ddistanciamiento,iconoAtras,point(75,515)),

                    send(Ddistanciamiento,width(950)),
                    send(Ddistanciamiento,height(600)),
                    send(Ddistanciamiento,open_centered).


%CORRECTO CORRECTO USO DE MASCARILLA

ventana_usoMascarilla:-new(DUsoMascarilla,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DUsoMascarilla,destroy)))),
                    
                    nueva_imagen(DUsoMascarilla,fondoMascarilla,point(0,0)),

                    send(DUsoMascarilla,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(DUsoMascarilla,iconoAtras,point(75,515)),
                    
                    send(DUsoMascarilla,width(950)),
                    send(DUsoMascarilla,height(600)),
                    send(DUsoMascarilla,open_centered).

%CORRECTO  USO DEL ALCOHOL Y GEL

ventana_usoGel:-new(DUsoGel,dialog('Correcto Distanciamiento')),
                    new(BtnVolverInicio3,button('______VOLVER',and(message(@prolog,ventana_medidasBioseg_principal),message(DUsoGel,destroy)))),

                    nueva_imagen(DUsoGel,fondoGel,point(0,0)),

                    send(DUsoGel,display,BtnVolverInicio3,point(70,513)),
                    nueva_imagen(DUsoGel,iconoAtras,point(75,515)),

                    send(DUsoGel,width(950)),
                    send(DUsoGel,height(600)),
                    send(DUsoGel,open_centered).
                                 
%DIAGNOSTICO DE TIPO DE ARRITMIA CARDIACA

enfermedad_corazon('\nPELIGRO!!! \nResultado: Usted padece de Arritmias Cardiaca'):-covid,!.

enfermedad_corazon('\nPELIGRO!!! \nResultado: Usted padece de Arritmias Cardiaca'):-gripe,!.

enfermedad_corazon('\nPELIGRO!!! \nResultado: Usted padece de Arritmias Cardiaca'):-resfriado,!.

enfermedad_corazon('Resultado: Usted no presenta Arritmia Cardiaca, \nRecomendacion:De haber presentado algunas de los sintomas.\nSe recomienda que visite a un especialista para descartar indicios de Arritmia Cardiaca').


%DIAGNOSTICO GENERAL

covid_general('\nPELIGRO!!! Usted padece de Arritmias Cardiaca'):-genSiCovid,!.

covid_general('\nNO PRESENTA PROBLEMAS ARRITMÍCOS, pero si continúa con algunos de los síntomas mencionados, se recomienda
acercarse a un centro de salud para la realización de una prueba EGC, ecocardiograma o un EEF, para descartar
alguna complicación.').


%DIAGNOSTICO CATEGORIA DE ARRITMIA CARDIACA

% Bradiarritmias - nivel leve
gravedad_corazon('CUIDADO!! \nUsted Presenta: Bradiarritmias. \nCategoria de Arritmia: Nivel de Riesgo Moderado. \nRecomendacion: Se recomienda que en caso que los sintomas empeoren, debe visitar a un especialista'):-covidLeve,!.

% Taquiarritmias - nivel considerable
gravedad_corazon('PELIGRO!! \nUsted Presenta: Taquiarritmias. \nCategoria de Arritmia: Nivel de Riesgo Grave. \nRecomendacion: Se recomienda realizar los examenes correspondientes, para su posterior tratamiento.'):-covidCritica,!.
gravedad_corazon('Usted presenta sintomas de Arritmia de Nivel Leve, pero se le recomienda continuar con los cuidados pertinetes.').

gravedad_corazon('\n\nUsted no presenta Sintomas de Arritmias cardiacas, se le recomienda continuar con los cuidados pertinetes'):-covidModerada,!.

gravedad_corazon('\nPELIGRO!! TIENE UNA ENFERMEDAD GRAVE'):-covidGrave,!.


gravedad_corazon('\nDe haber presentado algunas de los sintomas,se recomienda que visite a un establecimiento de salud para su debido tratamiento').


%PREGUNTAS PARA EL DIAGNOSTICO NIÑOS

%es_arrtimia causada por los fallos cardiacos
covid:- es_covid,
pregunta('¿Ha notado que tiene Latidos cardíacos acelerados o lentos?'),
pregunta('¿Presenta dificultad para respirar con frecuencia?'),
pregunta('¿Presenta hinchazón en las piernas?'),
pregunta('¿Presenta dolor temporal en el pecho?'),
pregunta('¿Tiene sensación de mareos o aturdimientos?').

%es_arritmia causada por la mala vida cotidiana
gripe:-es_gripe,

pregunta('¿Se estresa con frecuencia?'),
pregunta('¿No lleva una alimentación saludable?'),
pregunta('¿Consume medicamentos en exceso?'),
pregunta('¿Consume sustancias adictivas?'),
pregunta('¿Sufre de desmayos o desvanecimiento con regularidad?').

%es_arritmia causa por los dfectos congnenitos
resfriado:-es_resfriado,
pregunta('¿Tiene algún defecto congénito relacionado con el corazón?'),
pregunta('¿Algún familiar tiene antecedentes de problemas del corazon?'),
pregunta('¿Se estresa con frecuencia?'),
pregunta('¿No lleva una alimentación saludable?'),
pregunta('¿Consume medicamentos en exceso?'),
pregunta('¿Consume sustancias adictivas?'),
pregunta('¿Realiza deporte en exceso?').



%PREGUNTAS PARA DIAGNOSTICO GENERAL arritmia

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

%Bradiarritmias
covidLeve:-es_leve,
pregunta('¿Siente que su corazon late demadiado lento?'),
pregunta('¿Siente que pierde la memoria con facilidad?'),
pregunta('¿Usa farmacos como la Atropina o la Adrenalina, entre otros?').

%Taquicardia
covidCritica:-es_critica,
pregunta('¿Siente que su corazon late demadiado acelerado?'),
pregunta('¿Sufre Sudoracion excesiva de manera repentina?'),
pregunta('¿Sufre ansiedad de manera frecuente?').

%identificador de enfermedad que dirige a las preguntas correspondientes

es_covid:-pregunta('¿Ha notado que tiene Latidos cardíacos acelerados o lentos?'),!.
es_gripe:-pregunta('¿Se estresa con frecuencia?'),!.
es_resfriado:-pregunta('¿Tiene algún defecto congénito relacionado con el corazón?'),!.

general_es_covid:-pregunta('¿Presenta Fallos Cardiacos? (Falta de impulsos electrico)'),!.

es_leve:-pregunta('¿Siente que su corazon late demadiado lento?').
es_critica:-pregunta('¿Siente que su corazon late demadiado acelerado?').

/***********************************************************************************************************************************************************************/
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
((Answer==si)->assert(si(Problema)); assert(no(Problema)),fail).

% cada vez que se conteste una pregunta la pantalla se limpia para volver a preguntar

pregunta(S):-(si(S)->true; (no(S)->false; preguntar(S))).
limpiar :- retract(si(_)),fail.
limpiar :- retract(no(_)),fail.
limpiar.

% proceso de eleccion de acuerdo al diagnostico basado en las preguntas anteriores

botones :- lim,
enfermedad_corazon(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(red)),
send(@txt2,selection(Enfermedad)),
limpiar.
lim :- send(@txt2, selection('')).

botones2 :- limp,
covid_general(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(red)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp :- send(@txt2, selection('')).

botones3 :- limp2,
gravedad_corazon(Enfermedad),
send(@txt1,selection('DIAGNÓSTICO:')),
send(@txt1,colour(red)),
send(@txt2,selection(Enfermedad)),
limpiar.
limp2:- send(@txt2, selection('')).


