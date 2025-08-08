% =========================================================================
% Alumno: Jonathan Meixueiro
% Matrícula: 240694
% Asesor: Claudio Hiram Carmona Jurado
%
% Ejercicio 25.2: Método de Euler (h = 0.5 y h = 0.25) vs. solución analítica
% EDO: dy/dx = yx^2 - 1.1y, con y(0) = 1
% =========================================================================

clc;
clear;
close all;

% --- Solución analítica ---
x_exacta = linspace(0, 2, 100);
y_exacta = exp((x_exacta.^3)/3 - 1.1 .* x_exacta);

% --- Método de Euler con h = 0.5 ---
h1 = 0.5;
x1 = 0:h1:2;
y1 = zeros(size(x1));
y1(1) = 1;

for n = 1:length(x1)-1
    f = y1(n)*(x1(n)^2 - 1.1);
    y1(n+1) = y1(n) + h1 * f;
end

% --- Método de Euler con h = 0.25 ---
h2 = 0.25;
x2 = 0:h2:2;
y2 = zeros(size(x2));
y2(1) = 1;

for n = 1:length(x2)-1
    f = y2(n)*(x2(n)^2 - 1.1);
    y2(n+1) = y2(n) + h2 * f;
end

% --- Gráfica comparativa ---
plot(x_exacta, y_exacta, 'k-', 'LineWidth', 2); hold on;
plot(x1, y1, 'ro--', 'LineWidth', 1.5, 'MarkerSize', 6);
plot(x2, y2, 'bs--', 'LineWidth', 1.5, 'MarkerSize', 6);
grid on;

xlabel('x');
ylabel('y');
title('Comparación: Solución Analítica vs Método de Euler (h=0.5 y h=0.25)');
legend('Solución Analítica', 'Euler h=0.5', 'Euler h=0.25', 'Location', 'northwest');
