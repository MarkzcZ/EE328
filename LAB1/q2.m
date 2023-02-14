 fs=8000;
%% sampling rate for discrete signal
fcut=400;%wn=0.3->1200 wn=0.4->1600


[b, a]=butter(2, fcut/(fs/2));
[h,f]=freqz(b, a, 512, fs);
%% Digital filter frequency response
subplot(311)
plot(f, mag2db(abs(h)));
title('order 2')
axis([0 5000 -50 5]);
xlabel('Frequency (Hz)', 'fontsize', 18)
ylabel('Magnitude', 'fontsize', 18)
grid on

[b, a]=butter(4, fcut/(fs/2));
[h,f]=freqz(b, a, 512, fs);
%% Digital filter frequency response
subplot(312)
plot(f, mag2db(abs(h)));
title('order 4')
axis([0 5000 -50 5]);
xlabel('Frequency (Hz)', 'fontsize', 18)
ylabel('Magnitude', 'fontsize', 18)
grid on

[b, a]=butter(6, fcut/(fs/2));
[h,f]=freqz(b, a, 512, fs);
%% Digital filter frequency response
subplot(313)
plot(f, mag2db(abs(h)));
title('order 6')
axis([0 5000 -50 5]);
xlabel('Frequency (Hz)', 'fontsize', 18)
ylabel('Magnitude', 'fontsize', 18)
grid on