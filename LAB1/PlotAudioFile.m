function PlotAudioFile(audiowav,fstart,M,N)

[y,Fs] = audioread(audiowav);
N = N + 400;
y = [y zeros(400,1)];
f = fstart;

for a = 1:N/(4*M)%a为页数
    figure(a)
    subplot(411)
    plot(y(f:1/Fs:f+M))
    f = f+M;
    subplot(412)
    plot(y(f:1/Fs:f+M))
    f = f+M;
    subplot(413)
    plot(y(f:1/Fs:f+M))
    f = f+M;
    subplot(414)
    plot(y(f:1/Fs:f+M))
    f = f+M;
    
end