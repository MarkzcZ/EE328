function PlotAudioFile(audiowav,fstart,M,N)

[y,Fs] = audioread(audiowav);
N = N + 400;
z = [y;zeros(size(400))];
f = fstart;

for a = 1:N/(4*M)%a为页数
    figure(a)
    subplot(411)
    plot(z(f:1/Fs:f+M-1))
    f = f+M;
    subplot(412)
    plot(z(f:1/Fs:f+M-1))
    f = f+M;
    subplot(413)
    plot(z(f:1/Fs:f+M-1))
    f = f+M;
    subplot(414)
    plot(z(f:1/Fs:f+M-1))
    f = f+M;
    
end