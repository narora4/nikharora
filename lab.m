%1B
normcdf(0.7)
normcdf(1.7)
normcdf(2.3)
norminv(0.7580)
erfcinv(0.7580)
%2
x = linspace(0,30,100000);
pd = makedist('Rayleigh', 'b' , 2);
plot(x,pdf(pd,x), "linewidth" , 2);
%3
%Choosing to measure the probability that a point is behind the peak
unc = pdf(pd,x); 
inc = erfcinv(unc);
err = immse(unc, inc);
p = mean(pdf(pd,x));
sigma = sqrt(2/pi)* p;
variance = (sigma^2)*((4-pi)/2);
probab1 = 1 - exp(-(p^2)/(2*sigma^2));

%Non-continous
sample = 0:1:20 ;
pdrn = makedist('Poisson' , 'lambda' , 4);
stairs(sample,100*pdf(pdrn,sample));
eqnp = 100*pdf(pdrn,sample);
p1 = mean(eqnp);
variance = (std(eqnp))^2;
lambda = median(eqnp)- (1/3);
%trying to determine the probability that if number of detected gamma rays
%can be a fraction
i = input('probability of detecting total number of gamma rays =');
probab = 1-(lambda^i *(exp(-i))/(factorial(i)))

    

    
    