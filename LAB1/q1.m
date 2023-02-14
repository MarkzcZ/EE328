[y,Fs] = audioread('mhint_01_01.wav');
%strips(y,0.1,22000)
player = audioplayer(y,Fs);
% play(player);
PlotAudioFile('s5.wav',2000,800,22000);