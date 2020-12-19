%SIMULACIÓN 5-A
t=0:0.01:30;%Tiempo en meses
x_0=150;%Cantidad inicial de armas 
alpha1=0.0000000001;%Tasa del costo del armamento
alpha2=0.8;%..
alpha3=0.04;%..
g1=0.04;%Tasa de ambición
g2=0.002;%..
g3=0.9;%...
x_t1=(x_0-(g1/alpha1))*exp(-alpha1.*t)+(g1/alpha1);
x_t2=(x_0-(g2/alpha2))*exp(-alpha2.*t)+(g2/alpha2);
x_t3=(x_0-(g3/alpha3))*exp(-alpha3.*t)+(g3/alpha3);

plot(t,x_t1,'b')
hold on
plot(t,x_t2,'r')
hold on
plot(t,x_t3,'g')
xlabel('Tiempo [Meses]')
ylabel(' Armamento [x(t)]')