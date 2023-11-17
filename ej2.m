clear all;close all; clc;
addpath('./Data');
addpath('./funciones/.');
addpath('./funciones/ej2');
addpath('./funciones/ej1');


% A partir de ahora, se utiliza el numero de alumno de Ignacio
numAl= 025023; 
n = -20:20;
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0
[n,h] = hcanald(numAl);


% % -------- PUNTO 1 --------

Se grafica la señal
stem(n,h);
title('Señal');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
title('Respuesta al impulso');



% % -------- PUNTO 2 --------

% x = zeros(size(n));
% x(n == 0) = 1; % delta en n=0
% h2 = ec1(n,x);
% stem(n,h2);
% title('Señal 2');
% xlabel('Instantes (n)');
% ylabel('Amplitud (x)');
% grid on;


% % -------- PUNTO 3 --------

% Guardamos la señal y la frecuencia del audio en las
% variables "x" y "fs" respectivamente

% [x, fs] = audioread('audio.wav');
% n = 0:length(x);
% 
% % Se grafica dicha señal
% subplot(2,1,1);
% plot(x);
% title('Señal del audio de entrada');
% 
% % Se grafica la salida del sistema
% y = ec1(n,x);
% subplot(2,1,2);
% plot(y);
% title('Salida del sistema');
% xlabel('Instantes (n)');
% ylabel('Amplitud (x)');
% grid on;
% sound(y,length(x))
                
                
% % -------- PUNTO 4 y 5 --------

% Guardamos la señal y la frecuencia del audio en las
% variables "x" y "fs" respectivamente

% [x, fs] = audioread('audio.wav');
% n = 0:length(x);
% y = ec1(n,x);
% 
% % Comienzan a aplicarse los filtros
% 
% % Filtro de 1 rama
% yfilt= filtro(n,y);
% subplot(3,1,1);
% plot(yfilt);
% title('Filtrado con 1 rama de retardo');
% xlabel('Instantes (n)');
% ylabel('Amplitud (x)');
% grid on;
% sound(yfilt,length(x))
% pause(3);
% 
% 
% % Filtro de 2 ramas
% yfilt2= filtro2(n,y);
% subplot(3,1,2);
% plot(yfilt2);
% title('Filtrado con 2 ramas de retardo');
% xlabel('Instantes (n)');
% ylabel('Amplitud (x)');
% grid on;
% sound(yfilt2,length(x));
% pause(3);
% 
% 
% % Filtro de 3 ramas
% yfilt3= filtro3(n,y);
% subplot(3,1,3);
% plot(yfilt3);
% title('Filtrado con 3 ramas de retardo');
% xlabel('Instantes (n)');
% ylabel('Amplitud (x)');
% grid on;
% sound(yfilt3,length(x));
