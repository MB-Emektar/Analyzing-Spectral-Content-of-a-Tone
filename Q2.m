x1_data = getaudiodata(x1);
x2_data = getaudiodata(x2);
x3_data = getaudiodata(x3);
x4_data = getaudiodata(x4);

x1_dft = fftshift(fft(x1_data));
x2_dft = fftshift(fft(x2_data));
x3_dft = fftshift(fft(x3_data));
x4_dft = fftshift(fft(x4_data));

x1_mag = abs(x1_dft)/length(abs(x1_dft));  %normalized
x2_mag = abs(x2_dft)/length(abs(x2_dft));  %normalized
x3_mag = abs(x3_dft)/length(abs(x3_dft));  %normalized
x4_mag = abs(x4_dft)/length(abs(x4_dft));  %normalized

f1 = linspace(-44100/2,44100/2, length(x1_data));
f2 = linspace(-11025/2,11025/2, length(x2_data));
f3 = linspace(-4900/2,4900/2, length(x3_data));
f4 = linspace(-2756/2,2756/2, length(x4_data));


plot(f1',x1_mag); grid minor; grid on;
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_1[n] vs Frequency (Hz) w/44100 Hz Sampling Rate')
saveas(gcf,'x1.png')
figure; plot(f2',x2_mag); grid minor; grid on;
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_2[n] vs Frequency (Hz) w/11025 Hz Sampling Rate')
saveas(gcf,'x2.png')
figure; plot(f3',x3_mag); grid minor; grid on; 
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_3[n] vs Frequency (Hz) w/4900 Hz Sampling Rate')
saveas(gcf,'x3.png')
figure; plot(f4',x4_mag); grid minor; grid on;
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_4[n] vs Frequency (Hz) w/2756 Hz Sampling Rate')
saveas(gcf,'x4.png')

sound(x1_data,44100)
pause(3);
sound(x2_data,11025)
pause(3);
sound(x3_data,4900)
pause(3);
sound(x4_data,2756)