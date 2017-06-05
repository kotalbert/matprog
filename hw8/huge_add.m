function a_char_arr = huge_add(char_arr_1, char_arr_2)
% check if all characters legal for arythmetic operation
if ~is_legal_array(char_arr_1) || ~is_legal_array(char_arr_2)
    a_char_arr = -1;
    return;
end

if length(char_arr_1) == length(char_arr_2)
  a_char_arr = add_equal_lengsts(char_arr_1, char_arr_2);
else
  a_char_arr = add_unequal_lenghts(char_arr_1, char_arr_2);
end

end

% Check if character is legal for arythmetic operation
function is_legal = is_legal_char(char_in)
is_legal = 0; % Flag - illegal character
digit_chars = '1234567890';
for i=1:10
    if char_in == digit_chars(i)
        is_legal = 1; % Set flag - legal character and quit
        return;
    end
end

end

% Check if vector of legal characters
function a_bool = is_legal_array(char_array_in)
a_bool = 1; % Flag - character array of legal characters
for i = 1:length(char_array_in)
    if is_legal_char(char_array_in(i)) ~= 1
        a_bool = 0; % Illegal character found - set flag to illegal
        return;
    end
end
 
end

% Add  digits, represented as char
% Return number of tens and reminder of mod 10
function [char_tens, char_reminder] = digits_add(char1_in, char2_in, char3_in)
  
    digit1 = str2num(char1_in);
    digit2 = str2num(char2_in);
    
  % Function overloading
  if nargin == 2
    digit3 = 0;
  else
    digit3 = str2num(char3_in);
  end
  
  digit_sum = digit1 + digit2 + digit3;
  
  reminder = mod(digit_sum, 10);
  tens = idivide(digit_sum, 10);
  
  char_reminder = int2str(reminder);
  char_tens = int2str(tens);
  
end



% Add two character arrays of equal lenghts
function a_char_arr = add_equal_lengsts(char_arr_1, char_arr_2)
  elem_number = length(char_arr_1);
  out = '';
  char_tens = '0';
  char_reminder = '0';
  
  for i=elem_number:-1:1
    [char_tens, char_reminder] = digits_add(char_arr_1(i), char_arr_2(i), char_tens);
    out = strcat(char_reminder, out);
  end
  % Add final tens
  if char_tens ~= '0'
    out = strcat(char_reminder, out);
  end
    
a_char_arr = out;

end
  
% Add two character arrays of unequal lenghts
function a_char_arr = add_unequal_lenghts(char_arr_1, char_arr_2)
  % Identify longer and shorter array
  [a_char_arr_long, a_char_arr_short] = sort_arrays(char_arr_1, char_arr_2);
  % Fill shorter array with leading zeros to match longer array length
  char_arr_long_n_elem = length(a_char_arr_long);
  char_arr_short_n_elem = length(a_char_arr_short);
  for i=1:char_arr_long_n_elem-char_arr_short_n_elem
    a_char_arr_short = strcat('0',a_char_arr_short);
  end
  a_char_arr = add_equal_lengsts(a_char_arr_long, a_char_arr_short);

end

% Order two character arrays, return longer first and shorter second
function [a_char_arr_long, a_char_arr_short] = sort_arrays(char_arr_1, char_arr_2)
  if length(char_arr_1) > length(char_arr_2) 
    a_char_arr_long = char_arr_1;
    a_char_arr_short = char_arr_2;
  else 
    a_char_arr_long = char_arr_2;
    a_char_arr_short = char_arr_1;
  end
end