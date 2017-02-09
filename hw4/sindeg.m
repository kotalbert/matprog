function [out, outavg] = sindeg(deg)
rad = deg2rad(deg);
out = sin(rad);
outavg = mean(out(:));
