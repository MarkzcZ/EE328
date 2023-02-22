[y,Fs] = audioread('mhint_01_01.wav');
player = audioplayer(y,Fs);
% play(player);
% PlotAudioFile('s5.wav',2000,800,22000); %2.32
strips_modified(y,0.1,0.25,Fs)  %2.33