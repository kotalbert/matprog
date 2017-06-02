function dys = year2016(m)
if isscalar(m) == 0 
    dys = [];
    return;
elseif m<1 || m>12 || fix(m) ~= m
   dys = [];
   return;
end

ndays = eomday(2016,m);
for i = 1:ndays
    dat = datetime(2016,m,i);
    [dnum, dnam] = weekday(dat);
    mnam = month(dat, 'name');
   dys(i) = struct('month', mnam, 'date', i, 'day', dnam);
end

