function [M] = simulate_combined_culture(C,N,p,G,i)
    for iter = 1:i
        m = 0;
        for g = 1:G
	        m = 2*m + poissrnd((N*C*2^(g-1)-m)*p);
        end
        M(iter) = m/(4.02e+14)
    end
end

M = simulate_combined_culture(C,N,p,G, 10000);
mean(M);

X = 2000:3000;
Y = binopdf(X, 2.013e+10 , 1.2520e-07);
scatter(X,Y);

new_mean = 1.2520e-07 * 2.013e+10
new_var = 1.2520e-07 * 2.013e+10* (1-1.2520e-07);
 
  
