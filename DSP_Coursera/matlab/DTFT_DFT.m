% DTFT of a window function X(exp(jw)) = (1 - exp(-jaw))/(1-exp(-jw)),
% where a is the length of the window.

%% b) visualize the magnitude of X(exp(jw))

n=1:10000;
w=(n.*2*pi/max(n));
X=((1-exp(-1j.*w.*20))./(1-exp(-1j.*w)));
plot(w,abs(X));

%% c) 
% The DTFT is mostly a theoretical analysis tool, but in many cases, we
% will compute the DFT. Recall that in Matlab we use the Fast Fourier
% Transform (FFT), an efficient algorithm to compute the DFT. Generate
% a fnite sequence x1[n] of length N = 30 such that x1[n] = x[n] for n =
% 1.....N. Compute its DFT and plot itsmagnitude. Compare it with the
% plot obtained in (b).
figure
N=30;
x1=[ones(1,20),zeros(1,N-20)];
plot(abs(X1));

%% d)
% The DFT of x[n] for various values of N is represented in Figure 3.4.
% As we increase N, the DFT becomes closer and closer to the DTFT of
% x[n]. We know that the DFT and the DFS are formally identical, and
% as N grows, the DFS converges to the DTFT. We can use Matlab to
% approximate the DTFT of any signal.

N=50;
x2=[ones(1,20),zeros(1,N-20)];
X2=fft(x2);
N=100;
x3=[ones(1,20),zeros(1,N-20)];
X3=fft(x3);
N=1000;
x4=[ones(1,20),zeros(1,N-20)];
X4=fft(x4);

subplot(2,2,1)
plot(abs(X1));

subplot(2,2,2)
plot(abs(X2));

subplot(2,2,3)
plot(abs(X3));

subplot(2,2,4)
plot(abs(X4));
