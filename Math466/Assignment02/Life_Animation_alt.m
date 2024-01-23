function [Animation] = Life_Animation_alt(Simulation,Fig_Number)

h = figure(Fig_Number);
close(h);

N = size(Simulation,3);
n = size(Simulation,1);

X = 0:(n-1); 
Y = 0:(n-1);

for k = 1:N
    
    Z = squeeze(Simulation(:,:,k));
      
    h = surf(X,Y,Z);
    axis([1,n-1,1,n-1,0,1])
    view(0,90)
    set(gca,'YTickLabel',[]);
    set(gca,'XTickLabel',[]);
    set(gca,'ZTickLabel',[]);
    
    set(gca, 'visible', 'off'); 
    colormap('autumn');
 
    Animation(k) = getframe; 
    
end

figure(Fig_Number)
set(gca,'YTickLabel',[]);
set(gca,'XTickLabel',[]);
set(gca,'ZTickLabel',[]);
set(gca, 'visible', 'off'); 

movie(Animation,1,5)

end

