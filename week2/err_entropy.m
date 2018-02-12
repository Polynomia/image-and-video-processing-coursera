function [ H ] = err_entropy( eh )
%ERR_ENTROPY Calculates the entropy of prediction errors.
%
% Input:
%   eh - a two row matrix, the 1st row is ignored, the 2nd row contains
%        the number of occurrences (must be a positive integer) for each 
%        error value
%
% Return:
%   H - entropy of prediction errors


s = sum(eh(2, :));

p = double(eh(2, :)) / double(s);

l = p;
l(l==0) = 1;


H = -sum(p .* log2(l));

end