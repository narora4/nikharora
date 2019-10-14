%1B
normcdf(0.7)
normcdf(1.7)
normcdf(2.3)
%1C
norminv(0.7580)
erfcinv(0.7580)
%2
x = linspace(0,30,100000);
pd = makedist('Rayleigh', 'b' , 500);
pl1 = plot(x,pdf(pd,x), "linewidth" , 2);
fx = raylcdf(pdf(pd,x),2);
total= mean(fx)
%3
%Choosing to measure the probability that a point is behind the peak
unc = pdf(pd,x); 
inc = erfcinv(unc);
err = immse(unc, inc);
p = mean(pdf(pd,x));
int = raylcdf(unc,2);
inT = 1000*sum(int);
sigma = sqrt(2/pi)* p;
variance = (sigma^2)*((4-pi)/2);
probab1 = 1 - exp(-(p^2)/(2*sigma^2));
%alpha = zeros(1,30);
%for x1 = 1:30
    %alpha(1,x1) =(log(1-inT))/(log(1-exp(-(theta/x1)^2)));
%end
%Non-continous
sample = 0:1:20 ;
pdrn = makedist('Poisson' , 'lambda' , 4);
stairs(sample,100*pdf(pdrn,sample));
eqnp = 100*pdf(pdrn,sample);
p1 = mean(eqnp);
theta = (std(eqnp))^2;
lambda = 4;
%trying to determine the probability if that 'i' number of detected gamma rays
%will be detected proves why i can't be 9.2 but 9 or 10 instead
i = input('probability of detecting total number of gamma rays =');
probab = 1-(lambda^i *(exp(-i))/(factorial(i)))
%trying poisson with a different lambda 
pdrn1 = makedist('Poisson', 'lambda', 7);
stairs(sample,pdf(pdrn1,sample));


    

    
    