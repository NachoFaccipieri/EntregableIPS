function y = sist2(n,x)
    y = zeros(size(n));
    for i = 1:length(n)
        if i == 1
            % Si es el primer elemento, x[n-1] se asume como 0
            y(i) = 1/2 * x(i);
        else
            y(i) = 1/2 * x(i) - 1/2 * x(i - 1);
        end
    end
end