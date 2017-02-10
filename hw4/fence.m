function [nseg, npoles] = fence(lng, seg)
nseg = ceil(lng/seg);
npoles = nseg + 1;
