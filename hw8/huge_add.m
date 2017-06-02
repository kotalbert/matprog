function s = huge_add(n1, n2)
% check if all characters legal
if islegal(n1) ==0 || islegal(n2) == 0
    s = -1;
    return;
end

buff = 0;


% Check if character is legal
function isleg = islegalchar(charin)
isleg = 0;
leg = '1234567890';
for i=1:10
    if charin == leg(i)
        isleg = 1;
        return;
    end
end

% Check if vector of legal characters
function isleg = islegal(str_in)
for i = 1:length(str_in)
    if islegalchar(str_in(i)) ~= 1
        isleg = 0;
        return;
    end;
end
isleg = 1;
    