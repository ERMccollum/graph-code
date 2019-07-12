
for j = [1 4 7 10 13 16 20 22 24 25 27 29 30 32 34 35 37 39]
    
    kernelmatrix = net.Layers(j).Weights;
    b = size(net.Layers(j).Weights);
    c = b(:);
    d = c(5);
    
    for g = 1:d
        x(g) = g;
        u = kernelmatrix(:,:,:,:,g);
        t = norm(u(:),1);
        y(g) = t;
    end
    
    figure(j)
    plot(x,y)
  xlim([1,d])
  ylim([-10,10])
    
   
end


    
