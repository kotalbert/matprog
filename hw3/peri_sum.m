function ps = peri_sum(A)
p1 = A(1,:);
p2 = A(end,:);
p3 = A(:,1);
p4 = A(:,end);

n = zeros(1,4);
n(1) = A(1,1);
n(2) = A(1,end);
n(3) = A(end,1);
n(4) = A(end,end);

ps = sum(p1)+sum(p2)+sum(p3)+sum(p4) - sum(n);

