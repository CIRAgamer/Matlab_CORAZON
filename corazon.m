
t = linspace(0, 2*pi, 1000);  %vector t
%%%%%%Corazón
x = 48*sin(t).^3;   
y = 39*cos(t) - 15*cos(2*t) - 6*cos(3*t) - 3*cos(4*t);
%%%%%%%%%PArametros de la grafica
figure('Name','Corazón');
title('Para ti mibida');
grid on;
hold on;
xlim([-50 50]);
ylim([-50 50]);
plot(x, y,'r')
axis equal
%%%%%%%IMG leer y rotar
img = imread('descarga.jfif');
img_rot = imrotate(img, -180);
%%%%%%rectandulo para poner img
ladoinf = 25; 
ladosup= 35;
x_centro = 0; 
y_centro = -10; 

inf_der = x_centro - ladoinf/2; 
inf_izq = y_centro - ladoinf/2; 

rectangle('Position', [inf_der, inf_izq, ladoinf, ladosup],'FaceColor', 'w')
axis equal

x_image = [inf_der inf_der+ladoinf];
y_image = [inf_izq inf_izq+ladosup];
image(x_image, y_image, img_rot)




%%%TKM uvita <3