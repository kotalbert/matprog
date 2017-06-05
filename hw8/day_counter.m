function a_int = day_counter(yr)
% Calculate number of Mondays on 1st of each month in year yr

% 1776-01-01 -> Monday
global start_yr; % reference date
global ndays; % number of days in months of year yr

start_yr = 1776;

if is_leap_year(yr)
    febdays = 29;
else
    febdays = 28;
end

% jan feb mar apr may jun jul aug sep oct nov dec
ndays = [31 febdays 31 30 31 30 31 31 30 31 30 31];

a_int = count_mondays(yr);

end

function a_log = is_monday(day_number)
% calulate if day_number (number of days from start date) is Monday
    if mod(day_number, 7) == 0
        a_log = 1;
    else
        a_log = 0;
    end
end

function a_log = is_leap_year(this_yr)
% check if this_yr is a leap year
    if mod(this_yr, 400) == 0
        a_log = 1;
    elseif mod(this_yr,4)==0 && mod(this_yr,100)~=0
        a_log = 1;
    else
        a_log = 0;
    end
end

function a_int = get_number_leap_years(yr)
% Calculate, how many leap years passed between start and yr
global start_yr;
lyn = 0; % leap year number
    for i = start_yr : yr - 1
        if is_leap_year(i)
            lyn = lyn + 1;
        end
    end
a_int = lyn;
end


function a_int = get_yr_first_day(yr)
% calulate what day is the first day of year of yr
global start_yr;
    a_int = (yr - start_yr) * 365 + get_number_leap_years(yr);
end

function a_int = count_mondays(yr)
% count Mondays, on first day of each month in a year yr
global ndays;

yr_first_day = get_yr_first_day(yr);

if is_monday(yr_first_day)
    mon_num = 1;
else
    mon_num = 0;
end
m_first_day = yr_first_day;
for m = 1:11
    m_first_day = m_first_day + ndays(m);
    if is_monday(m_first_day)
        mon_num = mon_num + 1;
    end
end

a_int = mon_num;

end

