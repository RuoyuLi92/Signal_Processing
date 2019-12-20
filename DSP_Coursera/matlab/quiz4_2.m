N = 100;

L = 1;

n = 0:1:N-1;

phi = pi/4;

x_n = cos(2*pi/N * L * n + phi);
x_c = ones(N,1);

X = fft(x_n');
X_c = fft(x_c);

plot(imag(X));
% hold on
% plot(imag(X));


figure
plot(real(X_c));