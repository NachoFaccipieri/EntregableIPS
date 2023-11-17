function y = sist3(n,x)
    y = zeros(size(n));
    for i = 1:length(n)
        if i == 1
            % Si es el primer elemento, x[n-1] y y[n-1] se asumen como 0
            y(i) = 1/4 * x(i);
        else
            y(i) = 1/4 * x(i) + 1/4 * x(i - 1) + 1/2 * y(i - 1);
        end
    end
end