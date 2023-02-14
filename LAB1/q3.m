%normal rate is 16k
clc;clear
[x,Fs] = audioread('mhint_01_01.wav');
f2 = 20000;
[p,q] = rat(f2, Fs); % f1 to f2
y = resample(x, p, q);