clear all;close all; clc;

addpath('./Data');
addpath('./funciones/.');
addpath('./funciones/ej2');
addpath('./funciones/ej1');

n = -20:20;
x = zeros(size(n));
ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));

% ------- PUNTO 1 -------

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

 
 
% ------- PUNTO 3 -------

n = -20:20;
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0
ds = 0.001; s = [-2:ds:2]; X = zeros(size(s)); % Frecuencia

% Respuestas impulsionales de los 4 sistemas:

% h1 = sist1(n, x); % respuesta impulsional sistema 1
% h2 = sist2(n, x); % respuesta impulsional sistema 2
% h3 = sist3(n, x); % respuesta impulsional sistema 3
% h4 = sist4(n, x); % respuesta impulsional sistema 4

% subplot(2,2,1);
% stem(n,h1);
% title('Respuesta impulsional del sistema 1');

% subplot(2,2,2);
% stem(n,h2);
% title('Respuesta impulsional del sistema 2');

% subplot(2,2,3);
% stem(n,h3);
% title('Respuesta impulsional del sistema 3');

% subplot(2,2,4);
% stem(n,h4);
% title('Respuesta impulsional del sistema 4');



% Para realizar el cálculo de las TFTD es necesario que h1, h2, h3 y h4
% estén definidas (línea 52 a 55)
% Al ser muchos gráfico, se dividen en sistema 1 y 2 por un lado y sistema
% 3 y 4 por otro lado

% TFTD de los sitemas 1 y 2
% H1 = TFTD(n,h1); % respuesta en frecuencia sistema 1
% H2 = TFTD(n,h2); % respuesta en frecuencia sistema 2

% % Calculo módulo y fase
% modH1 = abs(H1);
% faseH1 = angle(H1);
% modH2 = abs(H2);
% faseH2 = angle(H2);
% 
% subplot(2,2,1);
% plot(s,modH1);
% title('Módulo de la respuesta en frecuencia del sistema 1');
% subplot(2,2,3);
% plot(s,faseH1);
% title('Fase de la respuesta en frecuencia del sistema 1');
% subplot(2,2,2);
% plot(s,modH2);
% title('Módulo de la respuesta en frecuencia del sistema 2');
% subplot(2,2,4);
% plot(s,faseH2);
% title('Fase de la respuesta en frecuencia del sistema 2');

% TFTD de los sistemas 3 y 4
% H3 = TFTD(n,h3); % respuesta en frecuencia sistema 3
% H4 = TFTD(n,h4); % respuesta en frecuencia sistema 4
% modH3 = abs(H3);
% faseH3 = angle(H3);
% modH4 = abs(H4);
% faseH4 = angle(H4);
% 
% subplot(2,2,1);
% plot(s,modH3);
% title('Módulo de la respuesta en frecuencia del sistema 3');
% subplot(2,2,3);
% plot(s,faseH3);
% title('Fase de la respuesta en frecuencia del sistema 3');
% subplot(2,2,2);
% plot(s,modH4);
% title('Módulo de la respuesta en frecuencia del sistema 4');
% subplot(2,2,4);
% plot(s,faseH4);
% title('Fase de la respuesta en frecuencia del sistema 4');



% ------- PUNTO 4 -------
% numAl= 030123;
% [n,x] = senial(numAl);
% S1 = sist1(n,x); % respuesta sistema 1 con entrada senial
% subplot(2,2,1);
% stem(n,S1)
% title('Señal de salida del sistema 1');
% S2 = sist2(n,x); % respuesta sistema 2 con entrada senial
% subplot(2,2,2);
% stem(n,S2)
% title('Señal de salida del sistema 2');
% S3 = sist3(n,x); % respuesta sistema 3 con entrada senial
% subplot(2,2,3);
% stem(n,S3)
% title('Señal de salida del sistema 3');
% S4 = sist4(n,x); % respuesta sistema 4 con entrada senial
% subplot(2,2,4);
% stem(n,S4)
% title('Señal de salida del sistema 4');


% ------- PUNTO 5 -------

% % TFTD de la señal de salida para el sistema 1
% S1 = sist1(n,x);
% S1tftd = TFTD(n, S1);
% 
% % Calculo módulo y fase
% modS1 = abs(S1tftd);
% faseS1 = angle(S1tftd);
% 
% subplot(2,1,1);
% plot(s,modS1);
% title('Módulo de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
% 
% subplot(2,1,2);
% plot(s,faseS1);
% title('Fase de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
% 
% 
% 
% % TFTD de la señal de salida para el sistema 2
% S2 = sist2(n,x);
% S2tftd = TFTD(n, S2);
% 
% % Calculo módulo y fase
% modS2 = abs(S2tftd);
% faseS2 = angle(S2tftd);
% 
% subplot(2,1,1);
% plot(s,modS2);
% title('Módulo de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
% 
% subplot(2,1,2);
% plot(s,faseS2);
% title('Fase de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);


% % TFTD de la señal de salida para el sistema 3
% S3 = sist3(n,x);
% S3tftd = TFTD(n, S3);
% 
% % Calculo módulo y fase
% modS3 = abs(S3tftd);
% faseS3 = angle(S3tftd);
% 
% subplot(2,1,1);
% plot(s,modS3);
% title('Módulo de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
% 
% subplot(2,1,2);
% plot(s,faseS3);
% title('Fase de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);


% % TFTD de la señal de salida para el sistema 4
% S4 = sist4(n,x);
% S4tftd = TFTD(n, S4);
% 
% % Calculo módulo y fase
% modS4 = abs(S4tftd);
% faseS4 = angle(S4tftd);
% 
% 
% subplot(2,1,1);
% plot(s,modS4);
% title('Módulo de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
% 
% 
% subplot(2,1,2);
% plot(s,faseS4);
% title('Fase de la respuesta en frecuencia');
% xlim([-0.5, 0.5]);
