probab = 1/6; %probability of rolling any one number on one six sided dice
%question1
prob1 = probab*probab;% probability of rolling two ones'
prob2 = 6/36; %probability of rolling a seven there are 6 different ways it can happen out of total 36
%Thus more probable to roll a sum of seven on two dices is more
%2 
probabd2 = [];
i = [6,5,4,3,2,1];
j = [1,2,3,4,5];
for i = i
    prob = (i-1)/36 ;
    probabd2(i) = prob;
    i = i+1;
end

for j = 6:-1:1
    prob = (j-1)/36;
    probab1(j) = prob
    j = j - 1;
end
B = sort(probab1, 'descend');
Ans = [probabd2 , B];
plot(1:12,Ans);
%3 
%I calculate the mean and variance of the probability distribution
m = Ans(2:10);
mean = mean(m);%just shows a warning the value is still being calculated
variance = var(Ans);
%4
%Since with 10 dices now we can make a binomial function using a and b are
%the two binomial coeffecients and we try to take out the probability of rolling a  
ans4 = [];
%a = [10 ; i];
%b = [10+20-1-6*1i ; 20-6*1i];
%j = [1:50] we can use this instead to take out probabilities of different
%sums on the 10 dice system as while making our binomial coefficients we
%get a x^10 term on the outside thus all possible sums in the 10 dice
%system have to reduced by 10 since the coefficient of the x^j is the
%number of time the dice will roll and add upto the number j. Also w
%account for the mirror image elements by multiplying a two. Here we
%calculate the probability of rolling a total sum of 30.
j = 20 ;
for i2 = 1:3
    fx(i2) = ((-1)^i2).*nchoosek(10, i2).*nchoosek(10+j-1-6*i2, j- 6*i2);
    ans4 = 2*abs(sum(fx(i2)));
end
probability = ans4/6^10 ; 
%similar to the graph of a two dice system a ten dice system will also have
%a gaussian distribution as the highest number of chances of getting will
%always be at halfway of the total highest sum i.e. 30 thus the graph will
%peak at 15 similar to the one produced by the code below
%x = 0:30;
%f = normpdf(x,15 ,5);
%plot(x,f);

%5
%variance can be given by var(fx) thuse stdev = sqrt(var(fx)) we can see
%that the variance inreases dractically thus translating this on
%detections/while recieving a signal the possibility of added noise
%increases with time thus may be difficult to clear out the noise and see
%what one is looking for
