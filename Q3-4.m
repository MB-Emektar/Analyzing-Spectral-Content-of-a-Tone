x1_data = getaudiodata(x1);
x4_data = getaudiodata(x4);

x5_data = downsample(x1_data,16);

%w_pass = 0.064 ; w_stop = 0.08
x6_data = downsample(conv(x1_data,h),16);

x1_dft = fftshift(fft(x1_data));
x4_dft = fftshift(fft(x4_data));
x5_dft = fftshift(fft(x5_data));
x6_dft = fftshift(fft(x6_data));

x1_mag = abs(x1_dft)/length(abs(x1_dft));   %normalized
x4_mag = abs(x4_dft)/length(abs(x4_dft));   %normalized
x5_mag = abs(x5_dft)/length(abs(x5_dft));   %normalized
x6_mag = abs(x6_dft)/length(abs(x6_dft));   %normalized

f4 = linspace(-2756/2,2756/2, length(x4_mag));
f5 = linspace(-2756/2,2756/2, length(x5_mag));
f6 = linspace(-2756/2,2756/2, length(x6_mag));


plot(f4',x4_mag); grid minor; grid on;
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_4[n] vs Frequency (Hz)')
saveas(gcf,'3-x4.png')
figure; plot(f5',x5_mag); grid minor; grid on;
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_5[n] vs Frequency (Hz)')
saveas(gcf,'3-x5.png')
figure; plot(f6',x6_mag); grid minor; grid on; 
xlabel('Frequency (Hz)'); ylabel('Magnitude'); title('Graph of x_6[n] vs Frequency (Hz)')
saveas(gcf,'3-x6.png')

sound(x4_data,2756);
pause(3);
sound(x5_data,2756);
pause(3);
sound(x6_data,2756);