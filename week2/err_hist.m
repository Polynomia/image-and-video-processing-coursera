
function [ h ] = err_hist( E )
%ERR_HIST Obtains a histogram of prediction errors
%
% Input:
%   E - matrix of prediction errors
%
% Return:
%   h - histogram as a 2 row matrix, the 1st row is filled with actual
%       values, the 2nd row with their number of occurrences

% Number of possible different pixel values in the original image
% TODO this should probably be an input argument
depth = 256;

h = zeros(2, 2*depth-1);
h(1, :) = (-depth+1) : (depth-1);

% Minimum and maximum error:
im_min = min(min(E));
im_max = max(max(E));

for v = im_min : im_max
    h(2, depth + v) = sum(sum(E==v));
end  % for v

