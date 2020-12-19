%Metodo de Runge Kutta
t_inicial=0;%Tiempo incial
t_final=200;%Tiempo final
y_0=720;%Atrmamento inicial de la nación Y
x_0=720;%Armamento inicial de la nación X
k=0.005;%Tasa de crecimiento del Armamento X
l=0.004;%.....                             Y
alpha=0.295;%Tasa de costo del armaneto de la nacion X
beta=0.3668;%.......                                  Y
g=10e4;%Ambición de la nacion X
q=10e4;%........              Y
initial=[x_0;y_0];
N=130;%Numero de muestras
h=(t_final-t_inicial)/N;%Escalamineto
y=initial;
X(1)=y(1);
Y(1)=y(2);
for n=1:N
    k1=[k*y(2)-alpha*y(1)+g;l*y(1)-beta*y(1)+q];
    k2=[k*(y(2)+(1/2)*h*k1(2))-alpha*(y(1)+(1/2)*h*k1(1))+g;l*(y(1)+(1/2)*h*k1(1))-beta*(y(1)+(1/2)*h*k1(1))+q];
    k3=[k*(y(2)+(1/2)*h*k2(2))-alpha*(y(1)+(1/2)*h*k2(1))+g;l*(y(1)+(1/2)*h*k2(1))-beta*(y(1)+(1/2)*h*k2(1))+q];
    k4=[k*(y(2)+h*k3(2))-alpha*(y(1)+h*k3(1))+g;l*(y(1)+h*k3(1))-beta*(y(1)+h*k3(1))+q];
    y = y + (h/6)*(k1 + (2*k2) + (2*k3) + k4);
    X(n+1) = y(1);
    Y(n+1) = y(2);
end
t = t_inicial:h:t_final;
figure(2)
plot(t,X,'--b','Linewidth',2)
hold on
plot(t,Y,'--r','Linewidth',2) 
title('Armamento de las Naciones Y y X');
xlabel('Tiempo (Meses)');
ylabel('Armamento')