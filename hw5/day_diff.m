function dd = day_diff(month1, day1, month2, day2)
m15 = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

% checking for error imputs
dates = [day1, day2, month1, month2];
if length(dates) ~= 4, dd=-1; return; end
if sum(dates <= 0) > 0, dd=-1; return; end;
if ~isvectofints(dates), dd=-1; return; end;
if day1 > m15(month1) || day2 > m15(month2), dd = -1; return; end

if month1 == 1
    d1 = day1;
else
    d1 = sum(m15(1:month1-1)) + day1;
end
if month2 == 1
    d2 = day2;
else
    d2 = sum(m15(1:month2-1)) + day2;
end

dd = abs(d2 - d1);

function ivoi = isvectofints(v)
% Helper function to determine if all number in vector are integers.
if sum(v - fix(v)) ~= 0, ivoi = 0; return; end;
ivoi = 1;
