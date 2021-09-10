% Una implementacion del metodo de regla falsa para busqueda de raices en un 
% invervalo  dado 
function xr=reglaFalsa(fun,a,b,tol)
  fprintf('Metodo de Regla Falsa\n\n');
  i=1;
  
  %EVALUACION DE VALORES PARA DEMOSTRAR EXISTENCIA EN EL INTERVALO 
  fa=feval(fun, a);
  fb=feval(fun, b);
  
  if (fa*fb)<0
    
    %PRIMERA ITERACION
    xr=b-((fb*(a-b))/(fa-fb));
    error=abs(a-b);
    xa=xr;
    fxr=feval(fun, xr);
    
    %CAMBIO DE A Y B
    if (fa*fxr)<0
      b=xr;
    else
      a=xr;
    endif
    
    %IMPRESION
    fprintf('Iter. \t xr \t\t ea \n');
    fprintf('%2i \t %f \t %f\n', i, xr, error);
    
    %CICLO DE REPETICION
    while (error>=tol)
      fa=feval(fun, a);
      xr=b-((fb*(a-b))/(fa-fb));
      error = abs((xr - xa)/xr)*100;
      xa=xr;
      fxr=feval(fun, xr);
      if (fa*fxr)<0
        b=xr;
      else
        a=xr;
      endif
      i = i + 1;
      fprintf('%2i \t %f \t %f\n', i, xr, error);
    endwhile
    fprintf('\n La mejor aproximacion a la raiz tomando una tolerancia de %f es x = %f \n y se realizaron %i iteraciones\n', tol, xr, i);
  else
    disp("La solucion no esta en el intervalo");
  endif
end