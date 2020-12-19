%%Punto 2
t_inicial=0;%Tiempo incial
t_final=130;%Tiempo final
s_0=900;%numero inicial de personas susceptibles a la enfermedad.
i_0=300;%numero inicial de personas infectadas individualmente.
b=0.05;%tasa de personas susceptibles.
k=0.755;%tasa de personas infectadas.
N=1e6;%Numero de muestras
initial=[s_0;i_0];
h=(t_final-t_inicial)/N;%Escalamineto
f=initial;
S(1)=f(1);
I(1)=f(2);
for n=1:N
 k1=[-b*f(1)*f(2);b*f(1)*f(2)-k*f(2)];
 k2=[-b*((f(1)+(1/2)*h*k1(1))*(f(2)+(1/2)*h*k1(2)));b*((f(1)+(1/2)*h*k1(1))*(f(2)+(1/2)*h*k1(2)))-k*(f(2)+(1/2)*h*k1(2))];
 k3=[-b*((f(1)+(1/2)*h*k2(1))*(f(2)+(1/2)*h*k2(2)));b*((f(1)+(1/2)*h*k2(1))*(f(2)+(1/2)*h*k2(2)))-k*(f(2)+(1/2)*h*k2(2))];
 k4=[-b*((f(1)+h*k3(1))*(f(2)+h*k3(2)));b*((f(1)+h*k3(1))*(f(2)+h*k3(2)))-k*(f(2)+h*k3(2))];
 f = f + (h/6)*(k1 + (2*k2) + (2*k3) + k4);
 S(n+1) = f(1);
 I(n+1) = f(2);
end
figure()
plot(S,I,'--b','Linewidth',2)
title('Personas Susceptibles vs Persnas Infectadas');
xlabel('Personas Susceptibles');
ylabel('Personas infectadas')


