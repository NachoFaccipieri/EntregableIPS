function X= TFTD(n,x)
    
    ds = 0.001; s = [-2:ds:2]; X = zeros(size(s));
    for k = 1:length(s)
        X(k)=sum(x.*exp(-1i*2*pi*s(k)*n));
    end