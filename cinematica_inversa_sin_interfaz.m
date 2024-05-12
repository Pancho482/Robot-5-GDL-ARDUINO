   % Cinematica inversa robot 16/04/24
   % Mostrar matrices DH
    syms d1 a2 a3 d5 theta1 theta2 theta3 theta4 theta5 Nx Ox Ax Px Ny Oy Ay Py Nz Oz Az Pz;
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
  
    invA01 = simplify(inv(A01));
    invA12 = simplify(inv(A12));
    invA23 = simplify(inv(A23));
    invA34 = simplify(inv(A34));
    invA45 = simplify(inv(A45));
 
    % Multiplicar matrices obtenidas y simplificar
    DH = [Nx, Ox, Ax, Px; Ny, Oy, Ay, Py; Nz, Oz, Az, Pz; 0, 0, 0, 1];
    
    disp('DH con valores simplificados:');
    disp(vpa(DH, 4));
    disp('Matriz Inversa de A01:');
    disp(vpa(invA01, 4));
    disp('Matriz Inversa de A12:');
    disp(vpa(invA12, 4));
    disp('Matriz Inversa de A23:');
    disp(vpa(invA23, 4));
    disp('Matriz Inversa de A34:');
    disp(vpa(invA34, 4));
    disp('Matriz Inversa de A45:');
    disp(vpa(invA45, 4));

    disp('Matriz ((A01)^-1)*DH:');
    DH1 = simplify(inv(A01)*DH);
    disp(vpa(DH1, 4));
    disp('Matriz A15:');
    A15 = simplify(A12*A23*A34*A45);
    disp(vpa(A15, 4));

    disp('Matriz ((A01)^-1)*(A12)^-1)*DH:');
    DH2 = simplify(inv(A01)*inv(A12)*DH);
    disp(vpa(DH2, 4));
    disp('Matriz A25:');
    A25 = simplify(A23*A34*A45);
    disp(vpa(A25, 4));

    disp('Matriz ((A01)^-1)*(A12)^-1)*(A23)^-1)*DH:');
    DH3 = simplify(inv(A01)*inv(A12)*inv(A23)*DH);
    disp(vpa(DH3, 4));
    disp('Matriz A35:');
    A35 = simplify(A34*A45);
    disp(vpa(A35, 4));

    disp('Matriz ((A01)^-1)*(A12)^-1)*(A23)^-1)*(A34)^-1)*DH:');
    DH4 = simplify(inv(A01)*inv(A12)*inv(A23)*inv(A34)*DH);
    disp(vpa(DH4, 4));
    disp('Matriz A45:');
    A45 = simplify(A45);
    disp(vpa(A45, 4));

    % De la Matriz ((A01)^-1)*DH sacamos el termino de la cuarta columna y tercer renglon
    % A lo cual tenemos lo siguiente 6.123e-17*Pz - 1.0*Py*cos(theta1) + Px*sin(theta1) - 1.225e-16
    % Despreciando valores tenemos - 1.0*Py*cos(theta1) + Px*sin(theta1)
    % De la Matriz A15 de la cuarta columna y tercer renglon tenemos 0
    % Por lo tanto tenemos que - 1.0*Py*cos(theta1) + Px*sin(theta1) = 0

    % Tenemos que theta1 = atan2(Px, Py)

    % De la Matriz ((A01)^-1)*DH sacamos el termino de la cuarta columna y primer renglon
    % A lo cual tenemos lo siguiente Px*cos(theta1) + Py*sin(theta1)
    % De la Matriz A15 de la cuarta columna y primer renglon tenemos 14.5*cos(theta2 + theta3) - 7.0*sin(theta2 + theta3 + theta4 - 1.571) + 10.5*cos(theta2)
    % Por lo tanto tenemos que  Px*cos(theta1) + Py*sin(theta1) == 14.5*cos(theta2 + theta3) - 7.0*sin(theta2 + theta3 + theta4 - 1.571) + 10.5*cos(theta2)
    
   syms theta1 theta2 theta3 theta4 Px Py Pz

   % Define la ecuación
   ecu =  Px*cos(theta1) + Py*sin(theta1) == 14.5*cos(theta2 + theta3) - 7.0*sin(theta2 + theta3 + theta4 - 1.571) + 10.5*cos(theta2);

   % Resuelve la ecuación para theta2
   sol_theta2 = solve(ecu, theta2, 'Real', true);

   % Muestra la solución
   disp(sol_theta2)

   % Tenemos que theta2 = -2*atan((29*sin(theta3) - (1218*cos(theta3) + 841*cos(theta3)^2 - 4*Px^2*cos(theta1)^2 + 841*sin(theta3)^2 - 4*Py^2*sin(theta1)^2 - 588*cos(1571/1000)*cos(theta3)*sin(theta4) - 588*cos(1571/1000)*cos(theta4)*sin(theta3) + 588*sin(1571/1000)*cos(theta3)*cos(theta4) + 196*cos(1571/1000)^2*cos(theta3)^2*cos(theta4)^2 + 196*cos(1571/1000)^2*cos(theta3)^2*sin(theta4)^2 + 196*cos(1571/1000)^2*cos(theta4)^2*sin(theta3)^2 + 196*sin(1571/1000)^2*cos(theta3)^2*cos(theta4)^2 - 588*sin(1571/1000)*sin(theta3)*sin(theta4) + 196*cos(1571/1000)^2*sin(theta3)^2*sin(theta4)^2 + 196*sin(1571/1000)^2*cos(theta3)^2*sin(theta4)^2 + 196*sin(1571/1000)^2*cos(theta4)^2*sin(theta3)^2 + 196*sin(1571/1000)^2*sin(theta3)^2*sin(theta4)^2 - 812*cos(1571/1000)*cos(theta3)^2*sin(theta4) + 812*sin(1571/1000)*cos(theta3)^2*cos(theta4) - 812*cos(1571/1000)*sin(theta3)^2*sin(theta4) + 812*sin(1571/1000)*cos(theta4)*sin(theta3)^2 - 8*Px*Py*cos(theta1)*sin(theta1) + 441)^(1/2) + 14*cos(1571/1000)*cos(theta3)*cos(theta4) - 14*cos(1571/1000)*sin(theta3)*sin(theta4) + 14*sin(1571/1000)*cos(theta3)*sin(theta4) + 14*sin(1571/1000)*cos(theta4)*sin(theta3))/(29*cos(theta3) + 2*Px*cos(theta1) + 2*Py*sin(theta1) - 14*cos(1571/1000)*cos(theta3)*sin(theta4) - 14*cos(1571/1000)*cos(theta4)*sin(theta3) + 14*sin(1571/1000)*cos(theta3)*cos(theta4) - 14*sin(1571/1000)*sin(theta3)*sin(theta4) + 21))
