
for j = [1 4 7 10 13 16 20 22 24 25 27 29 30 32 34 35 37 39]
    
biasmatrix = net.Layers(j).Bias;
z = size(net.Layers(j).Bias);
q = z(:);
h = q(4);

for k = 1:h
    x(k) = k;
    y(k) = biasmatrix(:,:,1,k);
  
    
   
end
figure (j) 
plot(x, y)
ylim([-10,10])

end 
