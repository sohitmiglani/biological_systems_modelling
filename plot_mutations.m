## Question 1, Part (d) - Simulating the number of mutations in 20000 Cultures with 600 cells in each culture.

C = 20000
N = 600
p = 0.5

new = simulate_mutations(C, N, p);
b = 25;
  
histogram(new, b)
mean(new)
var(new)

lambda = N*p;
X = 250:350;
Y = poisspdf(X,lambda);
Y = Y*115555

histogram(new, 25)
hold on
scatter(X,Y)
hold off


