clc
clear
close all
%%

% The input speech signal is s. 
% Defining the speech input

% N is the domain over which we will plot the input signal
N = 0:1:1000;

% A random frequency is picked. The frequency picked
% is low in general, cause when we speak we change the amplitude rapidly 
w0 = pi/200;

% Let us define the input signals s = 5sin(w0n)+8cos(w0n/2) %
s = 5.*sin(w0*N)+8.*cos((w0/2)*N);

% As the signal passes through additive noise channel, some noise gets
% added. Let this noise be random.
g = randn(1,1001);
% The randn does normal distribution and as mentioned in report it will
% gaussian noise

% The output signal is n.
n = s + g;

%% fig 1

% Let us plot original signal to observe input signal
figure(1);
plot(N, s, '-r');
title("Original Speech Signal");
hold on;
grid on;

%% fig 2

% Plotting the output noisy signal as it comes out of the additive noise
% channel
figure(2);
plot(N, n);
title("Output Noisy Signal");
hold on;
grid on;

%% Filtering Signal

% Filtering the signal
% Choosing an arbitrary M value
M = 51;
h = (1/M).*ones(1, M);

% Convolution will give average as explained in report although with a
% linear phase delay 
f3 = conv(h,n,'full');

% Plotting original and filtered signal

figure(3);
plot(f3,'-k');
grid on;
hold on;
plot(N,s,'-b');
legend("filtered","original");
title("Original vs Filtered Signal");


% Plotting filtered and noisy signal

figure(4);
plot(f3,'-k');
grid on;
hold on;
plot(N,n,'-y');
legend("filtered","noisy output");
title("Noisy Output vs Filtered Signal");












