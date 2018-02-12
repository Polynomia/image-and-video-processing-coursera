function [ img ] = reduce_img_res( image, n )
%REDUCE_IMG_RES Reduction of image's resolution by assigning nxn blocks
%               their average values
%
% Input:
%   image - a matrix of pixels
%   n     - block size
%
% Return:
%   img - a matrix with reduced resolution image's pixels


% For every 3×3 block of the image (without overlapping), replace all 
% corresponding 9 pixels by their average. This operation simulates reducing
% the image spatial resolution. Repeat this for 5×5 blocks and 7×7 blocks. 
% If you are using Matlab, investigate simple command lines to do this
% important operation.


% 'n' must be a positive integer
if ( n<=0 | floor(n)~=n )
    error('Invalid n');
end


% image's size
[rows, cols] = size(image);

% Create a matreix with the same dimensions:
img = zeros(rows, cols);


% Number of complete nxn squares per rows (Nr) and columns (Nc)
% Number of remaining pixels per rows (Rr) and columns (Rc)
Nr = floor(rows / n);
Rr = mod(rows, n);
Nc = floor(cols / n);
Rc = mod(cols, n);



% First complete nxn squares are processed:

n2 = n * n;
for i = 1 : Nr
    for j = 1 : Nc
        avg = sum(sum( image((1+(i-1)*n) : (i*n), (1+(j-1)*n) : (j*n) ) )) / n2;

        for r = (1+(i-1)*n) : (i*n)
            for c = (1+(j-1)*n) : (j*n)
                img(r, c) = avg;
            end
        end
    end
end

% Dimension of incomplete blocks: n rows x Rc columns
n2 = n * Rc;
for i = 1 : Nr
    avg = sum(sum( image((1+(i-1)*n) : (i*n), (1+Nc*n) : cols ) )) / n2;
    
    for r = (1+(i-1)*n) : (i*n)
        for c = (1+Nc*n) : cols
            img(r, c) = avg;
        end 
    end
end

% Dimension of incomplete blocks: Rr rows x n colums
n2 = n * Rr;
for j = 1 : Nc
    avg = sum(sum( image((1+Nr*n) : rows, (1+(j-1)*n) : (j*n)) )) / n2;
    
    for r = (1+Nr*n) : rows
        for c = (1+(j-1)*n) : (j*n)
            img(r, c) = avg;
        end
    end
end



n2 = Rr * Rc;
avg = sum(sum( image( (1+Nr*n) : rows, (1+Nc*n) : cols ) )) / n2;

for r = (1+Nr*n) : rows
    for c = (1+Nc*n) : cols
        img(r, c) = avg;
    end 
end

% Finally round the pixels to integer values:
img = uint8( floor( img + 0.5 ) );

end