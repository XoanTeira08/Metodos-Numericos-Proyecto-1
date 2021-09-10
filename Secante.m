fprintf('Funcion de Secante\n');
f = input("Ingresa la funcion:","s")
x1 = input("Ingrese el punto x_-1(X sub menos 1): ")
x2 = input("Ingrese el punto x_0(X sub cero): ")
porerror = input("Porcentaje del error:")
ezplot(f)%crear grafica
grid on %crear cuadricula
f = inline(f);%evaluacion de la funcion//
conterror = 100; %contador de porcentaje de error//
i = 1; %Contador de interacciones
fprintf("_________________________________________\n");
fprintf('No Interacion               Evaluacion\n');
fprintf("_________________________________________\n");
while conterror>porerror
  xi = x2-(f(x2)*(x1-x2))/(f(x1)-f(x2));
  conterror = abs(((x1-x2)/xi)*100);
  fprintf("%4.0f                         %8.10f\n",i,xi);
  x1 = x2;
  x2 = xi;
  i = i+1;
end
fprintf("_________________________________________\n");
fprintf("\n\nRespuesta de la funcion es: %8.9f\nCalculada en %.0f Interacciones\n",x1,(i-1));