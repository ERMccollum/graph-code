
 
for layernumber = [1 4 7 10 13 16 20 22 24 25 27 29 30 32 34 35 37 39]
    
    kernelmatrix = net.Layers(layernumber).Weights;
    b = size(net.Layers(layernumber).Weights);
    c = b(:);
    channelnumber = c(5);
    
    for g = 1:channelnumber
        x(g) = g;
        u = kernelmatrix(:,:,:,:,g);
        t = sum(u(:));
        y(g) = t;
    end
    
    figure(layernumber)
    plot(x,y)
    title(strcat('Weight Sum Layer ', " ", num2str(layernumber)));
  xlim([1,channelnumber])
  ylim([-10,10])
    
   saveas(figure(layernumber),fullfile(pwd,['SumGraphLayer' num2str(layernumber)]));
end