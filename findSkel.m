function [ newSkel ] = findSkel( X,skel,adj )
%FINDSKEL Summary of this function goes here
%   Detailed explanation goes here
    %X ��ǰ���� skel�Ǽܼ���
    %����ǰ���ļ����з���Ҫ��ĵ����Ǽܼ���
    
    for i=1:size(X,1)
        l = find(adj(i,:) == 1);
        if length(l) <= 2
            x = X(l,:);
            skel = [skel;x];
        end
    end
    newSkel = skel;
end

