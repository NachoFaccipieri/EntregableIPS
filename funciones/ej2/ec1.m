function y =ec1(n,x)
    y = zeros(size(n));  % Inicializar la señal de salida

    for i = 1:length(n)
        y(i) = x(i);
        
        if i > 8820
            y(i) = y(i) - 0.45 * x(i - 8820);
        end

        if i > 17640
            y(i) = y(i) + 0.2025 * x(i - 17640);
        end
    end
end