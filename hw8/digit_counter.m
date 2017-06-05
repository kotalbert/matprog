function cn = digit_counter(filename)

fid = fopen(filename, 'rt');

if fid < 0
    cn = -1;
    return;
    %error('cannot open file');
end

cn = 0;

line = fgets(fid);
while ischar(line)
    for i=1:length(line)
       cn = cn + is_digit(line(i));
    end
    line = fgets(fid);
end
fclose(fid);

function isdig = is_digit(charin)
digs = '1234567890';
isdig = 0;

for i = 1:10
    if charin == digs(i)
        isdig = 1;
        return;
    end
end



