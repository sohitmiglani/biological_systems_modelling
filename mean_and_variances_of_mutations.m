function [means, vars] = mutation_mean_and_var(C,N,p,G)
    for sim = 1:10
        H = [];
        for i = 1:C
            m = 0;
            for g = 1:G
		        m = 2*m + poissrnd((N*2^(g-1)-m)*p);
            end
            H(i) = m;
        end
        means(sim) = mean(H);
        vars(sim) = var(H);
    end
end

[means, vars] = mutation_mean_and_var(C,N,p,G);
mean(means);
mean(vars);

scatter(means,vars);
hold on;
X = 2000:2700;
Y = X*4026531.84;
plot(X,Y);
hold off
