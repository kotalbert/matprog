function f = fare(dist, age)
% caluclate total fare, including distance traveled and discounts
price = distprice(dist);
disc = discount(age);
f = price * disc;

function c = distprice(dist)
% price for a distance traveled
if dist>1, dist = round(dist);
else, dist = 1; end

if dist <= 10, c = 2 + (dist-1)*0.25;
else, c = 2 + 9*0.25 + (dist - 10)*0.1; end

function disc = discount(age)
% calculate discounting factor, depending on age
if (age <= 18 || age >= 60), disc = 0.8;
else, disc = 1; end
