function [ dXf, diffStateMatrix ] = spect_differentiator( Xf, diffFilter, diffStateMatrix )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


if diffStateMatrix == []
    
    diffStateMatrix = [repmat(zeros(size(diffFilter,1),1),1,floor(diff_len/2)),repmat(Xf,1,ceil(diff_len/2))];
else    
    dXf = diffStateMatrix * diffFilter;
    diffStateMatrix = [diffStateMatrix(:,2:size(diffStateMatrix)),dXf];
end


end
