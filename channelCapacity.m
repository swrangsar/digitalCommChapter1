close all; clear all;
cd ~/Desktop/;

n = 1:2:11;
r = 1./n;

Pe = zeros(size(n));
p = 1.0e-2;

for i = 1:length(n)
    N = n(i);
    m = (N-1)/2;
    for k = (m+1):N
        Pe(i) = Pe(i) + (nchoosek(N, k) * (p^k) * ((1-p)^(N-k)));
    end
end

figure(100);clf;
semilogy(r, Pe);
    