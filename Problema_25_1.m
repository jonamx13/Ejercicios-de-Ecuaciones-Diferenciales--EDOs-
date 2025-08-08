% =========================================================================
% Alumno: Jonathan Meixueiro
% Matrícula: 240694
% Asesor: Claudio Hiram Carmona Jurado
%
% Método: Solución analítica del problema de valores iniciales
% Ejercicio 25.1: dy/dx = y * x^2 - 1.1 * y, con y(0) = 1
% =========================================================================

clc;
clear;
close all;

% Definimos el intervalo de x
x = linspace(0, 2, 100);  % 100 puntos entre 0 y 2

% Definimos la solución analítica y(x)
y = exp((x.^3)/3 - 1.1 .* x);

% Graficamos la solución
plot(x, y, 'LineWidth', 2);
grid on;
xlabel('x');
ylabel('y(x)');
title('Solución Analítica de dy/dx = yx^2 - 1.1y, con y(0) = 1');
legend('Solución Analítica', 'Location', 'northwest');
