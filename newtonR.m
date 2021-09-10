% Una implementacion del metodo de regla Newton-Raphson para busqueda de raices en un 
% invervalo  dado 
function xs=newtonR(f,fdev,x,total)
  fprintf('|Metodo de Newton-Raphson|\n\n');
  i=1;
  error=2;
  %PRIMERA ITERACION
  fvalor=feval(f,x);
  fdevvalor=feval(fdev,x);
  xs=x-(fvalor/fdevvalor);
  error=abs(xs-x);
  %CAMBIANDO LAS VARIABLES
  x=xs;
  fvalor=feval(f,x);
  fdevvalor=feval(fdev,x);
  %PRIMERA IMPRESION
  fprintf('|Iter. \t xr \t\t ea |\n');
  fprintf('|%2i \t %f \t %f|\n', i, xs, error);
  %CICLO DE REPETICION
  while error>total
    xs=x-(fvalor/fdevvalor);
    error=abs(xs-x);
    x=xs;
    fvalor=feval(f,x);
    fdevvalor=feval(fdev,x);
    i = i + 1;
    fprintf('|%2i \t %f \t %f|\n', i, xs, error);
  end %while
  %IMPRESION DE RESULTADOS 
   fprintf('\n| La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones|\n', total, xs, i);

