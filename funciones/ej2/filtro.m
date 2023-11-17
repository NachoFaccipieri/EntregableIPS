function y =filtro(n,x)
    y = zeros(size(n));  % Inicializar la se?al de salida

    for i = 1:length(n)
        y(i) = x(i);
        
        if i > 8820
            y(i) = y(i) + 0.45 * x(i - 8820);
        end
    end
end