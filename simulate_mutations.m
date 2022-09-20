function [H] = simulate_mutations(C,N,p)
	for i = 1:C
		m = 0;
		for j = 1:N
    			out = rand(1,1);
			if out < p
				m = m +1;
            		end
		end
		H(i) = m;
	end
end
