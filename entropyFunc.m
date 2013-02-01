close all; clear all;
p = linspace(0, 1, 100);
H = (p .* log2(1./p)) + ((1-p) .* log2(1./(1-p)));
plot(p, H);