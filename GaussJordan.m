function solucion=gj(a)
  for m=1: rows(a)
     k = a(m,m);
     a(m,:) = a(m,:)/k;
     for n=1 : rows(a)
       if n != m
         k=a(n,m);
         a(n,:)=a(n,:)-k*a(m,:);
       endif
     endfor
   endfor
   solucion=a(:, columns(a));
endfunction