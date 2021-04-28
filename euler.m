function [tt, yy] = euler(f,t0,y0,h,N)
 k = N+1;
 tt = zeros(k,1);
 yy = zeros(k,1);
 tt(1) = t0;
 yy(1) = y0;
 for i = 2:k
 tt(i) = tt(i-1) + h;
 m = f(tt(i-1),yy(i-1));
 yy(i) = yy(i-1) + h*m;
 end
end