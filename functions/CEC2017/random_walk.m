function random_walk(D)
n = 70000;
x = 0;
y = 0;

pix = zeros(n, D);
neighbour = [0 1;1 1;1 0;1 -1;0 -1;-1 -1;-1 0;-1 1]; % This can be seen as a clockwise clock.

for i = 1:n
    r = floor(1+8*rand());     % Randomly choose a direction.
    x = x + neighbour(r,1);    % x direction
    y = y + neighbour(r,2);    % y direction
    
    pix(i,:) = [x y];

end

minx=min(pix(:,1));            % The image coordinates cannot be negative
miny=min(pix(:,2));            % Find the minimum value and increase the overall to positive

pix(:,1)=pix(:,1)-minx+1;      % image coordinates:positive
pix(:,2)=pix(:,2)-miny+1;

maxx=max(pix(:,1));            % find the maximum value 
maxy=max(pix(:,2));

img=zeros(maxx,maxy);          
for i=1:n                   
    img(pix(i,1),pix(i,2))=1;
end
imshow(img)                   % displays the grayscale image
