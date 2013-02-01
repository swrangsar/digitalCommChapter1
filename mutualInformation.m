function Ixy = mutualInformation(inputProb, p)


channel = [p 1-p; 1-p p];
px = [1-inputProb inputProb];
py = (px * channel);
pxnew = [px; px]';
pynew = [py; py];
pxy = channel .* pxnew;

Ixy = (pxy .* log2(pxy ./ (pxnew.*pynew)));
Ixy = sum(Ixy(:));

end