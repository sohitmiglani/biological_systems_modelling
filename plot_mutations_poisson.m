## Question 1, Part (e) - Simulating the number of mutations in 20000 Cultures with 600 cells in each culture with lower probabilities.

C = 20000
N = 600
p = 0.25

new = simulate_mutations(C, N, p);
b = 25;
  
histogram(new, b)
mean(new)
var(new)

lambda = N*p;
X = 100:200;
Y = poisspdf(X,lambda);
Y = Y*92307

histogram(new, 25)
hold on
scatter(X,Y)
hold off



C = 20000
N = 600
p = 0.1

new = simulate_mutations(C, N, p);
b = 21;
  
histogram(new, b)
mean(new)
var(new)

lambda = N*p;
X = 30:90;
Y = poisspdf(X,lambda);
Y = Y*92307

histogram(new, 21)
hold on
scatter(X,Y)
hold off




C = 20000
N = 600
p = 0.02

new = simulate_mutations(C, N, p);
b = 13;
  
histogram(new, b)
mean(new)
var(new)

lambda = N*p;
X = 0:25;
Y = poisspdf(X,lambda);
Y = Y*40000;

histogram(new, b)
hold on
scatter(X,Y)
hold off
