function [times, miles] = light_speed(distances)
c=3e5;
mi=1.609;

times = (distances/c)/60;
miles = distances/mi;
