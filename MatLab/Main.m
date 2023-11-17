clear all;close all; clc;
addpath('./Data');
addpath('./funciones/.');
addpath('./funciones/ej2');
addpath('./funciones/ej1');

n = -20:20;
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0
% Entrada de la señal: Numero de alumno de Santiago
numAl= 030123;

ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));

%	Opciones del menú
op = {'Ejercicio 1', 'Ejercicio 2','Salir'};
opSelec = menu('Seleccione el ejercicio:', op);


switch opSelec
    case 1
        opciones = {'Inciso 1','Inciso 2 y 3','Inciso 4', 'Inciso 5', 'Salir'};
        opcion_seleccionada = menu('Selecciona una opción:', opciones);
        switch opcion_seleccionada
        case 1
            % Entrada de la señal: Numero de alumno de Santiago
             numAl= 030123; % entrada de senial 
             [n,x] = senial(numAl);
             subplot(3,1,1);
             stem(n,x); % gráfico de senial
             title('Señal');
             xlabel('Instantes (n)');
             ylabel('Amplitud (x)');
             grid on;

             % Se calcula la Transformada de Fourier de la señal
             X = TFTD(n,x);
             
             % Se calcula módulo y fase de la transformada
             modX = abs(X);
             faseX = angle(X);

             % Se grafica el módulo
             subplot(3,1,2);
             plot(s,modX);
             title('Módulo de la respuesta en frecuencia');
             % Se definen los límites del eje x para una mejor apreciación
             xlim([-0.5, 0.5]);
             
             % Se grafica la fase
             subplot(3,1,3);
             plot(s,faseX);
             title('Fase de la respuesta en frecuencia');
             xlim([-0.5, 0.5]);
             
        case 2
            opciones2 = {'Respuesta impulsional sistema 1 y sistema 2','Respuesta impulsional sistema 3 y sistema 4','Respuesta en frecuencia del sistema 1 y 2','Respuesta en frecuencia del sistema 3 y 4'};
            OpcionSelec2 = menu('Seleccione una opción:', opciones2);
            switch OpcionSelec2
                case 1
                    h1 = sist1(n, x); % respuesta impulsional sistema 1
                    subplot(2,1,1);
                    stem(n,h1);
                    title('Respuesta impulsional del sistema 1');
                    h2 = sist2(n, x); % respuesta impulsional sistema 2
                    subplot(2,1,2);
                    stem(n,h2);
                    title('Respuesta impulsional del sistema 2');
                case 2
                    h3 = sist3(n, x); % respuesta impulsional sistema 3
                    h4 = sist4(n, x); % respuesta impulsional sistema 4
                    subplot(2,1,1);
                    stem(n,h3);
                    title('Respuesta impulsional del sistema 3');
                    subplot(2,1,2);
                    stem(n,h4);
                    title('Respuesta impulsional del sistema 4');
                case 3
                    h1 = sist1(n, x);
                    h2 = sist2(n, x);
                    H1 = TFTD(n,h1); % respuesta en frecuencia sistema 1
                    H2 = TFTD(n,h2); % respuesta en frecuencia sistema 2
                    
                    % Calculo módulo y fase
                    modH1 = abs(H1);
                    faseH1 = angle(H1);
                    modH2 = abs(H2);
                    faseH2 = angle(H2);
                    
                    subplot(2,2,1);
                    plot(s,modH1);
                    title('Módulo de la respuesta en frecuencia del sistema 1');
                    subplot(2,2,3);
                    plot(s,faseH1);
                    title('Fase de la respuesta en frecuencia del sistema 1');
                    subplot(2,2,2);
                    plot(s,modH2);
                    title('Módulo de la respuesta en frecuencia del sistema 2');
                    subplot(2,2,4);
                    plot(s,faseH2);
                    title('Fase de la respuesta en frecuencia del sistema 2');

                case 4
                    h3 = sist3(n, x);
                    h4 = sist4(n, x);
                    H3 = TFTD(n,h3); % respuesta en frecuencia sistema 3
                    H4 = TFTD(n,h4); % respuesta en frecuencia sistema 4
                    
                    modH3 = abs(H3);
                    faseH3 = angle(H3);
                    modH4 = abs(H4);
                    faseH4 = angle(H4);
                    
                    subplot(2,2,1);
                    plot(s,modH3);
                    title('Módulo de la respuesta en frecuencia del sistema 3');
                    subplot(2,2,3);
                    plot(s,faseH3);
                    title('Fase de la respuesta en frecuencia del sistema 3');
                    subplot(2,2,2);
                    plot(s,modH4);
                    title('Módulo de la respuesta en frecuencia del sistema 4');
                    subplot(2,2,4);
                    plot(s,faseH4);
                    title('Fase de la respuesta en frecuencia del sistema 4');
            end;

        case 3
            [n,x] = senial(numAl);
            S1 = sist1(n,x); % respuesta sistema 1 con entrada senial
            subplot(2,2,1);
            stem(n,S1)
            title('Señal de salida del sistema 1');
            S2 = sist2(n,x); % respuesta sistema 2 con entrada senial
            subplot(2,2,2);
            stem(n,S2)
            title('Señal de salida del sistema 2');
            S3 = sist3(n,x); % respuesta sistema 3 con entrada senial
            subplot(2,2,3);
            stem(n,S3)
            title('Señal de salida del sistema 3');
            S4 = sist4(n,x); % respuesta sistema 4 con entrada senial
            subplot(2,2,4);
            stem(n,S4)
            title('Señal de salida del sistema 4');
            
            
            
        case 4          
            [n,x] = senial(numAl);
            opciones3 = {'Respuesta en frecuencia de la salida del sistema 1','Respuesta en frecuencia de la salida del sistema 2','Respuesta en frecuencia de la salida del sistema 3','Respuesta en frecuencia de la salida del sistema 4'};
            OpcionSelec3 = menu('Seleccione una opción:', opciones3);
            switch OpcionSelec3
                case 1
                    S1 = sist1(n,x);
                    S1tftd = TFTD(n, S1);
                    
                    % Calculo módulo y fase
                    modS1 = abs(S1tftd);
                    faseS1 = angle(S1tftd);
                    
                    
                    subplot(2,1,1);
                    plot(s,modS1);
                    title('Módulo de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                    
                    subplot(2,1,2);
                    plot(s,faseS1);
                    title('Fase de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                    
                    
                case 2
                    S2 = sist2(n,x);
                    S2tftd = TFTD(n, S2);
                    
                    % Calculo módulo y fase
                    modS2 = abs(S2tftd);
                    faseS2 = angle(S2tftd);
                    
                    
                    subplot(2,1,1);
                    plot(s,modS2);
                    title('Módulo de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                    
                    
                    subplot(2,1,2);
                    plot(s,faseS2);
                    title('Fase de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);

                case 3
                    S3 = sist3(n,x);
                    S3tftd = TFTD(n, S3);
                    
                    % Calculo módulo y fase
                    modS3 = abs(S3tftd);
                    faseS3 = angle(S3tftd);
                    
                    
                    subplot(2,1,1);
                    plot(s,modS3);
                    title('Módulo de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                    
                    
                    subplot(2,1,2);
                    plot(s,faseS3);
                    title('Fase de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                case 4
                    S4 = sist4(n,x);
                    S4tftd = TFTD(n, S4);
                    
                    % Calculo módulo y fase
                    modS4 = abs(S4tftd);
                    faseS4 = angle(S4tftd);
                    
                    
                    subplot(2,1,1);
                    plot(s,modS4);
                    title('Módulo de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
                    
                    
                    subplot(2,1,2);
                    plot(s,faseS4);
                    title('Fase de la respuesta en frecuencia');
                    xlim([-0.5, 0.5]);
            end;
            otherwise
        end
        
        
        
        
        
    case 2
        
        % A partir de ahora, se utiliza el numero de alumno de Ignacio
        numAl= 025023; 
        x = zeros(size(n));
        x(n == 0) = 1; % delta en n=0
        [n,h] = hcanald(numAl);
        
        opEj2 = {'Inciso 1','Inciso 2','Inciso 3', 'Inciso 4 y 5', 'Salir'};
        opSel2 = menu('Selecciona una opción:', opEj2);
        switch opSel2
            case 1
                % Se grafica la señal
                stem(n,h);
                title('Señal');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
                title('Respuesta al impulso');
            case 2
                x = zeros(size(n));
                x(n == 0) = 1; % delta en n=0
                h2 = ec1(n,x);
                stem(n,h2);
                title('Señal 2');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
            case 3
                % Guardamos la señal y la frecuencia del audio en las
                % variables "x" y "fs" respectivamente
                [x, fs] = audioread('audio.wav');
                 n = 0:length(x);
                
                % Se grafica dicha señal
                subplot(2,1,1);
                plot(x);
                title('Señal del audio de entrada');
                
                % Se grafica la salida del sistema
                y = ec1(n,x);
                subplot(2,1,2);
                plot(y);
                title('Salida del sistema');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
                sound(y,length(x))
            case 4
                % Guardamos la señal y la frecuencia del audio en las
                % variables "x" y "fs" respectivamente
                [x, fs] = audioread('audio.wav');
                n = 0:length(x);
                y = ec1(n,x);
                
                % Comienzan a aplicarse los filtros
                % Filtro de 1 rama
                yfilt= filtro(n,y);
                subplot(3,1,1);
                plot(yfilt);
                title('Filtrado con 1 rama de retardo');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
                sound(yfilt,length(x))
                pause(3);

                % Filtro de 2 ramas
                yfilt2= filtro2(n,y);
                subplot(3,1,2);
                plot(yfilt2);
                title('Filtrado con 2 ramas de retardo');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
                sound(yfilt2,length(x));
                pause(3);

                % Filtro de 3 ramas
                yfilt3= filtro3(n,y);
                subplot(3,1,3);
                plot(yfilt3);
                title('Filtrado con 3 ramas de retardo');
                xlabel('Instantes (n)');
                ylabel('Amplitud (x)');
                grid on;
                sound(yfilt3,length(x));
        end
    otherwise
end

