function num = dial(instr)

charout = '';
for i=1:length(instr)
    n = decode(instr(i));
    if n == -1
        num = uint64(0);
        return;
    else
        charout(i) = n;
    end
end

num = uint64(str2num(charout));

function n = decode(charin)
charmap = '1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ';
numap   = '123456789022233344455566677778889999';

for i=1:length(charmap)
    if charin == charmap(i)
        n = numap(i);
        return;
    end
end

n = -1;

