%normal rate is 16k
clc;clear
[x,Fs] = audioread('mhint_01_01.wav');
subplot(311)
plot(x)
title('Fs = 16000')

t = 1:length(x);
t2 = 1:16000/20000:length(x);
y = interp1(t,x,t2);
subplot(312)
plot(y)
title('Fs = 20000')

t3 = 1:16000/8000:length(x);
y2 = interp1(t,x,t3);
subplot(313)
plot(y2)
title('Fs = 8000')
% 
% p = 5;
% q = 4;
% y = resample(x, p, q);
% subplot(312)
% plot(y)
% title('Fs = 20000')
% 
% p = 2;
% q = 4;
% y = resample(x, p, q);
% subplot(313)
% plot(y)
% title('Fs = 8000')