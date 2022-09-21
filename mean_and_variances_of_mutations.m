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
Y = X*264756.819;
plot(X,Y);
hold off


## If we remove the top 0.1% of the outliers (Part D), we get better estimates: 

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
        H_sorted = sort(H);
        H_sorted = H_sorted(1:19980);
        means(sim) = mean(H_sorted);
        vars(sim) = var(H_sorted);
    end
end

[means, vars] = mutation_mean_and_var(C,N,p,G);

mean(means);
mean(vars);
