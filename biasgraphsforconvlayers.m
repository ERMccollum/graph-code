
for layernumber = [1 4 7 10 13 16 20 22 24 25 27 29 30 32 34 35 37 39]
    
biasmatrix = net.Layers(layernumber).Bias;
z = size(net.Layers(layernumber).Bias);
q = z(:);
channelnumber = q(4);

for k = 1:channelnumber
    x(k) = k;
    y(k) = biasmatrix(:,:,1,k);
  
    
   
end
figure (layernumber) 

plot(x, y)
title(strcat( 'Bias Layer ' , " " , num2str(layernumber) ))
ylim([-10,10])
xlim([1,channelnumber])
saveas(figure(layernumber),fullfile(pwd,['BiasGraphLayerNumber' num2str(layernumber)]));
end 
