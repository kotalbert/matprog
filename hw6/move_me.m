function w = move_me(v,a)
if nargin == 1, a = 0; end
v1 = v(v~=a);
v2 = v(v==a);
w = [v1 v2];
