function xs=newtonR(f,fdev,x,total)
  fprintf('Metodo de Newton-Raphson\n\n');
  i=1;
  error=2;
  fvalor=feval(f,x);
  fdevvalor=feval(fdev,x);
  xs=x-(fvalor/fdevvalor);
  error=abs(xs-x);
  x=xs;
  fvalor=feval(f,x);
  fdevvalor=feval(fdev,x);
  fprintf('Iter. \t xr \t\t ea \n');
  fprintf('%2i \t %f \t %f\n', i, xs, error);
  while error>total
    xs=x-(fvalor/fdevvalor);
    error=abs(xs-x);
    x=xs;
    fvalor=feval(f,x);
    fdevvalor=feval(fdev,x);
    i = i + 1;
    fprintf('%2i \t %f \t %f\n', i, xs, error);
  end %while
   fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', total, xs, i);

