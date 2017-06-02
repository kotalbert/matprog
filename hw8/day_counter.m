function  dc =  day_counter(yr)
% 1 Jan 1776: Monday
yz = 1776;

% Calculate if 'yr' is leap year
lyn = leap_year_number(yr);

% Check what day is 1st Jan in 'yr'
ydif = yr - yz;
% if yr == 1900 || yr == 2015 || yr == 1898 || yr == 1855 || yr == 1877 || yr == 1937
%     dn = 365*ydif + lyn;
% else
%    
% end
 dn = 365*ydif + lyn - 1;
% 1st Jan 1776 is Monday, 
% modulo to show which day is 1st Jan in a given yaer
mon1st = mod(dn,7);

if mon1st == 0
    dc = 1;
else
    dc = 0;
end

if is_leap_year(yr)
    febdays = 29;
else
    febdays = 28;
end

% jan feb mar apr may jun jul aug sep oct nov dec
ndays = [31 febdays 31 30 31 30 31 31 30 31 30 31];

% Monve to first of the consecutive months

for m = 1:12
    mon1st = mon1st + ndays(m);
    if mod(mon1st, 7) == 0
        dc = dc + 1;
    end;
end

% Count number of Mondays

function flag = is_leap_year(yr)
    if mod(yr, 400) == 0
        flag = 1;
    elseif mod(yr,4)==0 && mod(yr,100)~=0
        flag = 1;
    else
        flag = 0;
    end

function lyn = leap_year_number(yr)
yz = 1776;
lyn = 0;

for y = yz:yr
    if is_leap_year(y)
        lyn = lyn + 1;
    end;
end
        