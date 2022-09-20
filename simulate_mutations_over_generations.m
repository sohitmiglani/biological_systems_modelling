function [H] = simulate_mutations_over_generations(C,N,p,G)
    for i = 1:C
        m = 0;
        for g = 1:G
		      m = 2*m + poissrnd((N*2^(g-1)-m)*p);
        end
        H(i) = m;
    end
end

C = 20000;
N = 600;
p = 10^(-8);
G = 25;

out = simulate_mutations_over_generations(C,N,p,G)

histogram(out)
out_l = log(out);
histogram(out_l, 20)
 
mean(out)
var(out)
