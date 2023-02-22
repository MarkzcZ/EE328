[y,Fs] = audioread('mhint_01_01.wav'); 
% sampling rate for discrete signal
fcut=1000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(511)
plot((conv(abs(h),y)));
title('fc = 1000')

fcut=750;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(512)
plot((conv(abs(h),y)));
title('fc = 750')

fcut=500;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(513)
plot((conv(abs(h),y)));
title('fc = 500')

Hd = filter1;
yy = filter(Hd,y);
% Digital filter frequency response
subplot(514)
plot(yy);
title('fc = 400')

fcut=250;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(515)
plot((conv(abs(h),y)));
title('fc = 250')

figure(2)
fcut=2000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(511)
plot((conv(abs(h),y)));
title('fc = 2000')

fcut=3000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(512)
plot((conv(abs(h),y)));
title('fc = 300')

fcut=4000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(513)
plot((conv(abs(h),y)));
title('fc = 4000')

fcut=5000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(514)
plot((conv(abs(h),y)));
title('fc = 5000')

fcut=6000;
[b, a]=butter(6, fcut/(Fs/2));
[h,f]=freqz(b, a, 512, Fs);
% Digital filter frequency response
subplot(515)
plot((conv(abs(h),y)));
title('fc = 6000')