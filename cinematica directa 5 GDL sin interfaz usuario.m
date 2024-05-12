
    syms theta1 theta2 theta3 theta4 theta5;
    d1 = 2;
    a2 = 10.5;
    a3 = 14.5;
    d5 = 7;


    % Matriz de transformación homogénea para la articulación 1 (A01)
    HRZd = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, d1; 0, 0, 0, 1]);
    HRZa = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZalfa = vpa([1, 0, 0, 0; 0, cos(pi/2), -sin(pi/2), 0; 0, sin(pi/2), cos(pi/2), 0; 0, 0, 0, 1]);
    HRZtheta = vpa([cos(theta1), -sin(theta1), 0, 0; sin(theta1), cos(theta1), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    A01 = HRZtheta * HRZd * HRZa * HRZalfa;

    % Simplificar y mostrar solo 4 decimales
    disp('Matriz A01:');
    disp(vpa(A01, 4));

    % Matriz de transformación homogénea para la articulación 2 (A12)
    HRZd2 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZa2 = vpa([1, 0, 0, a2; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZalfa2 = vpa([1, 0, 0, 0; 0, cos(0), -sin(0), 0; 0, sin(0), cos(0), 0; 0, 0, 0, 1]);
    HRZtheta2 = vpa([cos(theta2), -sin(theta2), 0, 0; sin(theta2), cos(theta2), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    A12 = HRZtheta2 * HRZd2 * HRZa2 * HRZalfa2;

    % Simplificar y mostrar solo 4 decimales
    disp('Matriz A12:');
    disp(vpa(A12, 4));

    % Matriz de transformación homogénea para la articulación 3 (A23)
    HRZd3 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZa3 = vpa([1, 0, 0, a3; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZalfa3 = vpa([1, 0, 0, 0; 0, cos(0), -sin(0), 0; 0, sin(0), cos(0), 0; 0, 0, 0, 1]);
    HRZtheta3 = vpa([cos(theta3), -sin(theta3), 0, 0; sin(theta3), cos(theta3), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    A23 = HRZtheta3 * HRZd3 * HRZa3 * HRZalfa3;

    % Simplificar y mostrar con 4 decimales
    disp('Matriz A23:');
    disp(vpa(A23, 4));

    % Matriz de transformación homogénea para la articulación 4 (A34)
    HRZd4 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZa4 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZalfa4 =  vpa([1, 0, 0, 0; 0, cos(-pi/2), -sin(-pi/2), 0; 0, sin(-pi/2), cos(-pi/2), 0; 0, 0, 0, 1]);
    HRZtheta4 = vpa([cos(theta4-pi/2), -sin(theta4-pi/2), 0, 0; sin(theta4-pi/2), cos(theta4-pi/2), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    A34 = HRZtheta4 * HRZd4 * HRZa4 * HRZalfa4;

    % Simplificar y mostrar solo 4 decimales
    disp('Matriz A34:');
    disp(vpa(A34, 4));

    % Matriz de transformación homogénea para la articulación 5 (A45)
    HRZd5 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, d5; 0, 0, 0, 1]);
    HRZa5 = vpa([1, 0, 0, 0; 0, 1, 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    HRZalfa5 = vpa([1, 0, 0, 0; 0, cos(0), -sin(0), 0; 0, sin(0), cos(0), 0; 0, 0, 0, 1]);
    HRZtheta5 = vpa([cos(theta5), -sin(theta5), 0, 0; sin(theta5), cos(theta5), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1]);
    A45 = HRZtheta5 * HRZd5 * HRZa5 * HRZalfa5;

    % Simplificar y mostrar solo 4 decimales
    disp('Matriz A45:');
    disp(vpa(A45, 4));

    % Calcula y muestra la matriz DH
    DH = simplify(A01 * A12 * A23 * A34 * A45);

    % Muestra el resultado con 4 decimales
    disp('D-H haciendo la multiplicación de matrices:');
    disp(vpa(DH, 4));
