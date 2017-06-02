function cent = centuries(yr)

if fix(yr)~=yr
    cent='';
    return;
end
if  ~isscalar(yr)
    cent='';
    return;
end
if yr > 3000 || yr <=0
    cent = '';
    return;
end

rn = {'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', ...
      'XI', 'XII', 'XIII', 'XIV', 'XV', 'XVI', 'XVII', 'XVIII', ...
      'XIX', 'XX', 'XXI', 'XXII', 'XXIII', 'XXIV', 'XXV', 'XXVI', ...
      'XXVII', 'XXVIII', 'XXIX', 'XXX'};

c = ceil(yr/100);
cent = rn{c};