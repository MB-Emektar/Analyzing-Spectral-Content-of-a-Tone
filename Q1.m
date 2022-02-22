x1 = audiorecorder(44100,16,1);
pause(2);
disp('Play!')
recordblocking(x1, 3);
disp('Stop!')
x1.play;
%%
x2 = audiorecorder(11025,16,1);
pause(2);
disp('Play!')
recordblocking(x2, 3);
disp('Stop!')
x2.play;
%%
x3 = audiorecorder(4900,16,1);
pause(2);
disp('Play!')
recordblocking(x3, 3);
disp('Stop!')
x3.play;
%%
x4 = audiorecorder(2756,16,1);
pause(2);
disp('Play!')
recordblocking(x4, 3);
disp('Stop!')
x4.play;
%%
x1.play; pause(3);
x2.play; pause(3);
x3.play; pause(3);
x4.play; pause(3);
