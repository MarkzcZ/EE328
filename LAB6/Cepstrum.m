function [ccepstrum,rcepstrum] = Cepstrum(x,nfft)

    %Compute the complex cepstrum
%     ccepstrum = ifft(log(abs(fft(x,nfft))) + 1i*unwrap(angle(fft(x,nfft))));
    ccepstrum = cceps(x);
    %Compute the real cepstrum
%     rcepstrum = real(ifft(log(abs(fft(x,nfft)))));
%     ccepstrum = fftshift(ccepstrum);
%     rcepstrum = fftshift(rcepstrum);
    [rcepstrum,phase]=rceps(x);
    % Plot the input signal and the two outputs on the same page
    figure;
    subplot(3,1,1);
    plot(x);
    title('Input Signal');
    subplot(3,1,2);
    plot(abs(ccepstrum));
    title('Complex Cepstrum');
    subplot(3,1,3);
    plot(rcepstrum);
    title('Real Cepstrum');
end