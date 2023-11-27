 %function pr=prime(n)

 tic

 n=10e6;
  %just makes a vector with all prime numbers from 1 to n
  %no error check, I leave that simple task to you
  np=1;c=0;
  pr=zeros(1,n);
  while np<=n;
      if isprime(np);
          c=c+1;
          pr(c)=np;
      end
      np=np+1;
      
  end
  
  pr=pr(1:c);


toc 


  