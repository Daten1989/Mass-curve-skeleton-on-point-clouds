function [k] = findK(lianjie,leaf,index)
    
    k = leaf(1);
    index(index == leaf(1)) = [];
%     while ~isEmpty(leaf)
        while length(index) > 0
            temp = k(length(k));    %�ҳ�������ĵ�
            len = find(lianjie(temp,:) == 1);  %��õ������ĵ�
            if length(len) > 2
                break;
            end
%             if length(len) == 1
%                 k = [k;len];
%                 index(index == len) = [];
%                 break;
%             end
            for i=1:length(len)
                if length(find(index == len(i))) > 0 %����õ㻹û����k
                    k = [k;len(i)]; %�õ����k
                    index(index == len(i)) = [];    %�õ��index��ɾ��
                    break;
                end
            end
        end
%     end
end