normcdf(0.7)
norminv(0.7580)
erfcinv(0.7580)
%y = rand(10^4)

x = 0:50:100000;
pd = makedist('Rayleigh', 'b' , 8);
subplot(1,1,1);
plot(x,pdf(pd,x), "linewidth" , 2)
I = cdf('Rayleigh',pdf(pd,x),x);
plot(x,I, "linewidth", 4)
subplot(2,1,1);
w = icdf(pd,x);
plot(x,w,"Linewidth" , 4);
maxw = max(w);