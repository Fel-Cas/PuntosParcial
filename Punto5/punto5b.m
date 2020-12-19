%SIMULACION 5-B
t=0:0.01:12;%Tiempo en meses
y_0=10e2;%Cantidad inicial de armas 
beta=0.9;%Tasa del costo del armamento
h1=0.9;%Tasa de ambición
h2=0.4;
h3=0.5;
y_t1=h1.*t+y_0;
y_t2=h2.*t+y_0;
y_t3=h3.*t+y_0;

plot(t,y_t1,'r')
hold on
plot(t,y_t2,'b')
hold on
plot(t,y_t3,'g')
xlabel('Tiempo [Meses]')
ylabel(' Armamento [y(t)]')