% Programa para la cinematica inversa 
while true
    % Solicitar al usuario que ingrese los tres números
    Px = input('Ingrese Px: ');
    Py = input('Ingrese Py: ');
    Pz = input('Ingrese Pz: ');

    % Calcular theta1 
    theta1 = atan2(Py, Px);

    theta3 = 0;
    theta4 = 0;

    if theta1 < (0)
        theta11 = theta1+pi;
    end

% Cálculo de términos individuales
term1 = 29 * sin(theta3);
term2 = 1218 * cos(theta3) + 841 * cos(theta3)^2 - 4 * Px^2 * cos(theta1)^2 + 841 * sin(theta3)^2 - 4 * Py^2 * sin(theta1)^2 - 588 * cos(1571 / 1000) * cos(theta3) * sin(theta4) - 588 * cos(1571 / 1000) * cos(theta4) * sin(theta3) + 588 * sin(1571 / 1000) * cos(theta3) * cos(theta4) + 196 * cos(1571 / 1000)^2 * cos(theta3)^2 * cos(theta4)^2 + 196 * cos(1571 / 1000)^2 * cos(theta3)^2 * sin(theta4)^2 + 196 * cos(1571 / 1000)^2 * cos(theta4)^2 * sin(theta3)^2 + 196 * sin(1571 / 1000)^2 * cos(theta3)^2 * cos(theta4)^2 - 588 * sin(1571 / 1000) * sin(theta3) * sin(theta4) + 196 * cos(1571 / 1000)^2 * sin(theta3)^2 * sin(theta4)^2 + 196 * sin(1571 / 1000)^2 * cos(theta3)^2 * sin(theta4)^2 + 196 * sin(1571 / 1000)^2 * cos(theta4)^2 * sin(theta3)^2 + 196 * sin(1571 / 1000)^2 * sin(theta3)^2 * sin(theta4)^2 - 812 * cos(1571 / 1000) * cos(theta3)^2 * sin(theta4) + 812 * sin(1571 / 1000) * cos(theta3)^2 * cos(theta4) - 812 * cos(1571 / 1000) * sin(theta3)^2 * sin(theta4) + 812 * sin(1571 / 1000) * cos(theta4) * sin(theta3)^2 - 8 * Px * Py * cos(theta1) * sin(theta1) + 441;
term3 = sqrt(term2);
term4 = 14 * cos(1571 / 1000) * cos(theta3) * cos(theta4) - 14 * cos(1571 / 1000) * sin(theta3) * sin(theta4) + 14 * sin(1571 / 1000) * cos(theta3) * sin(theta4) + 14 * sin(1571 / 1000) * cos(theta4) * sin(theta3);
term5 = 29 * cos(theta3) + 2 * Px * cos(theta1) + 2 * Py * sin(theta1) - 14 * cos(1571 / 1000) * cos(theta3) * sin(theta4) - 14 * cos(1571 / 1000) * cos(theta4) * sin(theta3) + 14 * sin(1571 / 1000) * cos(theta3) * cos(theta4) - 14 * sin(1571 / 1000) * sin(theta3) * sin(theta4) + 21;

% Cálculo de theta2
theta2 = -2 * atan((term1 - term3 + term4) / term5);



    
    % Convertir theta1, theta2, theta3 y theta4 de radianes a grados
    if theta1 >= 0
    theta1a = theta1 * (180 / pi);
    theta2a = theta2 * (180 / pi);
    end

    if theta1 < 0
        theta1a = theta11 * (180 / pi);
        theta2a = abs((theta2 - pi) * (180 / pi));
    end



    % Imprimir los ángulos
    fprintf('theta 1: %g\n', theta1a);
    fprintf('theta 2: %g\n', theta2a);

    % Preguntar al usuario si quiere repetir
    again = input('¿Desea repetir? Presione cualquier tecla excepto "f" para repetir, o presione "f" para salir: ','s');
    if strcmpi(again, 'f')
        break; % Salir del bucle si se ingresa "f"
    end
end

