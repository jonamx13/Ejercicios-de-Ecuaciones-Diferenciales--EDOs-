% =========================================================================
% Alumno: Jonathan Meixueiro
% Matrícula: 240694
% Asesor: Claudio Hiram Carmona Jurado
%
% Ejercicio 25.11 - Sistema de EDOs
% dy/dx = -2y + 4*exp(-x)
% dz/dx = -(y*z^2)/3
% =========================================================================

clear;
clc;
close all;

% ===== Datos iniciales =====
x0 = 0;           % valor inicial de x
y0 = 1;           % valor inicial de y
z0 = 2;           % valor inicial de z
h  = 0.25;        % tamaño de paso
xf = 2;           % valor final de x

% Número de pasos
N = round((xf - x0)/h);

% ===== Funciones del sistema =====
fy = @(x,y) -2*y + 4*exp(-x);
fz = @(x,y,z) -(y*z^2)/3;

% ===== Método de Euler =====
x_e = zeros(N+1,1); y_e = zeros(N+1,1); z_e = zeros(N+1,1);
x_e(1) = x0; y_e(1) = y0; z_e(1) = z0;

for i = 1:N
    x_e(i+1) = x_e(i) + h;
    y_e(i+1) = y_e(i) + h * fy(x_e(i), y_e(i));
    z_e(i+1) = z_e(i) + h * fz(x_e(i), y_e(i), z_e(i));
end

% ===== Método RK4 =====
x_r = zeros(N+1,1); y_r = zeros(N+1,1); z_r = zeros(N+1,1);
x_r(1) = x0; y_r(1) = y0; z_r(1) = z0;

for i = 1:N
    % k y
    k1y = fy(x_r(i), y_r(i));
    k1z = fz(x_r(i), y_r(i), z_r(i));

    k2y = fy(x_r(i)+h/2, y_r(i)+h/2*k1y);
    k2z = fz(x_r(i)+h/2, y_r(i)+h/2*k1y, z_r(i)+h/2*k1z);

    k3y = fy(x_r(i)+h/2, y_r(i)+h/2*k2y);
    k3z = fz(x_r(i)+h/2, y_r(i)+h/2*k2y, z_r(i)+h/2*k2z);

    k4y = fy(x_r(i)+h, y_r(i)+h*k3y);
    k4z = fz(x_r(i)+h, y_r(i)+h*k3y, z_r(i)+h*k3z);

    % actualización
    y_r(i+1) = y_r(i) + (h/6)*(k1y + 2*k2y + 2*k3y + k4y);
    z_r(i+1) = z_r(i) + (h/6)*(k1z + 2*k2z + 2*k3z + k4z);
    x_r(i+1) = x_r(i) + h;
end

% ===== Tabla de resultados =====
fprintf('Metodo Euler:\n');
fprintf('i\t x_i\t\t y_i\t\t z_i\n');
for i = 1:N+1
    fprintf('%d\t %.4f\t %.6f\t %.6f\n', i-1, x_e(i), y_e(i), z_e(i));
end

fprintf('\nMetodo RK4:\n');
fprintf('i\t x_i\t\t y_i\t\t z_i\n');
for i = 1:N+1
    fprintf('%d\t %.4f\t %.6f\t %.6f\n', i-1, x_r(i), y_r(i), z_r(i));
end

% ===== Gráfica =====
figure;
subplot(2,1,1)
plot(x_e, y_e, 'ro-', x_r, y_r, 'b*-','LineWidth',1.2);
xlabel('x'); ylabel('y');
title('Comparación Método Euler vs RK4 - y(x)');
legend('Euler','RK4','Location','Best');
grid on;

subplot(2,1,2)
plot(x_e, z_e, 'ro-', x_r, z_r, 'b*-','LineWidth',1.2);
xlabel('x'); ylabel('z');
title('Comparación Método Euler vs RK4 - z(x)');
legend('Euler','RK4','Location','Best');
grid on;
